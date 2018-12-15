<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Success extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
	{
		parent::__construct();
		$this->load->model(array('Success_model'=>'success'));
	}
				
	public function index()
	{
		echo "HEllo";						
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





}
