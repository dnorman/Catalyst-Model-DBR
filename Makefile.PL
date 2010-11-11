use ExtUtils::MakeMaker;
use strict;

my $headurl = '$HeadURL: http://perl-dbr.googlecode.com/svn/extras/catalyst-model-dbr/trunk/Makefile.PL $';
my ($rev) = '$Rev: 346 $' =~ /(\d+)/;
my ($tag) = $headurl =~ /(?:tags|branches)\/?(.*?)\//;
if($tag eq 'trunk'){
      $tag .= '_' . $rev;
}

my $version = $tag || 'unknown';

WriteMakefile(
	      NAME            => 'Catalyst::Model::DBR',
	      VERSION         => $version,
	      PREREQ_PM       => {
				  'DBR'  => 0,
				 },
	     );
