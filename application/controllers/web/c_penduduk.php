<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C_penduduk extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('statistik/m_penduduk');
        $this->load->model('m_logo');
    }  

   function index()
    {	
		////////////////////////////////////////////////////////
		$penduduk[] = $this->m_penduduk->getDataPenduduk();	
		// echo $this->db->last_query();
		$json = json_encode($penduduk);	
		$json =	$this->m_penduduk->highchartJson($json);
		$data['json'] = $json;
		////////////////////////////////////////////////////////
		
		$data['result'] = $this->m_penduduk->getDataPendudukTable();		
		
		// echo $this->db->last_query();
		$data['jumlah'] = $this->m_penduduk->getJumlahPenduduk(); 
		
		$data['konten_logo'] = $this->m_logo->getLogo();
		$data['logo'] = $this->load->view('v_logo', $data, TRUE);		
		$data['menu'] = $this->load->view('v_navbar', $data, TRUE);			
		$data['footer'] = $this->load->view('v_footer', $data, TRUE);	
		$data['statistik'] = $this->load->view('web/content/java_statistik/penduduk', $data, TRUE);
		$temp['content'] = $this->load->view('web/content/penduduk',$data,TRUE);
		
		$this->load->view('templatePenduduk',$temp);
		
    }

	public function view(){
		$search = $_POST['search']['value']; // Ambil data yang di ketik user pada textbox pencarian
		$limit = $_POST['length']; // Ambil data limit per page
		$start = $_POST['start']; // Ambil data start
		$order_index = $_POST['order'][0]['column']; // Untuk mengambil index yg menjadi acuan untuk sorting
		$order_field = $_POST['columns'][$order_index]['data']; // Untuk mengambil nama field yg menjadi acuan untuk sorting
		$order_ascdesc = $_POST['order'][0]['dir']; // Untuk menentukan order by "ASC" atau "DESC"
		$sql_total = $this->m_penduduk->count_all(); // Panggil fungsi count_all pada SiswaModel
		$sql_data = $this->m_penduduk->filter($search, $limit, $start, $order_field, $order_ascdesc); // Panggil fungsi filter pada SiswaModel
		$sql_filter = $this->m_penduduk->count_filter($search); // Panggil fungsi count_filter pada SiswaModel
		$callback = array(
			'draw'=>$_POST['draw'], // Ini dari datatablenya
			'recordsTotal'=>$sql_total,
			'recordsFiltered'=>$sql_filter,
			'data'=>$sql_data
		);
		header('Content-Type: application/json');
		echo json_encode($callback); // Convert array $callback ke json
	  }
}