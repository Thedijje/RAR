<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index(){

		$data['title']	=	"Click picture";
		$data['heading']=	"Click picture and proceed";

		$this->load->view('front/includes/header',$data);
		$this->load->view('front/home',$data);
		$this->load->view('front/includes/footer',$data);
	}

	public function save(){
		
		
		
	}
}
