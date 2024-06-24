Start 0 _ -> scan _ > 0 >
Start 1 _ -> scan _ > 1 >

scan 0 _ -> scan _ > 0 >
scan 1 _ -> scan _ > 1 >
scan & _ -> and _ ^ _ <
scan | _ -> or _ ^ _ <
scan _ _ -> copy _ ^ _ <

or _ 0 -> or0 _ ^ _ <
or _ 1 -> or1 _ ^ _ <
or0 _ 0 -> scan _ > 0 >
or0 _ 1 -> scan _ > 1 >
or1 _ 0 -> scan _ > 1 >
or1 _ 1 -> scan _ > 1 >

and _ 0 -> and0 _ ^ _ <
and _ 1 -> and1 _ ^ _ <
and0 _ 0 -> scan _ > 0 >
and0 _ 1 -> scan _ > 0 >
and1 _ 0 -> scan _ > 0 >
and1 _ 1 -> scan _ > 1 >

copy _ 1 -> Accept 1 ^ _ ^
copy _ 0 -> Accept 0 ^ _ ^