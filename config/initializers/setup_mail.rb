ActionMailer::Base.smtp_settings = {
:address              => "smtp.gmail.com",  
:port                 => 587,  
:domain               => "prueba@gmail.com",  
:user_name            => "prueba",  
:password             => "Pru3ba",  
:authentication       => "plain",  
:enable_starttls_auto => true 
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000" 