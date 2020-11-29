<?php   
    class Veille extends CI_Controller{
        public function index()
        {       

                $data['veille'] = $this->model_info->get_veille();
                
                $this->load->view('templates/header');
                $this->load->view('veille/index',$data);
                $this->load->view('templates/footer');
        }
    }