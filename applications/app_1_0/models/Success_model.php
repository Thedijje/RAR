<?php 
  class Success_model extends CI_Model{
    public function near_services($lat,$long){
      $query  = $this->db->select(
        'SELECT 
        id, 
        (
           3959 *
           acos(cos(radians(37)) * 
           cos(radians($lat)) * 
           cos(radians($long) - 
           radians(-122)) + 
           sin(radians(37)) * 
           sin(radians($lat)))
        ) AS distance 
        FROM response_team 
        HAVING distance < 25 
        ORDER BY distance LIMIT 0, 20;',FALSE
      );
      var_dump($query);
    }
  }
?>