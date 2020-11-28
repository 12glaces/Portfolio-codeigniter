<?php   
    class Veille extends CI_Controller{
        public function index()
        {       

                $data['Veille'] = $this->model_info->get_Veille();
                
                $this->load->view('templates/header');
                $this->load->view('Veille/index',$data);
                $this->load->view('templates/footer');
        }
    }