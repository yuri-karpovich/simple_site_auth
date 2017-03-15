# Basic Authentication for HTML site

 If you want to publish some HTML pages to the Internet but you don't want to make it public then you can use this image.
 
 Simple do:
 
    docker run -d --name='private_server' -p 8080:80 -e USER='foo' -e PASSWORD='bar' -v /path/to/local/html:/var/www/html/ spoonest/simple_site_auth
    
 where:
    `foo` - username
    `bar` - password 
    `/path/to/local/html` - folder on your local machine with your index.html
    
That's it! You can access your site by link http://localhost:8080/ (http://<YOUR_MACHINE_IP>:8080/) 

> `USER` and `PASSWORD` parameters are optional