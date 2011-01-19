use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
    add_to_cleanup     => [qw/ Catalyst-Model-Filemaker-*
                               Catalyst-Helper-Model-Filemaker-* /],
    build_requires     => {
        'Test::More' => '0',
    },
    create_makefile_pl => 'passthrough',
    create_readme      => 1,
    dist_version_from  => 'lib/Catalyst/Model/Filemaker.pm',
    license            => 'perl',
    module_name        => 'Catalyst::Model::Filemaker',
    requires           => {
        'Carp'            => '0',
        'Catalyst::Model' => '0',
        'Catalyst::Utils' => '0',
        'Net::Filemaker::XML'       => '0'
    },
);

$builder->create_build_script();
