
use ExtUtils::MakeMaker;
use 5.004;
use strict;
use warnings;
my %requires = (
                 'File::Basename'           => '0',
                 'IO::File'                 => '0',
               );


WriteMakefile(
        NAME             => 'Test::Inter',
        VERSION          => '1.02',
        ($] >= 5.004
        ? (ABSTRACT=>'framework for more readable interactive test scripts',
           AUTHOR  =>'Sullivan Beck (sbeck@cpan.org)')
        : ()),
        'dist' => {COMPRESS=>'gzip',SUFFIX=>'gz'},
        PL_FILES  => {},
        PREREQ_PM => \%requires,
);
