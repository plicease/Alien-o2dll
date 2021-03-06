package My::ModuleBuild;

use strict;
use warnings;
use base qw( Module::Build );

sub new
{
  my $class = shift;
  my %args = @_;
  
  unless($^O eq 'MSWin32' || $^O eq 'cygwin' || $ENV{ALIEN_O2DLL_ANYWAY})
  {
    warn "operating system no supported";
    exit;
  }
  
  $class->SUPER::new(%args);
}

1;
