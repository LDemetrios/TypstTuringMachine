
Start 0 -> pad 0 <
Start 1 -> pad 1 <
Start 2 -> pad 2 <
pad _ -> goRight / ^

goRight 0 -> goRight 0 >
goRight _ -> dec _ <
goRight 1 -> goRight 1 >
goRight 2 -> goRight 2 >
goRight / -> goRight / >

goLeft 0 -> goLeft 0 <
goLeft 1 -> goLeft 1 <
goLeft 2 -> goLeft 2 <
goLeft / -> inc / <

dec 0 -> dec 0 <
dec 1 -> carry 0 >
dec 2 -> carry 1 >
dec / -> end / >

carry 0 -> carry 2 >
carry _ -> goLeft _ <
inc 0 -> goRight 1 >
inc _ -> goRight 1 >
inc 1 -> inc 0 <

end 0 -> end 0 >
end _ -> clean _ <
clean 0 -> clean _ <
clean / -> home _ <

home 0 -> home 0 <
home 1 -> home 1 <
home _ -> preac _ >
preac _ -> Accept 0 ^
preac 0 -> Accept 0 ^
preac 1 -> Accept 1 ^
