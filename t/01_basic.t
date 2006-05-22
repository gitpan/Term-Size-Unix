
use Test::More tests => 6;

BEGIN { use_ok('Term::Size::Unix'); }

@chars = Term::Size::Unix::chars;
ok(@chars == 2);

@chars1 = Term::Size::Unix::chars *STDERR;
is_deeply([@chars], [@chars1]);

$cols = Term::Size::Unix::chars;
is($cols, $chars[0]);

@pixels = Term::Size::Unix::pixels;
ok(@pixels==2);

$x = Term::Size::Unix::pixels;
ok($x == $pixels[0]);

diag("This terminal is $chars[0]x$chars[1] characters,"),
diag("  and $pixels[0]x$pixels[1] pixels.");

