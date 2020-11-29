<?php   
    class Contact extends CI_Controller{
    
    // Just some weak as contstructer
        public function __construct()
        {
            /*call CodeIgniter's default Constructor*/
            parent::__construct();
            
            /*load database libray manually*/
            $this->load->database();
            
            /*load Model*/
            $this->load->model('model_info');
        }

    // Send to contact page
        public function index()
        {       
            $data['title'] = "Contact";
            $data['contact'] = $this->model_info->get_contact();
            
            // Send data to view
            $this->load->view('templates/header');
            $this->load->view('contact/index',$data);
            $this->load->view('templates/footer');
        }

    // Submit to database
        public function savedata()
        {
            /*load registration view form*/
            $this->load->view('insert');
        
            /*Check submit button */
            if($this->input->post('save'))
            {
                $data['prenom']=$this->input->post('prenom');
                $data['nom']=$this->input->post('nom');
                $data['email']=$this->input->post('email');

                $this->model_info->set_contact($data);
            
            }
        }

    }