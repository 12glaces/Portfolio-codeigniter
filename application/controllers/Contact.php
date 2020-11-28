<?php   
    class Contact extends CI_Controller{
        public function index()
        {       

                $data['Contact'] = $this->model_info->get_Contact();
                
                $this->load->view('templates/header');
                $this->load->view('Contact/index',$data);
                $this->load->view('templates/footer');
        }
    }