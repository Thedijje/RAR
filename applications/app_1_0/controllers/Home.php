<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index(){

		$data['title']	=	"Click picture";
		$data['heading']=	"";

		$this->load->view('front/includes/header',$data);
		$this->load->view('front/home',$data);
		$this->load->view('front/includes/footer',$data);
	}

	public function save(){
		
		$files 	=	$_FILES['clicked_pic']['name'];
		if(!isset($files)){
			log_message('error','No file found in file_array');
			$this->lib->redirect_msg('hre Image upload failed, please go back or proceed without image','warning','select');
			exit();
		}
		
		$data['lat']	=	$this->input->post('lat') ?? '';
		$data['long']	=	$this->input->post('long') ?? '';

		$incident_id 	=	$this->incident->create_incident($data);
		if(!$incident_id){
			$this->lib->redirect_msg('Something went wrong in creating incident, please buttons below to call and talk directly','warning','success');

		}

		$this->session->set_userdata('incident_id',$incident_id);

		$directory 	=	'static/uploads/';

		

		$save_image	=	$this->lib->upload_file($directory,'clicked_pic');
		if(!$save_image){
			log_message('error','file upload error');
			$this->lib->redirect_msg('oooImage upload failed, please go back or proceed without image','warning','select');
			exit();
		}

		/*	Save incident image */
		$this->incident->update_incident($incident_id,$image);
		$this->session->set_userdata('incident_image',$save_image);
		redirect(base_url('select'));
		
		
	}
}
