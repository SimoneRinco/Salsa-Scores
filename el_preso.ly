\version "2.18.2"

\header {
  title = "El preso"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key c \minor
  \time 2/2
}

part_d = \relative c'' {
  r8 d8\f ees f aes f d c~ |
  c4. g'8 bes4. d,8~ |
  d4. f8 aes4. g8~ |
  g2 r |
}

part_e = \relative c'' {
  r8 f,4\mf d8 g g4 c,8~ |
  c4 r8 c g' f ees f~ |
  f ees d ees~ ees d c b~ |
  b2 r |
  f'4 r8 d g g4 c,8~ |
  c4 r8 c c d ees f~ |
  f ees d ees~ ees d c b~ |
  b2 r |
}

trumpetBb = \relative c'' {
  \global
  \compressFullBarRests  
  \transposition bes
  R1*16 |
  \mark \default
  \repeat volta 2 {
  \tuplet 3/2 2 {r4\f b c d c b } |
  c4. ees8~ ees ees4 d8~ |
  d4. d8 c8 d4 c8~ |
  c4 b2 r4 |
  \tuplet 3/2 2 {r4 b c d c b } |
  c4. ees8~ ees g4 f8~ |
  f4. f8 ees8 f4 es8~ |
  ees4  d2 r4 |
  }
  \mark \default
  \repeat volta 2 {
  r4 aes'8\ff g f g4 ees8~ |
  ees4 r8 c8 ees4 r8 g |
  f4 r8 f ees4 r8 ees |
  }
  \alternative {
    {d2. r4 | }
    {d4 r8 g~\< g2~ |g2. r4\! | }
  }
  R1*3 |
  R1*12 |
  R1*12 |
  R1*3 |
  r2 r4 b,4~\f |
  \mark \default
  b2 aes4. aes8~ |
  aes4 g4~ g4 r |
  r g c4. c8~ |
  c4 b4~ b4 r |
  r8 aes8~ aes4 g4 f |
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
  aes g8~ g2 r4 \bar "||"
  R1*8 |
  \mark \default
  
  \repeat volta 2 {
    \part_d
  }
  \mark \default
  \part_e
  \bar "||"
  % chorus 1a
  R1*16 |
  % chorus 2a
  R1*14
  r4 r8 f''\ff f f f4 | \bar "||"
  r8 f f f f4 r |
  R1*15 |
  \mark \default
  \repeat volta 2 {
    \part_d
  }
  \mark \default
  \part_e
  g,8\ff g4 g8 g4 c4~-> | c4 r4 r2 \bar "|."
  
  
  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  }
    
  \transpose c d { \trumpetBb }
  
  %\midi {\tempo 2=88}   

}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}





