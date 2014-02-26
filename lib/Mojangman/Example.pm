package Mojangman::Example;
use Mojo::Base 'Mojolicious::Controller';


sub serve_root {
     my $self = shift;   
     # will render the index.html file found in the /public directory
     $self->render_static('/index.html');
}

# This action will render a template
sub welcome {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->render(msg => 'Welcome to the Mojolicious real-time web framework!');
}

1;
