/**
[test]
issue = 7239
reason = "Root-level string scalars: value::patch($start, value::diff($start, $after)) must yield $after (invalid empty JSON Pointer path and missing root handling previously left the value unchanged)."

[[test.results]]
value = "NONE"

[[test.results]]
value = "NONE"

[[test.results]]
value = "NONE"

[[test.results]]
value = "'Hello there!'"

*/

LET $start = 'Hello';
LET $after = 'Hello there!';
LET $diff = value::diff($start, $after);
RETURN value::patch($start, $diff);
