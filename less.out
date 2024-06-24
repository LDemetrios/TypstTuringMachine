
Start 0 -> peekNextChecklen 0 ^
Start 1 -> peekNextChecklen 1 ^

checklen 0 -> checklen 0 >
checklen 1 -> checklen 1 >
checklen < -> checklenR < >
checklenR 0* -> checklenR 0* >
checklenR 1* -> checklenR 1* >
checklenR 0 -> checklenNext 0* <
checklenR 1 -> checklenNext 1* <
checklenR _ -> Reject _ ^
checklenNext 0* -> checklenNext 0* <
checklenNext 1* -> checklenNext 1* <
checklenNext < -> checklenNextR < <
checklenNextR 0 -> checklenNextR 0 <
checklenNextR 1 -> checklenNextR 1 <
checklenNextR 0* -> peekNextChecklen 0* >
checklenNextR 1* -> peekNextChecklen 1* >
peekNextChecklen 0 -> checklen 0* >
peekNextChecklen 1 -> checklen 1* >
peekNextChecklen < -> ensureSmthLeft < >
ensureSmthLeft 0* -> ensureSmthLeft 0* >
ensureSmthLeft 1* -> ensureSmthLeft 1* >
ensureSmthLeft 0 -> Accept 0 ^
ensureSmthLeft 1 -> Accept 1 ^

ensureSmthLeft _ -> compareNumeric _ <
compareNumeric 0* -> compareNumeric 0 <
compareNumeric 1* -> compareNumeric 1 <
compareNumeric < -> compareNumeric < <
compareNumeric _ -> peek4cmp _ >

peek4cmp 0 -> left0 0* >
peek4cmp 1 -> left1 1* >

left0 0 -> left0 0 >
left0 1 -> left0 1 >
left1 0 -> left1 0 >
left1 1 -> left1 1 >

left0 < -> check0 < >
left1 < -> check1 < >
check0 0* -> check0 0* >
check0 1* -> check0 1* >
check1 0* -> check1 0* >
check1 1* -> check1 1* >
check0 1 -> Accept 1 ^
check1 0 -> Reject 0 ^
check0 0 -> cmpNext 0* <
check1 1 -> cmpNext 1* <
cmpNext 0* -> cmpNext 0* <
cmpNext 1* -> cmpNext 1* <
cmpNext < -> cmpNextL < <
cmpNextL 0 -> cmpNextL 0 <
cmpNextL 1 -> cmpNextL 1 <
cmpNextL 0* -> peek4cmp 0* >
cmpNextL 1* -> peek4cmp 1* >

peek4cmp < -> Reject < ^