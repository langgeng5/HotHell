<!-- top tiles -->
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>Jenis Kamar <small></small></h2>

        </ul>
        <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <br />
        <form id="input_jenis_kamar" data-parsley-validate class="form-horizontal form-label-left" method="POST" action="<?php echo base_url("/jeniskamar/input_proses")?>">

          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="jenis_kamar">Jenis Kamar</label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="jenis_kamar" name="jenis_kamar" required="required" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="detail">Keterangan/Detail Kamar</label>

          <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="detail" required="required" class="form-control" name="detail"></textarea>
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="harga">Harga Kamar</label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="harga" name="harga" required="required" class="form-control col-md-7 col-xs-12">
            </div>
          </div>

          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="total">Total Kamar</label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="total" name="total" required="required" class="form-control col-md-7 col-xs-12">
            </div>
          </div>

          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
              <button class="btn btn-primary" type="reset">Reset</button>
              <button type="submit" class="btn btn-success">Submit</button>
            </div>
          </div>

        </form>
      </div>
    </div>
  </div>
</div>
          <!-- /top tiles -->
