<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_penduduk extends CI_Model {

    function __construct(){
        // Call the Model constructor
        parent::__construct();
		$this->load->library('subquery');
    }
    
	function getDataPenduduk(){
        $this->db->select('ref_status_penduduk.deskripsi as jenis,count(tbl_penduduk.id_status_penduduk) as jumlah');
		
		/* $sub = $this->subquery->start_subquery('select');
		$sub->select ('count(*)')->from('tbl_penduduk');
		$sub->where('id_jen_kel','1');
		$sub->where('tbl_penduduk.id_pekerjaan = ref_pekerjaan.id_pekerjaan');
		$this->subquery->end_subquery('laki');
		
		$sub = $this->subquery->start_subquery('select');
		$sub->select ('count(*)')->from('tbl_penduduk');
		$sub->where('id_jen_kel','2');
		$sub->where('tbl_penduduk.id_pekerjaan = ref_pekerjaan.id_pekerjaan');
		$this->subquery->end_subquery('perempuan'); */
		
		$this->db->from('tbl_penduduk');
		$this->db->join('ref_status_penduduk','ref_status_penduduk.id_status_penduduk = tbl_penduduk.id_status_penduduk','left');
		$this->db->group_by("ref_status_penduduk.deskripsi");
		$query = $this->db->get();
		return $query->result();
    }
	
	function getDataPendudukTable(){
        $this->db->select('*,ref_jen_kel.deskripsi as "jenkel"');
		$this->db->where('nama !=','');

		$this->db->from('tbl_penduduk');
		$this->db->join('ref_dusun','ref_dusun.id_dusun = tbl_penduduk.id_dusun','right');
		$this->db->join('ref_rt','ref_rt.id_rt = tbl_penduduk.id_rt','right');
		$this->db->join('ref_rw','ref_rw.id_rw = tbl_penduduk.id_rw','right');
		$this->db->join('ref_jen_kel','ref_jen_kel.id_jen_kel = tbl_penduduk.id_jen_kel','right');
		// $this->db->group_by("ref_pekerjaan.deskripsi");
		$query = $this->db->get();
		return $query->result();
    }
		
	function getJumlahPenduduk(){
		$this->db->select('id_penduduk,nama');
		$this->db->from('tbl_penduduk');
		$query = $this->db->get();		
		return $query->num_rows();		
	}
	function getPekerjaanPenduduk()
	{
		$this->db->select('ref_pekerjaan.deskripsi as jenis,count(tbl_penduduk.id_pekerjaan) as jumlah');
		$this->db->from('tbl_penduduk');
		$this->db->join('ref_pekerjaan','ref_pekerjaan.id_pekerjaan = tbl_penduduk.id_pekerjaan','right');
		$this->db->group_by("ref_pekerjaan.deskripsi");
		$query = $this->db->get();
		
		$counter=0;
		foreach ($query->result() as $row)
		{
		   $array[$counter] = $row->jenis;
		   $counter++;		   		  
		} 
		foreach ($query->result() as $row)
		{
			$array[$counter] = $row->jumlah;
		    $counter++;
		}
		return $array;
	}
	
	function highchartJson($json)
	{
		$deskripsi = '"jenis":';
		$jumlah = '"jumlah":';	
		$petikdua = '"'	;	
		$json = str_replace($deskripsi, "", strval($json));		
		$json = str_replace($jumlah, "", strval($json));				
		$json = str_replace("{", "[", strval($json));				
		$json = str_replace("}", "]", strval($json));					
		$json = str_replace("[[", "[", strval($json));				
		$json = str_replace("]]", "]", strval($json));					
		$json = str_replace($petikdua, "'", strval($json));					
		$json = str_replace(",'", ",", strval($json));						
		$json = str_replace("']", "]", strval($json));
		
		return $json;
	}

	function filter($search, $limit, $start, $order_field, $order_ascdesc){
		$this->db->select('nama, ref_dusun.nama_dusun as "nama_dusun",id_jen_kel');	
		$this->db->join('ref_dusun','ref_dusun.id_dusun=tbl_keluarga.id_dusun'); 
		$this->db->like('nama', $search); // Untuk menambahkan query where LIKE
		$this->db->order_by($order_field, $order_ascdesc); // Untuk menambahkan query ORDER BY
		$this->db->limit($limit, $start); // Untuk menambahkan query LIMIT
		return $this->db->get('tbl_penduduk')->result_array(); // Eksekusi query sql sesuai kondisi diatas
	}

	function count_all(){
		return $this->db->count_all('tbl_penduduk'); // Untuk menghitung semua data siswa
	}

	function count_filter($search){
		$this->db->like('nama', $search); // Untuk menambahkan query where LIKE
		return $this->db->get('tbl_penduduk')->num_rows(); // Untuk menghitung jumlah data sesuai dengan filter pada textbox pencarian
	}
}