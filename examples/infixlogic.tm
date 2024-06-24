Start 0 _ -> APhase 0 ^ _ ^
Start 1 _ -> APhase 1 ^ _ ^
Start ( _ -> APhase ( ^ _ ^
Start ) _ -> APhase ) ^ _ ^

APhase 1 _ -> APhase 1 > 1 >
APhase 0 _ -> APhase 0 > 0 >
APhase | _ -> APhase | > | >
APhase ( _ -> APhase ( > ( >
APhase ) _ -> APhase ) > ) >
APhase & _ -> and & > _ <

and 1 1 -> APhase 1 > 1 >
and 0 1 -> APhase 0 > 0 >
and ( 1 -> restoreA( ( < 1 >
and 1 0 -> APhase 1 > 0 >
and 0 0 -> APhase 0 > 0 >
and ( 0 -> restoreA( ( < 0 >
and 1 ) -> restoreA1 1 < ) >
and 0 ) -> restoreA0 0 < ) >
and ( ) -> restoreA( ( < ) >

restoreA1 & _ -> restore1 & > & >
restoreA( & _ -> restore( & > & >
restoreA0 & _ -> restore0 & > & >
restore1 1 _ -> APhase 1 > 1 >
restore( ( _ -> APhase ( > ( >
restore0 0 _ -> APhase 0 > 0 >

APhase _ _ -> returnToOPhase _ < _ ^

returnToOPhase 0 _ -> returnToOPhase _ < _ ^
returnToOPhase 1 _ -> returnToOPhase _ < _ ^
returnToOPhase & _ -> returnToOPhase _ < _ ^
returnToOPhase | _ -> returnToOPhase _ < _ ^
returnToOPhase ( _ -> returnToOPhase _ < _ ^
returnToOPhase ) _ -> returnToOPhase _ < _ ^
returnToOPhase _ _ -> returnToOPhase2 _ > _ <
returnToOPhase2 _ 0 -> returnToOPhase2 _ ^ 0 <
returnToOPhase2 _ 1 -> returnToOPhase2 _ ^ 1 <
returnToOPhase2 _ & -> returnToOPhase2 _ ^ & <
returnToOPhase2 _ | -> returnToOPhase2 _ ^ | <
returnToOPhase2 _ ( -> returnToOPhase2 _ ^ ( <
returnToOPhase2 _ ) -> returnToOPhase2 _ ^ ) <

returnToOPhase2 _ _ -> OPhase _ ^ _ >

OPhase _ 1 -> OPhase 1 > 1 >
OPhase _ 0 -> OPhase 0 > 0 >
OPhase _ & -> OPhase & > & >
OPhase _ ( -> OPhase ( > ( >
OPhase _ ) -> OPhase ) > ) >
OPhase _ | -> or _ < | >

or 1 1 -> OPhase 1 > 1 >
or 1 0 -> OPhase 1 > 0 >
or 1 ( -> orestoreO( 1 > ( <
or 0 1 -> OPhase 1 > 1 >
or 0 0 -> OPhase 0 > 0 >
or 0 ( -> orestoreO( 0 > ( <
or ) 1 -> orestoreO1 ) > 1 <
or ) 0 -> orestoreO0 ) > 0 <
or ) ( -> orestoreO( ) > ( <

orestoreO1 _ | -> orestore1 | > | >
orestoreO( _ | -> orestore( | > | >
orestoreO0 _ | -> orestore0 | > | >
orestore1 _ 1 -> OPhase 1 > 1 >
orestore( _ ( -> OPhase ( > ( >
orestore0 _ 0 -> OPhase 0 > 0 >

OPhase _ _ -> returnToPPhase _ ^ _ <
returnToPPhase _ & -> returnToPPhase _ ^ _ <
returnToPPhase _ | -> returnToPPhase _ ^ _ <
returnToPPhase _ 0 -> returnToPPhase _ ^ _ <
returnToPPhase _ 1 -> returnToPPhase _ ^ _ <
returnToPPhase _ ( -> returnToPPhase _ ^ _ <
returnToPPhase _ ) -> returnToPPhase _ ^ _ <
returnToPPhase _ _ -> PPhase _ < _ >

PPhase ) _ -> PPhaseOp _ < _ ^
PPhase 0 _ -> PPhase _ < 0 >
PPhase 1 _ -> PPhase _ < 1 >
PPhase ( _ -> PPhase _ < ) >
PPhase & _ -> PPhase _ < & >
PPhase | _ -> PPhase _ < | >

PPhaseOp ) _ -> PPhaseOp _ < ( >
PPhaseOp 0 _ -> PPhaseOp0 _ < _ ^
PPhaseOp 1 _ -> PPhaseOp1 _ < _ ^

PPhaseOp0 ( _ -> PPhase _ < 0 >
PPhaseOp1 ( _ -> PPhase _ < 1 >
PPhaseOp0 | _ -> PPhaseRestore0 | ^ ( >
PPhaseOp0 & _ -> PPhaseRestore0 & ^ ( >
PPhaseOp1 | _ -> PPhaseRestore1 | ^ ( >
PPhaseOp1 & _ -> PPhaseRestore1 & ^ ( >
PPhaseRestore0 | _ -> PPhase | ^ 0 >
PPhaseRestore0 & _ -> PPhase & ^ 0 >
PPhaseRestore1 | _ -> PPhase | ^ 1 >
PPhaseRestore1 & _ -> PPhase & ^ 1 >

PPhase _ _ -> restore _ > _ <
restore _ 0 -> restore 0 > _ <
restore _ 1 -> restore 1 > _ <
restore _ ( -> restore ) > _ <
restore _ ) -> restore ( > _ <
restore _ & -> restore & > _ <
restore _ | -> restore | > _ <
restore _ _ -> cycle _ < _ >
cycle 0 _ -> cycle' 0 < _ ^
cycle 1 _ -> cycle' 1 < _ ^
cycle ( _ -> cycle' ( < _ ^
cycle ) _ -> cycle' ) < _ ^
cycle & _ -> cycle' & < _ ^
cycle | _ -> cycle' | < _ ^
cycle' 0 _ -> cycle'' 0 < _ ^
cycle' 1 _ -> cycle'' 1 < _ ^
cycle' ( _ -> cycle'' ( < _ ^
cycle' ) _ -> cycle'' ) < _ ^
cycle' & _ -> cycle'' & < _ ^
cycle' | _ -> cycle'' | < _ ^
cycle' _ _ -> Accept _ > _ ^
cycle'' 0 _ -> cycle'' 0 < _ ^
cycle'' 1 _ -> cycle'' 1 < _ ^
cycle'' ( _ -> cycle'' ( < _ ^
cycle'' ) _ -> cycle'' ) < _ ^
cycle'' & _ -> cycle'' & < _ ^
cycle'' | _ -> cycle'' | < _ ^
cycle'' _ _ -> Start _ > _ ^