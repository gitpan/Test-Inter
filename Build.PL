use Module::Build;
use strict;
use warnings;

my %requires = (
                 'perl'                     => '5.004',
                 'File::Basename'           => '0',
                 'IO::File'                 => '0',
               );
my %build_mods = (
               );


my $build = Module::Build->new(
        license            => 'perl',
        dist_version       => '1.02',
        dist_author        => 'Sullivan Beck <sbeck@cpan.org>',
        module_name        => 'Test::Inter',
        dist_abstract      => 'framework for more readable interactive test scripts',
        requires           => \%requires,
        build_requires     => \%build_mods,
        sign               => 1,
);

$build->create_build_script;