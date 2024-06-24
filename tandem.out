
Start 0 -> copyleftZero X <
Start 1 -> copyleftOne X <

copyleftZero _ -> searchRight 0 >
copyleftOne _ -> searchRight 1 >

searchRight 0 -> searchRight 0 >
searchRight 1 -> searchRight 1 >
searchRight X -> searchRight X >
searchRight Y -> copyright _ <

searchRight _ -> copyright _ <

copyright 0 -> copyrightZero Y >
copyright 1 -> copyrightOne Y >

copyrightZero _ -> searchLeft 0 <
copyrightOne _ -> searchLeft 1 <

searchLeft 0 -> searchLeft 0 <
searchLeft 1 -> searchLeft 1 <
searchLeft X -> copyleft _ >
searchLeft Y -> searchLeft Y <

copyleft 0 -> copyleftZero X <
copyleft 1 -> copyleftOne X <

copyleft Y -> pad X <
pad _ -> compare X <

compare 0 -> compareZero X >
compare 1 -> compareOne X >

compareZero X -> compareZero X >
compareZero 0 -> compareZero 0 >
compareZero 1 -> compareZero 1 >
compareOne X -> compareOne X >
compareOne 0 -> compareOne 0 >
compareOne 1 -> compareOne 1 >

compareZero _ -> compareZeroBack _ <
compareOne _ -> compareOneBack _ <
compareZeroBack 0 -> searchCompare _ <
compareZeroBack 1 -> Reject 1 ^
compareOneBack 0 -> Reject 1 ^
compareOneBack 1 -> searchCompare _ <

searchCompare 0 -> searchCompare 0 <
searchCompare 1 -> searchCompare 1 <
searchCompare X -> searchCompareContinue X <
searchCompareContinue X -> searchCompareContinue X <
searchCompareContinue 0 -> compare 0 ^
searchCompareContinue 1 -> compare 1 ^

searchCompareContinue _ -> ensureNoneLeft _ >
ensureNoneLeft X -> ensureNoneLeft X >
ensureNoneLeft _ -> Accept _ ^

copyright X -> Reject X ^