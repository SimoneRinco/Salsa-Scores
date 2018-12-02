\version "2.18.2"

\header {
  title = "Me quedo contigo"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key g \minor
  \time 2/2
}



trumpetBb = \relative c'' {
  \global
  \compressFullBarRests  
  \transposition bes

  \partial 8 d8~ |
  d bes4 g8~ g4 r |
  r8 d g bes d4. ees8~ |
  ees8 bes4 g8~ g4 r |
  r8 ees g bes ees d c d~ |
  d bes4 f8~ f4 r |
  r8 f f f \tuplet 3/2 {bes4 d c~} |
  c8 a4. c4 c8 c~ |
  c8 bes4 c8 d4. d8~ |
  d bes4 g8~ g4 r |
  r8 d g bes d4. ees8~ |
  ees8 bes4 g8~ g4 r |
  r8 ees g bes ees d c d~ |
  d bes4 f8~ f4 r |
  r8 f f f bes4 d |
  f4. f8~ f r f f |
  r4 f fis2 |
  r4. g8~ g2~ |
  g2 r2 | 
  
  
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