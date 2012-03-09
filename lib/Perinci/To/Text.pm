package Perinci::To::Text;

use 5.010;
use Log::Any '$log';
use Moo;

extends 'Perinci::To::DocBase';

sub gen_summary {
    my ($self) = @_;

    $self->add_result(
        $self->_parse->{name} // "",
        ($self->_parse->{name} && $self->_parse->{summary} ? ' - ' : ''),
        $self->_parse->{summary} // "",
        "\n\n");
}

sub gen_version {
}

# version

# description

1;
