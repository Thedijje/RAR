<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Offline extends CI_Controller {

	
	public function index()
	{
		$data['title']	=	"Your device is offline";
		$data['heading']=	"You are offline";
		
		$data['services']		=	$this->lib->get_multi_where('services',array('service_status'=>1));
		

		$this->load->view('front/includes/header',$data);
		$this->load->view('front/offline',$data);
		$this->load->view('front/includes/footer',$data);
	}
}
