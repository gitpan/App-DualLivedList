BEGIN { require 5.005; }

use inc::Module::Install;

WriteMakefile (
    'NAME'              => 'App-DualLivedList',
    'ABSTRACT'          => 'Determines if a module is Dual-Lived',
    'VERSION'           => '0.00_01',
    'PREREQ_PM'         => { 
                           'Module::CoreList' => 0,
                           'Module::Version'  => 0,
                           'Module::InstalledVersion' => 0,
                           },
    
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