
Start _ -> Accept _ ^
Start ( -> scan ( ^
Start ) -> scan ) ^

scan ( -> remLeft ( >
scan - -> scan - >
remLeft ( -> remLeft ( >
remLeft - -> remLeft - >
remLeft ) -> delete - <
delete - -> delete - <
delete ( -> scan - >

scan ) -> scan ) >
scan _ -> ensureRL _ <
ensureRL ( -> Reject ( ^
ensureRL ) -> skipRL ) <
ensureRL - -> ensureRL - <
ensureRL _ -> ensureLR _ >
skipRL ( -> skipRL ( <
skipRL ) -> skipRL ) <
skipRL - -> skipRL - <

skipRL _ -> ensureLR _ >

ensureLR ) -> Reject ) ^
ensureLR ( -> skipLR ( >
ensureLR _ -> ensNotF _ <
ensureLR - -> ensureLR - >

skipLR ( -> skipLR ( >
skipLR ) -> skipLR ) >
skipLR - -> skipLR - >

skipLR _ -> ensNotF _ <
ensNotF ) -> continue ) <
ensNotF ( -> continue ( <
ensNotF - -> ensNotF - <
ensNotF _ -> Accept _ >

continue ( -> continue ( <
continue ) -> continue ) <
continue - -> continue - <
continue _ -> scan _ >