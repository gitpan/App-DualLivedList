BEGIN { require 5.005; }

use inc::Module::Install;

WriteMakefile (
    'NAME'              => 'App-DualLivedList',
    'ABSTRACT'          => 'Determines if a module is Dual-Lived',
    'VERSION'           => '0.00_04',
    'PREREQ_PM'         => { 'CPAN',
                             'Module::CoreList',
                             'Term::ANSIColor::Print' },
    
    'EXE_FILES'         => [qw(bin/dual-lived)],
                                                        
    'dist'              => {'COMPRESS' => 'gzip -9f', 
                            'SUFFIX'   => '.gz', },
    (
        $] >= 5.005     
            ? ( AUTHOR  => 'Kevin W. Henwood <Khen1950fx@aol.com>') 
            : ()
     ),
     (
            ExtUtils::MakeMaker->VERSION() gt '5.50' 
                ?  ('LICENSE'  => 'perl')         
                : ()
        ),

);  