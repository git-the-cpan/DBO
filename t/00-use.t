# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 30;

BEGIN {
    use_ok('DBO');
    use_ok('DBO::Query');
    use_ok('DBO::Base');
    use_ok('DBO::Meta::ColumnInfo');
    use_ok('DBO::Meta::Key');
    use_ok('DBO::Meta::TableInfo');
    use_ok('DBO::Meta::OneToMany');
    use_ok('DBO::Meta::HasA');
    use_ok('DBO::Meta::HasMany');
    use_ok('DBO::Query::LeftJoin');
    use_ok('DBO::Query::Expr');
    use_ok('DBO::Query::Join');
    use_ok('DBO::Query::Limit');
    use_ok('DBO::Query::OrderBy');
    use_ok('DBO::Query::RightJoin');
    use_ok('DBO::Query::Text');
    use_ok('DBO::Query::GroupBy');
    use_ok('DBO::Query::Insert');
    use_ok('DBO::Base::Private');
    use_ok('DBO::Base::Defs');
    use_ok('DBO::Value::Key');
    use_ok('DBO::Value::Column');
    use_ok('DBO::Test::Util');
    use_ok('DBO::Test::Objects');
    use_ok('DBO::Generator');
    use_ok('DBO::GluedQuery');
    use_ok('DBO::Util');
    use_ok('DBO::DBH::Owner');
    use_ok('DBO::GluedUpdate');
    use_ok('DBO::Value');
};

# vim:set ft=perl ai si et ts=4 sts=4 sw=4 tw=0
