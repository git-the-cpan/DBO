use 5.008;
use ExtUtils::MakeMaker;
use File::Basename;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'DBO',
    'VERSION_FROM'	=> 'DBO/Version.pm', # finds $VERSION
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'DBO.pm', # retrieve abstract from module
       AUTHOR     => 'A. U. Thor <jmillaway@ghrsystems.com>') : ()),

    'PREREQ_PM'		=> {map{$_=>0} qw(
        base
        Carp
        Carp::Assert
        Class::MethodMaker
        DBI
        Tie::Array
        Tie::IxHash)},
    'EXE_FILES' => [qw(dbo-gen)],

    'PM' => +{ map {$_ => "\$(INST_LIBDIR)/$_" }
        # Update with:  r!find DBO/ DBO.pm -name '*.pm'
        qw(

          DBO/Conf.pm
          DBO/Query.pm
          DBO/Base.pm
          DBO/Meta/TableInfo.pm
          DBO/Meta/ColumnInfo.pm
          DBO/Meta/Key.pm
          DBO/Meta/HasMany.pm
          DBO/Meta/HasA.pm
          DBO/Meta/HasQuery.pm
          DBO/Meta/OneToMany.pm
          DBO/Query/LeftJoin.pm
          DBO/Query/Expr.pm
          DBO/Query/Join.pm
          DBO/Query/Update.pm
          DBO/Query/Limit.pm
          DBO/Query/OrderBy.pm
          DBO/Query/RightJoin.pm
          DBO/Query/Text.pm
          DBO/Query/Insert.pm
          DBO/Query/GroupBy.pm
          DBO/Query/Delete.pm
          DBO/Base/Private.pm
          DBO/Base/Defs.pm
          DBO/Value/Key.pm
          DBO/Value/Column.pm
          DBO/Test/Util.pm
          DBO/Test/Objects.pm
          DBO/Generator.pm
          DBO/GluedQuery.pm
          DBO/Util.pm
          DBO/DBH/Owner.pm
          DBO/GluedUpdate.pm
          DBO/Value.pm
          DBO/Version.pm
          DBO/Tie/PrimaryKeyList.pm
          DBO.pm

        )},
);

