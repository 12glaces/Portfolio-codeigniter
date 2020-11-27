<?php   
    class Experiences extends CI_Controller{
        public function index()
        {       
                $data['title'] = "À propos";
                $data['apropos'] = $this->model_info->get_apropos();
                $data['experiences'] = $this->model_info->get_experiences();
                
                $this->load->view('templates/header');
                $this->load->view('apropos/index',$data);
                $this->load->view('templates/footer');
        }
    }