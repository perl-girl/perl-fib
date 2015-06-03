{
    package FIB;
    use strict;
    use warnings;

    use Exporter qw/import/;
    
    our @EXPORT_OK = qw/fib/;

    our %calced;

    sub fib {
        my $num = shift;

        return 0 if $num < 1;
        return 1 if $num == 1;

        $calced{$num} = fib($num - 2) + fib($num - 1)
            if not defined $calced{$num};

        return $calced{$num}
    }
}

42;
