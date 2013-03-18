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


my $class = Module::Build->subclass(
   class => "Module::Build::Custom",
   code  => q { sub ACTION_html { my $self = shift ; $self->SUPER::ACTION_html ( @_ ) if ( $ENV{ MAKE_HTML } ) ; } }
);

my $build = $class->new(
        license            => 'perl',
        dist_version       => '1.04',
        dist_author        => 'Sullivan Beck <sbeck@cpan.org>',
        module_name        => 'Test::Inter',
        dist_abstract      => 'framework for more readable interactive test scripts',
        requires           => \%requires,
        build_requires     => \%build_mods,
        sign               => 1,
        script_files => [
           'examples/is',
           'examples/ok',
           'examples/use_ok',
           'examples/plan',
           'examples/tests',
        ],
);

$build->create_build_script;
