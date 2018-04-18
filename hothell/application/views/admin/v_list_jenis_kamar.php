<!-- top tiles -->
<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h2>Jenis Kamar</h2>
      <div class="clearfix"></div>
    </div>
    <div class="x_content">



      <table class="table table-bordered" id="datatable" >
        <thead>
          <tr>
            <th>No</th>
            <th>Jenis Kamar</th>
            <th>Harga</th>
            <th>Total</th>
            <th>Detail</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $no = 1;
          foreach($jk as $d){ ?>
              <tr>
                <th scope="row"><?php echo $no++ ?></th>
                <td><?php echo $d['jenis_kamar'] ?></td>
                <td><?php echo $d['harga_kamar'] ?></td>
                <td><?php echo $d['total_kamar'] ?></td>
                <td><?php echo $d['detail_kamar'] ?></td>
                <td>
                  <?php echo"<a href='".base_url('/jeniskamar/edit/').$d['id_hjk']."' ><u><small>Edit</small></u></a>"; ?>
                  <?php echo"||"?>
                  <?php echo"<a href='".base_url('/jeniskamar/hapus/').$d['id_hjk']."' ><u><small>Hapus</small></u></a>"; ?>
                </td>
              </tr>
          <?php } ?>

        </tbody>
      </table>
    </div>
  </div>
  <div class="ln_solid"></div>
  <div align="right">
    <a href="<?php echo base_url("/jeniskamar/input")?>"><h5>Tambah Jenis Kamar</h5></a>
  </div>
</div>





          <!-- /top tiles -->
