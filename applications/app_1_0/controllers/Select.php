<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Select extends CI_Controller {

	public function index(){

		$data['title']	=	"Select service to request";
		$data['heading']=	"Select service";

		$this->load->view('front/includes/header',$data);
		$this->load->view('front/select',$data);
		$this->load->view('front/includes/footer',$data);
	}
}
