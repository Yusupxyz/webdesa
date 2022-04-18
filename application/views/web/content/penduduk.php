<div id="container" style="min-width: 400px; height: 550px; margin: 0 auto;">
</div>


<p></p><hr/>    
<h2><span>Data Penduduk</span> dalam Tabel</h2>

<table class="table table-bordered" id="example">
	<thead>
		<tr>
			<th >No</th>
			<th >Nama</th>		
			<th >Alamat</th>		
			<th >Jenis Kelamin</th>
		</tr>
	</thead>
	<tbody>
		<?php
		$rows = $result;
		$count=1;
		foreach ($rows as $u) {
			echo "<tr>";
				echo "<td>".$count++."</td>";
				echo "<td>$u->nama</td>";
				echo "<td>$u->nama_dusun</td>";
				echo "<td>$u->jenkel</td>";
			echo "</tr>";
		}
		?>
	</tbody>
</table>


<br><br>
