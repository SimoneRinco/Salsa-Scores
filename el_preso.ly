\version "2.18.2"

\header {
  title = "El preso"
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
  \repeat volta 2 {
  \tuplet 3/2 2 {r4 b c d c b } |
  c4. ees8~ ees ees4 d8~ |
  d4. d8 c8 d4 c8~ |
  c8 b8~ b2 r4 |
  \tuplet 3/2 2 {r4 b c d c b } |
  c4. ees8~ ees g4 f8~ |
  f4. f8 ees8 f4 es8~ |
  ees8 d8~ d2 r4 |
  }
  \mark \default
  \repeat volta 2 {
  r4 aes'8 g f g4 ees8~ |
  ees4 r8 c8 ees4 r8 g |
  f4 r8 f ees4 r8 ees |
  d2. r4 |
  }
  \alternative {
    {d2. r4 | }
    {d4 r8 g~ g2 \bar "||" }
  }
  r2 r4. b,8~ |
  \mark \default
  b2 aes4. aes8~ |
  aes g4.~ g4 r |
  r g c4. c8~ |
  c b4.~ b4 r |
  r8 aes4. g4 f |
  b,8 c d ees f4 d8 ees |
  f g aes4 aes8 g f ees |
  d8 f4 r8 r4 aes8 g |
  r aes g r aes g r4 |
  b,8 c d ees f4 d8 ees |
  f g aes4 aes8 g f ees |
  d4 r8 f~ f aes4 g8~ |
  g4 r8 g f f r ees~ |
  ees4 r8 ees d d r c~ |
  c4 r8 c b d r aes~ |
  aes g8~ g2 r4 |
  \mark \default  
  \repeat volta 2 {
  r4 d''8 ees f aes f d |
  c2 g'8 bes4 r8 |
  d,2 f8 aes4 r8 |
  g2 r |
  }
  \mark \default
  r8 f,4 d8 g g4 c,8~ |
  c4 r8 c g' f ees f~ |
  f ees d ees~ ees d c b~ |
  b2 r |
  f'4 r8 d g g4 c,8~ |
  c4 r8 c c d ees f~ |
  f ees d ees~ ees d c b~ |
  b2 r | \bar "||"
  
  
  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  }
    
  \transpose c d { \trumpetBb }
  
  \midi {\tempo 2=88}   

}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}





