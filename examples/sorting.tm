Start 0 _ _ _ -> begin 0 < _ ^ _ ^ _ ^
Start 1 _ _ _ -> begin 1 < _ ^ _ ^ _ ^
begin _ _ _ _ -> pad | > _ ^ _ ^ _ ^
pad 0 _ _ _ -> pad 0 > _ ^ _ ^ _ ^
pad 1 _ _ _ -> pad 1 > _ ^ _ ^ _ ^
pad | _ _ _ -> pad | > _ ^ _ ^ _ ^
pad _ _ _ _ -> home | < _ ^ _ ^ _ ^
home 0 _ _ _ -> home 0 < _ ^ _ ^ _ ^
home 1 _ _ _ -> home 1 < _ ^ _ ^ _ ^
home | _ _ _ -> home | < _ ^ _ ^ _ ^
home _ _ _ _ -> start _ > _ ^ _ ^ _ ^
start | _ _ _ -> copyl | > _ ^ _ ^ _ ^
copyl 0 _ _ _ -> copyl _ > 0 > _ ^ _ ^
copyl 1 _ _ _ -> copyl _ > 1 > _ ^ _ ^
copyl | _ _ _ -> copyr _ > _ ^ _ ^ _ ^
copyr 0 _ _ _ -> copyr _ > _ ^ 0 > _ ^
copyr 1 _ _ _ -> copyr _ > _ ^ 1 > _ ^
copyr | _ _ _ -> tocmp | ^ _ < _ < _ ^
copyr || _ _ _ -> tocmp || ^ _ < _ < _ ^

tocmp | 0 0 _ -> tocmp | ^ 0 < 0 < _ ^
tocmp | 0 1 _ -> tocmp | ^ 0 < 1 < _ ^
tocmp | 0 _ _ -> tocmp | ^ 0 < _ ^ _ ^
tocmp | 1 0 _ -> tocmp | ^ 1 < 0 < _ ^
tocmp | 1 1 _ -> tocmp | ^ 1 < 1 < _ ^
tocmp | 1 _ _ -> tocmp | ^ 1 < _ ^ _ ^
tocmp | _ 0 _ -> tocmp | ^ _ ^ 0 < _ ^
tocmp | _ 1 _ -> tocmp | ^ _ ^ 1 < _ ^
tocmp | _ _ _ -> cmplen | ^ _ > _ > _ ^

cmplen | 0 0 _ -> cmplen | ^ 0 > 0 > _ ^
cmplen | 0 1 _ -> cmplen | ^ 0 > 1 > _ ^
cmplen | 0 _ _ -> compared | ^ 0 < _ < g >
cmplen | 1 0 _ -> cmplen | ^ 1 > 0 > _ ^
cmplen | 1 1 _ -> cmplen | ^ 1 > 1 > _ ^
cmplen | 1 _ _ -> compared | ^ 1 < _ < g >
cmplen | _ 0 _ -> compared | ^ _ < 0 < l >
cmplen | _ 1 _ -> compared | ^ _ < 1 < l >
cmplen | _ _ _ -> tocmpnum | ^ _ < _ < _ ^
tocmpnum | 0 0 _ -> tocmpnum | ^ 0 < 0 < _ ^
tocmpnum | 0 1 _ -> tocmpnum | ^ 0 < 1 < _ ^
tocmpnum | 1 0 _ -> tocmpnum | ^ 1 < 0 < _ ^
tocmpnum | 1 1 _ -> tocmpnum | ^ 1 < 1 < _ ^
tocmpnum | _ _ _ -> cmpnum | ^ _ > _ > _ ^
cmpnum | 0 0 _ -> cmpnum | ^ 0 > 0 > _ ^
cmpnum | 1 1 _ -> cmpnum | ^ 1 > 1 > _ ^
cmpnum | 0 1 _ -> comparedGoEnd | ^ 0 > 1 > l >
cmpnum | 1 0 _ -> comparedGoEnd | ^ 1 > 0 > g >
comparedGoEnd | 0 0 _ -> comparedGoEnd | ^ 0 > 0 > _ ^
comparedGoEnd | 0 1 _ -> comparedGoEnd | ^ 0 > 1 > _ ^
comparedGoEnd | 0 _ _ -> comparedGoEnd | ^ 0 > _ > _ ^
comparedGoEnd | 1 0 _ -> comparedGoEnd | ^ 1 > 0 > _ ^
comparedGoEnd | 1 1 _ -> comparedGoEnd | ^ 1 > 1 > _ ^
comparedGoEnd | 1 _ _ -> comparedGoEnd | ^ 1 > _ > _ ^
comparedGoEnd | _ 0 _ -> comparedGoEnd | ^ _ > 0 > _ ^
comparedGoEnd | _ 1 _ -> comparedGoEnd | ^ _ > 1 > _ ^
comparedGoEnd | _ _ _ -> compared | ^ _ < _ < _ ^

compared | 0 0 _ -> compared | ^ 0 < 0 < _ ^
compared | 0 1 _ -> compared | ^ 0 < 1 < _ ^
compared | 0 _ _ -> compared | ^ 0 < _ ^ _ ^
compared | 1 0 _ -> compared | ^ 1 < 0 < _ ^
compared | 1 1 _ -> compared | ^ 1 < 1 < _ ^
compared | 1 _ _ -> compared | ^ 1 < _ ^ _ ^
compared | _ 0 _ -> compared | ^ _ ^ 0 < _ ^
compared | _ 1 _ -> compared | ^ _ ^ 1 < _ ^
compared | _ _ _ -> gapBegin | < _ ^ _ ^ _ ^
gapBegin _ _ _ _ -> gapBegin _ < _ ^ _ ^ _ ^
gapBegin | _ _ _ -> writeResp | > | ^ | ^ _ <

writeResp _ | | l -> writeLeft _ ^ | > | ^ l >
writeLeft _ 0 | _ -> writeLeft 0 > 0 > | ^ _ ^
writeLeft _ 1 | _ -> writeLeft 1 > 1 > | ^ _ ^

writeResp _ | | g -> writeRight _ ^ | ^ | > g >
writeRight _ | 0 _ -> writeRight 0 > | ^ 0 > _ ^
writeRight _ | 1 _ -> writeRight 1 > | ^ 1 > _ ^

writeRight _ | _ _ -> writeLeft | > | > | ^ _ ^
writeLeft | _ | _ -> clearCmp | ^ | ^ | ^ _ <
writeLeft _ _ | _ -> writeRight | > | ^ | > _ ^
writeRight | | _ _ -> clearCmp | ^ | ^ | ^ _ <

clearCmp | | | l -> clearCmp | ^ _ < _ < _ ^
clearCmp | | | g -> clearCmp | ^ _ < _ < _ ^
clearCmp | | 0 _ -> clearCmp | ^ | ^ _ < _ ^
clearCmp | | 1 _ -> clearCmp | ^ | ^ _ < _ ^
clearCmp | 0 | _ -> clearCmp | ^ _ < | ^ _ ^
clearCmp | 0 0 _ -> clearCmp | ^ _ < _ < _ ^
clearCmp | 0 1 _ -> clearCmp | ^ _ < _ < _ ^
clearCmp | 1 | _ -> clearCmp | ^ _ < | ^ _ ^
clearCmp | 1 0 _ -> clearCmp | ^ _ < _ < _ ^
clearCmp | 1 1 _ -> clearCmp | ^ _ < _ < _ ^
clearCmp | | | _ -> checkHasNext | > _ > _ > _ ^

checkHasNext 0 _ _ _ -> hasNext 0 < _ ^ _ ^ _ ^
checkHasNext 1 _ _ _ -> hasNext 1 < _ ^ _ ^ _ ^
checkHasNext _ _ _ _ -> hasntNext _ < _ ^ _ ^ _ ^
hasNext | _ _ _ -> cmpNext | < _ ^ _ ^ _ ^
cmpNext 0 _ _ _ -> cmpNext 0 < _ ^ _ ^ _ ^
cmpNext 1 _ _ _ -> cmpNext 1 < _ ^ _ ^ _ ^
cmpNext | _ _ _ -> copyl | > _ ^ _ ^ _ ^

hasntNext | _ _ _ -> moveBarrier | < _ ^ _ ^ _ ^
moveBarrier 0 _ _ _ -> moveBarrier 0 < _ ^ _ ^ _ ^
moveBarrier 1 _ _ _ -> moveBarrier 1 < _ ^ _ ^ _ ^
moveBarrier | _ _ _ -> restart || < _ ^ _ ^ _ ^
restart 0 _ _ _ -> restart 0 < _ ^ _ ^ _ ^
restart 1 _ _ _ -> restart 1 < _ ^ _ ^ _ ^
restart | _ _ _ -> restart | < _ ^ _ ^ _ ^
restart _ _ _ _ -> restarted _ > _ ^ _ ^ _ ^
restarted | _ _ _ -> copyl | > _ ^ _ ^ _ ^



tocmp || 0 0 _ -> tocmp || ^ 0 < 0 < _ ^
tocmp || 0 1 _ -> tocmp || ^ 0 < 1 < _ ^
tocmp || 0 _ _ -> tocmp || ^ 0 < _ ^ _ ^
tocmp || 1 0 _ -> tocmp || ^ 1 < 0 < _ ^
tocmp || 1 1 _ -> tocmp || ^ 1 < 1 < _ ^
tocmp || 1 _ _ -> tocmp || ^ 1 < _ ^ _ ^
tocmp || _ 0 _ -> tocmp || ^ _ ^ 0 < _ ^
tocmp || _ 1 _ -> tocmp || ^ _ ^ 1 < _ ^
tocmp || _ _ _ -> cmplen || ^ _ > _ > _ ^
cmplen || 0 0 _ -> cmplen || ^ 0 > 0 > _ ^
cmplen || 0 1 _ -> cmplen || ^ 0 > 1 > _ ^
cmplen || 0 _ _ -> compared || ^ 0 < _ < g >
cmplen || 1 0 _ -> cmplen || ^ 1 > 0 > _ ^
cmplen || 1 1 _ -> cmplen || ^ 1 > 1 > _ ^
cmplen || 1 _ _ -> compared || ^ 1 < _ < g >
cmplen || _ 0 _ -> compared || ^ _ < 0 < l >
cmplen || _ 1 _ -> compared || ^ _ < 1 < l >
cmplen || _ _ _ -> tocmpnum || ^ _ < _ < _ ^
tocmpnum || 0 0 _ -> tocmpnum || ^ 0 < 0 < _ ^
tocmpnum || 0 1 _ -> tocmpnum || ^ 0 < 1 < _ ^
tocmpnum || 1 0 _ -> tocmpnum || ^ 1 < 0 < _ ^
tocmpnum || 1 1 _ -> tocmpnum || ^ 1 < 1 < _ ^
tocmpnum || _ _ _ -> cmpnum || ^ _ > _ > _ ^
cmpnum || 0 0 _ -> cmpnum || ^ 0 > 0 > _ ^
cmpnum || 1 1 _ -> cmpnum || ^ 1 > 1 > _ ^
cmpnum || 0 1 _ -> comparedGoEnd || ^ 0 > 1 > l >
cmpnum || 1 0 _ -> comparedGoEnd || ^ 1 > 0 > g >
comparedGoEnd || 0 0 _ -> comparedGoEnd || ^ 0 > 0 > _ ^
comparedGoEnd || 0 1 _ -> comparedGoEnd || ^ 0 > 1 > _ ^
comparedGoEnd || 0 _ _ -> comparedGoEnd || ^ 0 > _ > _ ^
comparedGoEnd || 1 0 _ -> comparedGoEnd || ^ 1 > 0 > _ ^
comparedGoEnd || 1 1 _ -> comparedGoEnd || ^ 1 > 1 > _ ^
comparedGoEnd || 1 _ _ -> comparedGoEnd || ^ 1 > _ > _ ^
comparedGoEnd || _ 0 _ -> comparedGoEnd || ^ _ > 0 > _ ^
comparedGoEnd || _ 1 _ -> comparedGoEnd || ^ _ > 1 > _ ^
comparedGoEnd || _ _ _ -> compared || ^ _ < _ < _ ^
compared || 0 0 _ -> compared || ^ 0 < 0 < _ ^
compared || 0 1 _ -> compared || ^ 0 < 1 < _ ^
compared || 0 _ _ -> compared || ^ 0 < _ ^ _ ^
compared || 1 0 _ -> compared || ^ 1 < 0 < _ ^
compared || 1 1 _ -> compared || ^ 1 < 1 < _ ^
compared || 1 _ _ -> compared || ^ 1 < _ ^ _ ^
compared || _ 0 _ -> compared || ^ _ ^ 0 < _ ^
compared || _ 1 _ -> compared || ^ _ ^ 1 < _ ^
compared || _ _ _ -> gapBegin || < _ ^ _ ^ _ ^
gapBegin || _ _ _ -> writeResp || > | ^ | ^ _ <
writeLeft || _ | _ -> clearCmp || ^ | ^ | ^ _ <
writeRight || | _ _ -> clearCmp || ^ | ^ | ^ _ <
clearCmp || | | l -> clearCmp || ^ _ < _ < _ ^
clearCmp || | | g -> clearCmp || ^ _ < _ < _ ^
clearCmp || | 0 _ -> clearCmp || ^ | ^ _ < _ ^
clearCmp || | 1 _ -> clearCmp || ^ | ^ _ < _ ^
clearCmp || 0 | _ -> clearCmp || ^ _ < | ^ _ ^
clearCmp || 0 0 _ -> clearCmp || ^ _ < _ < _ ^
clearCmp || 0 1 _ -> clearCmp || ^ _ < _ < _ ^
clearCmp || 1 | _ -> clearCmp || ^ _ < | ^ _ ^
clearCmp || 1 0 _ -> clearCmp || ^ _ < _ < _ ^
clearCmp || 1 1 _ -> clearCmp || ^ _ < _ < _ ^
clearCmp || | | _ -> moveBarrier || < _ > _ > _ ^

copyl || _ _ _ -> finished || > _ ^ _ ^ _ ^
finished 0 _ _ _ -> finished 0 > _ ^ _ ^ _ ^
finished 1 _ _ _ -> finished 1 > _ ^ _ ^ _ ^
finished || _ _ _ -> finished | > _ ^ _ ^ _ ^
finished | _ _ _ -> restore _ < _ ^ _ ^ _ ^
restore 0 _ _ _ -> restore 0 < _ ^ _ ^ _ ^
restore 1 _ _ _ -> restore 1 < _ ^ _ ^ _ ^
restore | _ _ _ -> restore | < _ ^ _ ^ _ ^
restore || _ _ _ -> restore | < _ < _ ^ _ ^
restore _ 1 _ _ -> restore 1 < _ < _ ^ _ ^
restore _ 0 _ _ -> restore 0 < _ < _ ^ _ ^
restore _ _ _ _ -> preac _ > _ > _ ^ _ ^
preac | _ _ _ -> Accept _ > _ ^ _ ^ _ ^

copyr _ _ _ _ -> only _ < _ ^ _ ^ _ ^
only _ _ _ _ -> restore _ < _ < _ ^ _ ^

cmpnum | _ _ _ -> compared | ^ _ < _ < l >
cmpnum || _ _ _ -> compared || ^ _ < _ < l >