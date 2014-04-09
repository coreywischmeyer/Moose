package Point;
use Moose;
use Math::Complex;

has 'x' => (isa => 'Int', is => 'rw', required => 1);
has 'y' => (isa => 'Int', is => 'rw', required => 1);

sub clear{
  my $self = shift;
  $self->x(0);
  $self->y(0);
}

sub to_string{
  my $self = shift;
  print "x: " . $self->x . "\n";
  print "y: " . $self->y . "\n";
}

sub get_distance{
    my $self = shift;
    my $point = shift;
    return sqrt(($self->x - $point->x) ** 2 + ($self->y - $point->y) **2);
}

1;
