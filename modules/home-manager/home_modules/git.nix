{ pkgs, ...}: {
  
  programs.git = {
    
    enable = true;
    settings = {
      user = {
        name = "name"; #TODO : put name name here
        email = "mail"; #TODO : Put email here
      };
    };
  };
}
