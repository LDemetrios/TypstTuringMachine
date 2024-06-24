
Start 0 -> Start 0 >
Start 1 -> Start 1 >
Start _ -> search / <

search _ -> finishleft _ >
search 0 -> propzero 2 >
search 1 -> propone 3 >
search 2 -> search 2 <
search 3 -> search 3 <
search / -> search / <

propzero 0 -> propzero 0 >
propzero 1 -> propzero 1 >
propzero 2 -> propzero 2 >
propzero 3 -> propzero 3 >
propzero / -> propzero / >
propzero _ -> search 2 <

propone 0 -> propone 0 >
propone 1 -> propone 1 >
propone 2 -> propone 2 >
propone 3 -> propone 3 >
propone / -> propone / >
propone _ -> search 3 <

finishleft 2 -> finishleft 0 >
finishleft 3 -> finishleft 1 >
finishleft / -> shift _ >

shiftzero _ -> shift 0 >
shiftone _ -> shift 1 >

shift 2 -> shiftzero t <
shift t -> shift _ >
shift 3 -> shiftone t <
shift _ -> stepback _ <

stepback _ -> retreat _ <

retreat 0 -> retreat 0 <
retreat 1 -> retreat 1 <
retreat _ -> Accept _ >
