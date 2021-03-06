set-strictMode -version latest

function convertFrom-greekBetacode {
   param (
      [string] $encodedText
   )

   $ret = $encodedText

   $ret = $ret -creplace 'a\(\\'  , 'ἃ'
   $ret = $ret -creplace 'a\(/'   , 'ἅ'
   $ret = $ret -creplace 'a/\|'   , 'ᾴ'
   $ret = $ret -creplace 'a/'     , 'ά'
   $ret = $ret -creplace 'a\^\|'  , 'ᾷ'
   $ret = $ret -creplace 'a\|'    , 'ᾳ'
   $ret = $ret -creplace 'a\\'    , 'ὰ'
   $ret = $ret -creplace 'a\^'    , 'ᾶ'
   $ret = $ret -creplace 'a\)\\'  , 'ἂ'
   $ret = $ret -creplace 'a\)\^'  , 'ἆ'
   $ret = $ret -creplace 'a\)/\|' , 'ᾄ'
   $ret = $ret -creplace 'a\)/'   , 'ἄ'
   $ret = $ret -creplace 'a\)'    , 'ἀ'
   $ret = $ret -creplace 'a\('    , 'ἁ'
   $ret = $ret -creplace 'a'      , 'α'
   $ret = $ret -creplace 'b'      , 'β'
   $ret = $ret -creplace 'c'      , 'ξ'
   $ret = $ret -creplace 'd'      , 'δ'

   $ret = $ret -creplace 'e\)/'   , 'ἔ'
   $ret = $ret -creplace 'e\\'    , 'ὲ'
   $ret = $ret -creplace 'e\(/'   , 'ἕ'
   $ret = $ret -creplace 'e\(\\'  , 'ἓ'
   $ret = $ret -creplace 'e\('    , 'ἑ'
   $ret = $ret -creplace 'e\)'    , 'ἐ'
   $ret = $ret -creplace 'e/'     , 'έ'
   $ret = $ret -creplace 'e'      , 'ε'

   $ret = $ret -creplace 'f'      , 'φ'
   $ret = $ret -creplace 'g'      , 'γ'

   $ret = $ret -creplace 'h\)/\|' , 'ᾔ'
   $ret = $ret -creplace 'h\)\^\|', 'ᾖ'
   $ret = $ret -creplace 'h\)\\'  , 'ἢ'
   $ret = $ret -creplace 'h\)\|'  , 'ᾐ'
   $ret = $ret -creplace 'h\(\^\|', 'ᾗ'
   $ret = $ret -creplace 'h\(\^'  , 'ἧ'
   $ret = $ret -creplace 'h\(\\'  , 'ἣ'
   $ret = $ret -creplace 'h\(/'   , 'ἥ'
   $ret = $ret -creplace 'h\(\|'  , 'ᾑ'
   $ret = $ret -creplace 'h\)\^'  , 'ἦ'
   $ret = $ret -creplace 'h\^\|'  , 'ῇ'
   $ret = $ret -creplace 'h\^'    , 'ῆ'
   $ret = $ret -creplace 'h\\'    , 'ὴ'
   $ret = $ret -creplace 'h\('    , 'ἡ'
   $ret = $ret -creplace 'h\)/'   , 'ἤ'
   $ret = $ret -creplace 'h\)'    , 'ἠ'
   $ret = $ret -creplace 'h/\|'   , 'ῄ'
   $ret = $ret -creplace 'h/'     , 'ή'
   $ret = $ret -creplace 'h\|'    , 'ῃ'
   $ret = $ret -creplace 'h'      , 'η'

   $ret = $ret -creplace 'i\)\^'  , 'ἶ'
   $ret = $ret -creplace 'i\)/'   , 'ἴ'
   $ret = $ret -creplace 'i\)'    , 'ἰ'
   $ret = $ret -creplace 'i\(/'   , 'ἵ'
   $ret = $ret -creplace 'i\(\\'  , 'ἳ'
   $ret = $ret -creplace 'i\(\^'  , 'ἷ'
   $ret = $ret -creplace 'i\('    , 'ἱ'
   $ret = $ret -creplace 'i\^'    , 'ῖ'
   $ret = $ret -creplace 'i\\'    , 'ὶ'
   $ret = $ret -creplace 'i/'     , 'ί'
   $ret = $ret -creplace 'i\+/'   , 'ΐ'
   $ret = $ret -creplace 'i\+\\'  , 'ῒ'
   $ret = $ret -creplace 'i'      , 'ι'

   $ret = $ret -creplace 'k'      ,  'κ'
   $ret = $ret -creplace 'l'      ,  'λ'
   $ret = $ret -creplace 'm'      ,  'μ'
   $ret = $ret -creplace 'n'      ,  'ν'

   $ret = $ret -creplace 'o\(\\'  ,  'ὃ'
   $ret = $ret -creplace 'o\(/'   ,  'ὅ'
   $ret = $ret -creplace 'o\)/'   ,  'ὄ'
   $ret = $ret -creplace 'o\)\\'  ,  'ὂ'
   $ret = $ret -creplace 'o\)'    ,  'ὀ'
   $ret = $ret -creplace 'o\('    ,  'ὁ'
   $ret = $ret -creplace 'o\\'    ,  'ὸ'
   $ret = $ret -creplace 'o/'     ,  'ό'
   $ret = $ret -creplace 'o'      ,  'ο'
   $ret = $ret -creplace 'p'      ,  'π'
   $ret = $ret -creplace 's'      ,  'σ'

   $ret = $ret -creplace 'w\^\|'  , 'ῷ'
   $ret = $ret -creplace 'w\^'    , 'ῶ'
   $ret = $ret -creplace 'w\|'    , 'ῳ'
   $ret = $ret -creplace 'w/\|'   , 'ῴ'
   $ret = $ret -creplace 'w/'     , 'ώ'
   $ret = $ret -creplace 'w\\'    , 'ὼ'
   $ret = $ret -creplace 'w\(/'   , 'ὥ'
   $ret = $ret -creplace 'w\(\^\|', 'ᾧ'
   $ret = $ret -creplace 'w\(\^'  , 'ὧ'
   $ret = $ret -creplace 'w\('    , 'ὡ'
   $ret = $ret -creplace 'w\)/'   , 'ὤ'
   $ret = $ret -creplace 'w\)\|'  , 'ᾠ'
   $ret = $ret -creplace 'w\)\\'  , 'ὢ'
   $ret = $ret -creplace 'w\)\^'  , 'ὦ'
   $ret = $ret -creplace 'w\)'    , 'ὠ'
   $ret = $ret -creplace 'w'      , 'ω'

   $ret = $ret -creplace 'q'      , 'θ'
   $ret = $ret -creplace 'r\('    , 'ῥ'
   $ret = $ret -creplace 'r'      , 'ρ'
   $ret = $ret -creplace 't'      , 'τ'


   $ret = $ret -creplace 'u\(\^'  , 'ὗ'
   $ret = $ret -creplace 'u\(\\'  , 'ὓ'
   $ret = $ret -creplace 'u\(/'   , 'ὕ'
   $ret = $ret -creplace 'u\+/'   , 'ΰ'
   $ret = $ret -creplace 'u\('    , 'ὑ'
   $ret = $ret -creplace 'u\^'    , 'ῦ'
   $ret = $ret -creplace 'u\)\^'  , 'ὖ'
   $ret = $ret -creplace 'u\)/'   , 'ὔ'
   $ret = $ret -creplace 'u\)\\'  , 'ὒ'
   $ret = $ret -creplace 'u\)'    , 'ὐ'
   $ret = $ret -creplace 'u\+\\'  , 'ῢ'
   $ret = $ret -creplace 'u/'     , 'ύ'
   $ret = $ret -creplace 'u\\'    , 'ὺ'
   $ret = $ret -creplace 'u'      , 'υ'
   $ret = $ret -creplace 'y'      , 'ψ'
   $ret = $ret -creplace 'x'      , 'χ'
   $ret = $ret -creplace 'z'      , 'ζ'



   $ret = $ret -creplace '\)/A'   , 'Ἄ'
   $ret = $ret -creplace '\)\^A'  , 'Ἆ'
   $ret = $ret -creplace '\)A'    , 'Ἀ'
   $ret = $ret -creplace '\(\\A'  , 'Ἃ'
   $ret = $ret -creplace '\(/\|A' , 'ᾍ'
   $ret = $ret -creplace '\(/A'   , 'Ἅ'
   $ret = $ret -creplace '\(A'    , 'Ἁ'
   $ret = $ret -creplace 'A'      , 'Α'
   $ret = $ret -creplace 'B'      , 'Β'
   $ret = $ret -creplace 'C'      , 'Ξ'
   $ret = $ret -creplace 'D'      , 'Δ'
   $ret = $ret -creplace '\)E'    , 'Ἐ'
   $ret = $ret -creplace '\(/E'   , 'Ἕ'
   $ret = $ret -creplace '\(\\E'  , 'Ἓ'
   $ret = $ret -creplace '\(E'    , 'Ἑ'
   $ret = $ret -creplace '\)/E'   , 'Ἔ'
   $ret = $ret -creplace 'E'      , 'Ε'
   $ret = $ret -creplace 'F'      , 'Φ'
   $ret = $ret -creplace 'G'      , 'Γ'

   $ret = $ret -creplace '\)/\|H' , 'ᾜ'
   $ret = $ret -creplace '\)/H'   , 'Ἤ'
   $ret = $ret -creplace '\)\\H'  , 'Ἢ'
   $ret = $ret -creplace '\)\^H'  , 'Ἦ'
   $ret = $ret -creplace '\)H'    , 'Ἠ'
   $ret = $ret -creplace '\(/H'   , 'Ἥ'
   $ret = $ret -creplace '\(\\H'  , 'Ἣ'
   $ret = $ret -creplace '\(H'    , 'Ἡ'
   $ret = $ret -creplace 'H'      , 'Η'

   $ret = $ret -creplace '\(/I'   , 'Ἵ'
   $ret = $ret -creplace '\(I'    , 'Ἱ'
   $ret = $ret -creplace '\)/I'   , 'Ἴ'
   $ret = $ret -creplace '\)I'    , 'Ἰ'

   $ret = $ret -creplace 'K'      , 'Κ'
   $ret = $ret -creplace 'L'      , 'Λ'
   $ret = $ret -creplace 'M'      , 'Μ'
   $ret = $ret -creplace 'N'      , 'Ν'

   $ret = $ret -creplace '\(/O'   , 'Ὅ'
   $ret = $ret -creplace '\(\\O'  , 'Ὃ'
   $ret = $ret -creplace '\(O'    , 'Ὁ'
   $ret = $ret -creplace '\)/O'   , 'Ὄ'
   $ret = $ret -creplace '\)O'    , 'Ὀ'
   $ret = $ret -creplace '\\O'    , 'Ὃ'
   $ret = $ret -creplace 'O'      , 'Ο'
   $ret = $ret -creplace 'P'      , 'Π'
   $ret = $ret -creplace 'Q'      , 'Θ'
   $ret = $ret -creplace '\(R'    , 'Ῥ'
   $ret = $ret -creplace 'R'      , 'Ρ'
   $ret = $ret -creplace 'S'      , 'Σ'
   $ret = $ret -creplace 'T'      , 'Τ'
   $ret = $ret -creplace '\(/U'   , 'Ὕ'
   $ret = $ret -creplace '\(U'    , 'Ὑ'
   $ret = $ret -creplace 'U'      , 'Υ'

   $ret = $ret -creplace '\(/W'   , 'Ὥ'
   $ret = $ret -creplace '\(\^\|W', 'ᾯ'
   $ret = $ret -creplace '\(\^W\|', 'ᾯ'   # !!!
   $ret = $ret -creplace '\(W'    , 'Ὡ'
   $ret = $ret -creplace '\(\^W'  , 'Ὧ'
   $ret = $ret -creplace '\)\^W'  , 'Ὦ'
   $ret = $ret -creplace '\)/W'   , 'Ὤ'
   $ret = $ret -creplace '\)W'    , 'Ὠ'
   $ret = $ret -creplace 'X'      , 'Χ'
   $ret = $ret -creplace 'Y'      , 'Ψ'
   $ret = $ret -creplace 'Z'      , 'Ζ'

   $ret = $ret -creplace 'σ\b', 'ς'        # Final s

   $ret = $ret -creplace "'"  , "`’"
   $ret = $ret -creplace ":"  , "·"

   $ret
}
