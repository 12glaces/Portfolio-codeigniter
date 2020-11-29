<?php   
    class Contact extends CI_Controller{
    
    // Just some weak ass contstructerererer
        public function __construct()
        {
            //Call CodeIgniter's default Constructor
            parent::__construct();
            
            //Load database libray manually
            $this->load->database();
            
            //Load Model
            $this->load->model('model_info');
        }

    // Send to contact page
        public function index()
        {       
            $data['title'] = "Contact";
            $data['contact'] = $this->model_info->get_contact();
            // Verify if stupid person has entered things correctly
            $this->form_validation->set_rules('nom','nom','required');
            $this->form_validation->set_rules('prenom','prenom','required');
            $this->form_validation->set_rules('email','email','required');
            $this->form_validation->set_rules('objet','objet','required');
            $this->form_validation->set_rules('message','message','required');
            // Send to DB (dab bum)
            if($this->form_validation->run() === TRUE)
            {
            // Send data to view
               $this->load->view('templates/header');
               $this->load->view('contact/success');
               $this->load->view('contact/index',$data);
               $this->load->view('templates/footer');
               $this->model_info->set_contact();
            }else{
                $this->load->view('templates/header');
                $this->load->view('contact/index',$data);
                $this->load->view('templates/footer');
                
            }
            
        }
    }
    