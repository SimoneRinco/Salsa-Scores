\version "2.18.2"

\header {
  title = "Lagrimas negras"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key a \minor
  \time 2/2
}

trumpetBb = \relative c' {
  \global
  \compressFullBarRests  
  \transposition bes
  
  % A
  \mark \default
  r4 r8 e c' c c c |
  c4 b8 a~ a gis a4 |
  r4 r8 e a a a a |
  a4 g8 f~ f e f4 |
  r4 r8 d e f e d |
  e4 dis8 e~ e dis e4 |
  r4 r8 e gis b d f |
  e4 d8 c~ c b a \acciaccatura b8 c~ |
  c4 r8 e, c' c c c |
  c4 b~\prall b8 a gis a~ |
  a e 4 e8 a a a a |
  a4 g8 f~ f e f4 |
  r4 r8 d e f e d |
  e4 dis8 e~ e dis e4 |
  r4 r8 e gis b d f |
  e4 d8 c~ c b a4 |
  r8 e' d c b gis b g'~ |
  g8 g4.~ g2 |
  
  % B
  \mark \default
  %R1*6 |
  r2 r8 c, b a |
  gis4 a b2 |
  %R1*9 |
  
  % C
  \mark \default
  r8 e, dis e f e c' b |
  a4 r r8 e c b |
  a b c d e f e d |
  e4. b8~ b4 r4 |
  r8 e dis e f e b' a |
  gis4 r4 r8 \acciaccatura ais8 b4 a8 |
  gis4 r8 e f e d e |
  d4 r8 c~ c4 r |
  r8 e dis e f e c' b |
  a4 r r8 a gis a |
  bes a gis a bes a g a |
  \acciaccatura fis8 g4. f8~ f4 r |
  \tuplet 3/2 2 {r4 \acciaccatura cis8 d4 e f e d} |
  e4 r8 e dis e a c |
  b2 a4 r |
  r8 e' d c b gis b g'~ |
  g g4.~ g2 |
  
  % D
  \mark \default
  %R1*7 |
  r2 r8 c, a ais |
  b2 r |
  %R1*6 |
  e4 d c b |
  a r8 e'~ e2 |
  
  % E
  \mark \default
  r2 \tuplet 3/2 {a,4 c e} |
  a2 \acciaccatura gis8 a8 gis a gis |
  r8 a e c~ c r r \acciaccatura e f~ |
  f e d \acciaccatura b c~ c b a gis~ |
  gis e4 r8 r4 r8 \acciaccatura e'8 f~ |
  f d d e r f d e |
  r c c d r e r c |
  d c b a gis b4 a8~ |
  a4. e'8~ e2~ |
  e2. r4 |
  %R1*32 |
  %R1*7 |
  
  
  % F
  \mark \default
  a,8 c e g fis4 a8 a~ |
  a4 r r2 |
  c,8 d b a~ a4 gis8 gis~ |
  gis4 r r2 |
  %R1*4 |
  r2. r8 \acciaccatura gis8 a~ |
  a c e e r c a d~ |
  d4 r r r8 \acciaccatura cis8 d~ |
  d c b c \tuplet 3/2 {d4 f e~} |
  e8 b gis4 r r8 f'~ |
  f d d e r f a g~ |
  g4 r8 e~ e a gis b~ |
  b gis4 e8~ e e e d~ |
  d c4 a8~ a2 |
  %R1*8 |
  
  % G
  \mark \default
  \key a \major
  R1*2 |
  r2. r8 b~ |
  b cis4 d8 cis b4 f8~ |
  f1~ |
  f8 g4 a8 g f4 e8~ |
  e1~ |
  e1
  \key a \minor
  
  % H
  \mark \default
  %R1*3 |
  r2 r8 e a c |
  \acciaccatura dis8 e4 c8 a~ a4 r8 f'8~ |
  f d4 b8~ b a gis4~ |
  gis8 \acciaccatura fis'8 g4 f8 r e d e~ |
  e c4 a'8~ a2~ |
  a2 r |
  
  %R1*7 |
  %R1*16 |
  %R1*8 |

  % J
  \mark \default
  e4 c a4 r8 g'8~ |
  g f4 b,8~ b4 r |
  R1*2 |
  e4 c a4 r8 g'8~ |
  g f4 b,8~ b4 r |
  r1 |
  \tuplet 5/4 {e8 f e dis e} a4 r |
  \tuplet 5/4 {e8 f e dis e~} e8 g e f~ |
  f d b a gis a b gis |
  a4 r r2 |
  r8 e' a b c b a gis |
  a b4 gis8 a4 r8 e |
  f d b a gis a b c |
  d dis e2.~ |
  e1 |  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  }
  \transpose a a { \trumpetBb }
  \layout { }
  \midi {
    \tempo 2=84
  }
}
