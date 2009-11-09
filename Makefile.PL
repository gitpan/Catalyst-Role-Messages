
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-Role-Messages',
  NAME      => 'Catalyst::Role::Messages',
  AUTHOR    => "Devin\ Austin\ \<dhoss\@cpan\.org\>",
  ABSTRACT  => "Easy\ way\ to\ stuff\ \"status\"\ messages\ into\ your\ stash",
  VERSION   => '0.03.1',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Moose::Role" => '""',
    "Catalyst" => '5.8',
    "Test::Simple" => '0.88',
    "Moose" => '""',
  },
  test => {TESTS => 't/*.t'}
);

