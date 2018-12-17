<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Select extends CI_Controller {

	public function index(){

		$data['title']	=	"Select service to request";
		$data['heading']=	"Select service";
		$data['image_preview']	=	$this->session->userdata('incident_image');
		$data['services']		=	$this->lib->get_multi_where('services',array('service_status'=>1));
		

		$this->load->view('front/includes/header',$data);
		$this->load->view('front/select',$data);
		$this->load->view('front/includes/footer',$data);
	}

	public function save(){
		$data=	$this->input->post();

		$incident_id 	=	$this->session->userdata('incident_id');
		if(!$incident_id){
			$this->lib->redirect_msg('','/','info');
		}

		$incident_img 		=	$this->session->userdata('incident_image');

		$check_incident 	=	$this->lib->get_row_array('incidents_service',array('incident_id'=>$incident_id,'service_id'=>$data['selected_service']));
		if($check_incident){
			$this->lib->redirect_msg('Your incident already reported, you may be notified once help initiate for arriving','info','success');
			exit();
		}

		$incident_service 	=	array(
			'incident_id'	=>	$incident_id,
			'service_id'	=>	$data['selected_service'],
			'is_at'			=>	time()
		);

		$save_incident_image	=	$this->db->insert('incident_images',array('ii_incident_id'=>$incident_id,'ii_image'=>$incident_img));

		$this->db->insert('incidents_service',$incident_service);
		$this->lib->redirect_msg('Your request has been sent for the response and appropriate help is on the way','success','success');
		exit();
	}
}
