<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class JenisKamar extends CI_Controller {

	function __construct() {
  		parent::__construct();
      $this->load->model('M_global');
 	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$data['jk'] = $this->M_global->get('hotel_jenis_kamar')->result_array();
		$this->load->view('admin/v_metadata.php');
		$this->load->view('admin/v_header.php');
		$this->load->view('admin/v_list_jenis_kamar.php', $data);
		$this->load->view('admin/v_footer.php');
	}

	public function input()
	{
		$this->load->view('admin/v_metadata.php');
		$this->load->view('admin/v_header.php');
		$this->load->view('admin/v_input_jenis_kamar.php');
		$this->load->view('admin/v_footer.php');
	}

	public function input_proses()
	{
		$data = array(
			'jenis_kamar' => $this->input->post('jenis_kamar'),
			'detail_kamar' => $this->input->post('detail'),
			'harga_kamar' => $this->input->post('harga'),
			'total_kamar' => $this->input->post('total')
		);

		$this->M_global->create('hotel_jenis_kamar',$data);
		redirect('JenisKamar');
	}

	public function edit($id)
	{
		$where = array('id_hjk' => $id );
		$data['edit'] = $this->M_global->getWhere('hotel_jenis_kamar',$where)->row();
		$this->load->view('admin/v_metadata.php');
		$this->load->view('admin/v_header.php');
		$this->load->view('admin/v_edit_jenis_kamar.php',$data);
		$this->load->view('admin/v_footer.php');
	}

	public function edit_proses()
	{
		$where = array('id_hjk' => $this->input->post('id') );
		$data = array(
			'jenis_kamar' => $this->input->post('jenis_kamar'),
			'detail_kamar' => $this->input->post('detail'),
			'harga_kamar' => $this->input->post('harga'),
			'total_kamar' => $this->input->post('total')
		);

		$this->M_global->update('hotel_jenis_kamar',$where, $data);
		redirect('JenisKamar');
	}

	public function hapus($id)
	{
		$where = array('id_hjk' => $id );
		$this->M_global->delete('hotel_jenis_kamar',$where);
		redirect('JenisKamar');
	}
}
