\version "2.18.2"

\header {
  title = "Lagrimas negras"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key c \major
  \time 2/2
}

electricBass = \relative c, {
  \global
  \mark \default
  \partial 4 a4~ |
  a4. e'8~ e4 a,4~ |
  a4. e'8~ e4 d~ |
  d4. f8~ f4 b,~ |
  b4. f'8~ f4 e4~ |
  e4. b8~ b4 e~ |
  e4. gis,8~ gis4 e8 a~ |
  a4. e8~ e4 a~ |
  a4. e'8~ e4 a~ |
  a4. e8~ e4 a,4~ |
  a4. e'8~ e4 d~ |
  d4. a'8~ a4 d,8 a' |
  b4. b,8~ b4 e4~ |
  e4. b8~ b4 e4~ |
  e4. b8~ b4 a |
  r8 e'8 d c b gis b e,~ |
  e8 e4.~ e2 | \bar "||"
  \mark \default
  <<
  {a1 | a1 }
      \new Staff \with {
      \clef "bass_8"
      \hide Clef
      \remove "Time_signature_engraver"
      alignAboveContext = #"main"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
    }
    {
      a4.^"Whole note expands to I-V, for example" e'8~ e4 a |
      a,4. e'8~ e4 a8 a |
    }
  >>
  a,1 |
  d1 |
  d4 d f fis |
  g1 |
  g1 |
  c,1 |
  b4 b' e, e'8 e |
  a,1 |
  a1 |
  d,1 |
  d1 |
  a1 |
  a1 |
  b4 b'8 f~ f4 b |
  e,1 |
  a,1 |
  a4 e' c a | \bar "||"
  \mark \default
  a4^\segno a e' e |
  a a d, dis |
  e e8 b'~ b b b,4 |
  e e b' b, |
  e e8 b~ b b dis4 |
  e4 e, fis gis |
  a c e c'8 b |
  a4 a8 e~ e e c4 |
  a4 c e cis |
  cis e a, e' |
  d4 a d e |
  f fis g gis |
  a e a, c |
  b2 e,2 |
  r8 e' d c b gis b e,~ |
  e8 e4.~ e2^"Fine" | \bar "||"
  \mark \default
  a'1 |
  a |
  d, |
  d4 d f fis |
  g1 |
  g1 |
  c,1 |
  c1 |
  b^"5#" |
  b^"5#" |
  e1 |
  d |
  a |
  a |
  b |
  e4 d c b |
  a4. e8~ e2 |
  \repeat volta 7 {
  \mark "Chorus 1"
  a4. e'8~ e4 a,~ |
  a4. d8~ d4 e~ |
  e4. b'8 b4 e,~ |
  e4. b'8~ b4 d,4~ |
  d4. g8~ g4 c,4~ |
  c4. f8~ f4 b,~ |
  b4. e8~ e4 a,4~ |
  }
  \alternative {
    {a4. e'8~ e4 a, |}
    {a8 c e g fis4 a,8 a |}
  }
  r1 |
  f'8 f d f~ f4 e~ |
  e4. b8~ b4 e4~ |
  e4. b8~ b4 d4~ |
  d4. g8~ g4 c,4~ |
  c4. f8~ f4 b,~ |
  b4. e8~ e4 a,4~ |    
  a4. e'8~ e4 a,~ |
  \repeat volta 2 {
  a4. e'8~ e4 a,~ |
  a4. d8~ d4 e~ |
  e4. b'8 b4 e,~ |
  e4. b'8~ b4 d,4~ |
  d4. g8~ g4 c,4~ |
  c4. f8~ f4 b,~ |
  b4. e8~ e4 a,4~ |
  a4. e8~ e4 a4 |
  }
  \mark #7
  \key a \major
  a'4. e8~ e4 cis'4 |
  a4. e8~ e4 cis'4 |
  b4. fis8~ fis4 b |
  b,4. fis'8~ fis4 b |
  d,4. a'8~ a4 d |
  g,4 r r2 |
  a4. e8~ e2 |
  a,4. e'8~ e4 e |
  \mark \default
  \key a \minor
  \repeat volta 2 {
  a,4.^"Chorus 2" d8 d4 e~ |
  e4. b'8~ b4 e,~ |
  e4. e'8 e4 a,4~ |
  a4. e8~ e4 a, |
  }
  a4. d8 d4 e~ |
  e4. e,8~ e4 e^"D.S." | \bar "||"
  
  
  
}

\score {
  \new Staff \with {
    midiInstrument = "electric bass (finger)"
    instrumentName = "Bass"
  } { \clef "bass_8" \electricBass }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}


