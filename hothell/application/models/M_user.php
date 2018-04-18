
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model {

    public function isUsernameTaken($user){
        $this->db->select('username');
		$this->db->where('username', $user);
		$result = $this->db->get('user')->result();
		return (sizeof($result) > 0) ? 'failed' : 'success';
    }

    public function login($user, $pass)
	{
		$this->db->select('id_user, nama_user, username, password, tgl_daftar, user_type');
		$this->db->where('username', $user);
		$result = $this->db->get('user')->row_array();

		if (($result['username'] == $user) and ($result['status'] == 0) and ($result['password'] == md5($pass.$result['tgl_daftar']))) {
			return $result;
		} else return null;
	}

    public function loginAdmin($user, $pass)
    {
      $this->db->select('id_admin, username, password');
      $this->db->where('username', $user);
      $result = $this->db->get('admin')->row_array();

      if (($result['username'] == $user) and ($result['password'] == md5($pass))) {
        return $result;
      } else return null;
    }
}


/* End of file M_user.php */
/* Location: ./application/models/M_user.php */
