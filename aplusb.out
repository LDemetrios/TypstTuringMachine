Start 0 -> repeat 0 >
Start 1 -> repeat 1 >

repeat 0 -> repeat 0 >
repeat 1 -> repeat 1 >
repeat + -> repeat + >

repeat _ -> dec _ <
dec 1 -> carry 0 <
dec 0 -> dec 1 <
dec + -> end + >

carry 0 -> carry 0 <
carry 1 -> carry 1 <

carry + -> inc + <
inc 0 -> repeat 1 >
inc 1 -> inc 0 <
inc _ -> repeat 1 >

end 1 -> end 1 >
end 0 -> end 0 >
end + -> home _ <
end _ -> remove _ <
remove 0 -> remove _ <
remove 1 -> remove _ <
remove + -> home _ <
home 1 -> home 1 <
home 0 -> home 0 <
home _ -> Accept _ >
