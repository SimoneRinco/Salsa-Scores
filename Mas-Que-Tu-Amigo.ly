\version "2.18.2"

\header {
  title = "Mas Que Tu Amigo"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key c \minor
  \time 2/2  
}

trumpetBb = \relative c'' {
  \global
  \compressFullBarRests
  \transposition bes

  \mark \default
  R1*8 |
  \repeat volta 2
  {
    r8\f ees4-. ees8 g4-. ees8 g~ | g4. ees8( d4 c) |
    r8 d4-. d8 f4-. d8 f~ | f4. d8( c4 bes) |
    r8 c4-. c8 ees4-. c8 ees~ | ees4. c8( ees4 c |
  }
  \alternative {
    {d4)-. b8 g~ g2~\< | g2 r2\! |}
    {d'2 r8 g, b d | g4-> g4-> r2}
  }
  \bar "||"
  \mark \default
  R1*2 | r2 r8 aes,(\mf-> g aes-> | g8)-. r8 r4 r2 | R1*2 | r2 r8 aes\<( g aes | bes2 d | \bar "||"
  \mark \default
  ees2.\!)\f r4 | r1 | r1 | r8 f4-. ees8( d4 bes | c2.) r4 | r1 | r2 r8 g\< b d | g2\!\>-> f |
  ees2. r4\! | r1 | r1 | r8 d4-. ees8( f8 ees d4   | c2.) r4 | r1 | r2 r8 g b d | g4-> g4-> g4-> r | \bar "||"
  s1^\markup {\bold {B2}} |
  s1^\markup {\bold {C2}} |
  \mark \default
  r2 aes,8(\>\mf g f4)\! | r2 aes8 g f4 |
  r2 g8 f ees4 | r2 g8 f ees4 |
  r1 | r1 |
  r1 | r8 ees'4-.\< d8-. ees4( g |
  f4)-> r\! aes,8\mf g f4 | r2 aes8 g f4 |
  r2 g8 f ees4 | r2 g8 f ees4 |
  r1 | r1 |    
  r2 r8 c'8\ff ees g | c4-> c-> c-> r
  \bar "||"
  s1^\markup {\bold {A2}} |
  s1^\markup {\bold {B3}} |
  s1^\markup {\bold {C3}} |
  s1^\markup {\bold {D2}} |
  \bar "||"
  \mark \default
  R1*8 |
  r8\f ees,4 ees8 g4 ees8 g~ | g4. ees8 d4 c |
  r8 d4 d8 f4 d8 f~ | f4. d8 c4 bes |
  r8 c4 c8 ees4-. ees8( d~ | d2~ d8 ees d c~ | c1)\< | c'4->\!\ff c-> r2
  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  }
  \transpose a a { \trumpetBb }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}
