use warnings;
use strict;
use lib 'lib';
use FindBin;
use lib "$FindBin::Bin/lib";

use Path::Class;
use Plack::Builder;
use Carp;


my $app = sub {
    my $env = shift;
    return [
        200,
        [ 'Content-Type' => 'text/plain' ],
        [ "Hello World" ],
    ];
};

builder {
    enable "Plack::Middleware::Static", path => qr{^/static}, root => 'root/template';
    enable "Plack::Middleware::Static", path => qr{^/js}, root => 'root';
    enable "Plack::Middleware::Static", path => qr{^/css}, root => 'root';
    enable "Plack::Middleware::Static", path => qr{^/images}, root => 'root';
    $app;
}
