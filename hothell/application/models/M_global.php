<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_global extends CI_Model {

    public function get($table){
        return $this->db->get($table);
    }

    public function getWhere($table,$where){
        $this->db->where($where);
        return $this->db->get($table);
    }

    public function getLike($table,$where){
        $this->db->like($where);
        return $this->db->get($table);
    }

	public function create($table,$data)
	{
		$this->db->insert($table, $data);
		return ($this->db->affected_rows() != 1) ? 'failed' : 'success';
	}

    public function deleteBatch($table,$where,$row){
        $this->db->where_in($row, $where);
        $this->db->delete($table);
    }


	public function update($table,$where, $data)
	{
		$this->db->where($where);
		$this->db->update($table, $data);
		return ($this->db->affected_rows() != 1) ? 'failed' : 'success';
	}


	public function delete($table,$where)
	{
		$this->db->where($where);
		$this->db->delete($table);
		return ($this->db->affected_rows() != 1) ? 'failed' : 'success';
	}

}

/* End of file M_global.php */
/* Location: ./application/models/M_global.php */
