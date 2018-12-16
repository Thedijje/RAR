<?php 
  class Incident_model extends CI_Model{
    
    
    public function create_incident($data){

        $ins['i_longitude'] = $data['long'] ?? '';
        $ins['i_latitude'] = $data['i_latitude'] ?? '';
        $ins['i_timestamp'] = time();
        $ins['i_heading']   = $data['text'] ?? '';
        $ins['i_status']   = $data['i_status'] ?? 3;
  
        $save   = $this->db->insert('incidents',$ins);
        if(!$save){
          return false;
        }
  
        return $this->db->insert_id();
  
  
      }
  
      public function update_incident($incident_id,$image_path){
        if(!$incident_id OR !$image_path){
          return false;
        }
  
        $ins_data['ii_incident_id'] = $incident_id;
        $ins_data['ii_image']       = $image_path;
        $ins_data['ii_status']      = 1;
  
        $this->db->insert('incident_images',$ins_data);
        return true;
      }

}
