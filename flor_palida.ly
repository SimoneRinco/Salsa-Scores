\version "2.18.2"

\header {
  title = "Flor Palida"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key g \major
  \time 2/2
}

trumpetBb = \relative c' {
  \global
  \compressFullBarRests
  \transposition bes
  R1*32 |
  \repeat volta 2 {
  \mark \default
  g1\mp( | a2 b | a1~\> | a1) | a1\!( | b2 c | b1~\> | b1) | c1~\!( | c2 a | b1~ | b2 d | c1 | a1 | b2) r | g''4\f-> r8 g( fis4->) r8 fis( | \bar "||"
  \mark \default
  e4)-> r4 r2 | r1 | r1 | r4 r8 fis-^ fis-^ fis-^ fis-^ g-^ | r1 | r1 | r2 r4 r8 fis~-. | fis8 e4-. d-. b-. c8~( | c1~ | c2 d | b1~ | b2 d |
  cis1\< | e2 g | g1 | fis4) r\! fis4.-> g8~-> | \bar "||"
  \mark \default
  g4 r r2 | r1 | r1 | r4 r8 fis-^ fis-^ fis-^ fis-^ g-^ | r1 | r1 | r2 r4 r8 fis~-. | fis8 e4-. d-. b-. c8~( | c1~\> | c2 d | b1~ | b2 c |
  a1~ |
  }
  \alternative {
    {a2 b | a1 | g | R1*16\!) |}
    {a1~\>}
  }
  a1 | r1\!\fermata | \bar "||"
  \mark \default
  R1*3 | r4 r8 d( g4 d8 g~ | \bar "||"
  g8)-. a4-. b8~-. b4. c8~-> | c4 r r2 | r1 | r4 r8 d, g4 d8 g~ | \bar "||"
  g8 a4 b8~ b4. g8~ | g4 r r2 | r1 | r4 r8 d g4 d8 g~ | \bar "||"
  g8 a4 b8~ b4. c8~ | c4 r r2 | r1 | r4 r8 d, g4 d8 g~ | \bar "||"
  g8 a4 b8~ b4. g8~ | g4 r r2 | r1 | r2 b-> | \bar "||"
  \mark \default
  R1*7 | r2 r4 r8 b,,8~\mf-. | \bar "||"
  b a4-. g-. g-. c8~-. | c8 b( a4) r4 r8 a~ | a g4 fis fis b8~ | b a g4 r4 r8 b8~ |
  b a4 g g c8~ | c8 b a4 r4 r8 a~-. | a g4-. fis8~( fis4. g8~ | g4) d'2( b4~ | \bar "||"
  b4 d2 c4~ | c d2 a4~ | a4 d2 b4~ | b4) d2( b4~ | \bar "||"
  b4 d2 c4~ | c d2 a4~ | a4 d2 b4~ | b4) d'2\f( b4~ |
  \repeat volta 2 {b4 d2 c4~ | c d2 a4~ | a4 d2 b4~ | b4) d2( b4~ | }
  b4 d2 c4~ | c) r4 r2 | g4\ff g8 fis8~ fis fis g4 | \bar "|."
  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  } \transpose a b { \trumpetBb }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
