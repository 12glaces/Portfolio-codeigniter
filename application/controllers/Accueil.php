<?php   
    class Accueil extends CI_Controller{
        public function index()
        {       
            $data['accueil'] = $this->model_info->get_accueil();
                $data['apropos'] = $this->model_info->get_apropos();
               
                
                $this->load->view('templates/header');
                $this->load->view('accueil/index',$data);
                $this->load->view('templates/footer');
        }
    }