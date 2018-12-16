<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Success extends CI_Controller {

	
	public function __construct()
	{
		parent::__construct();
		$this->load->model(array('Success_model'=>'success'));
	}
				
	public function index(){
		$data['title']	=	'Alert sent successfully';
		$data['heading']=	'';
		
		$this->load->view('front/includes/header',$data);
		$this->load->view('front/success',$data);
		$this->load->view('front/includes/footer',$data);
	}

	/**
	 * This function is accept post data:
	 * 	data image (Image clicked)
	 *  recording (file having recording)
	 *  service (Id of service)
	 *  lat, long (location of device from which request generated)
	 */
	public function send_alert(){
		//$data	=	$this->input->post();

		// get nerest requested services device id

		$near_availables	=	$this->success->near_services('28.458181','77.0633900000001');



	}

	public function go_back()
	{
		unset($_SESSION['incident_id']);
		unset($_SESSION['incident_image']);
		redirect(base_url());
		exit();
	}





}
