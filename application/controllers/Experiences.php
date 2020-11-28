<?php   
    class Experiences extends CI_Controller{
        public function index()
        {       

                $data['experiences'] = $this->model_info->get_experiences();
                
                $this->load->view('templates/header');
                $this->load->view('experiences/index',$data);
                $this->load->view('templates/footer');
        }
    }