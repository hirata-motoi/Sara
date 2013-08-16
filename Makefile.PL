use inc::Module::Install;
name 'Sara';
all_from 'lib/Sara.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
