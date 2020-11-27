<?php   
    class Pages extends CI_Controller{
        public function index()
        {
                $data['title'] = "À propos";
                $data['accueil'] = $this->model_info->get_accueil();
                $data['apropos'] = $this->model_info->get_apropos();
                
                $this->load->view('templates/header');
                $this->load->view('apropos/index',$data);
                $this->load->view('accueil/index',$data);
                $this->load->view('templates/footer');
        }
    }