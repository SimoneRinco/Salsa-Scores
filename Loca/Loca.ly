\version "2.18.2"

\header {
  title = "Loca"
}

global = {
  \key d \minor
  \time 2/2
  \compressFullBarRests
  \set Score.markFormatter = #format-mark-box-letters
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  \mark \default
  r8 d,\f d e f e f e | f e f e f e d4 | r8 d d e f e f e | f e f e f e d4 |
  r8 e e f g f g f | g f g f g f e4 | r8 e e f g f g f | g f g f g f e4 |
  r8 d d e f e f e | f e f e f e d4 | r8 d d e f e f e | f e f e f e d4 |
  r8 e e f g f g f | g f g f g f e4 | r8 e e f g f g f | g f g f g f e4 | \bar "||"
  R1*32 | \bar "||"
  \mark \default
  R1*4 |
  a1 | gis | g! | g2 f | e1 |
  R1*3 | \bar "||"
  | s1^"A2" | \bar "||"
  \mark \default
  r1 | r2. a4-> | r1 | r2. bes4-> | r1 | r2. a4-> | r1 | r1 |
  d1\mf | f1~ | f | d2 f | f1 | e1~ | e | a2 fis |
  \bar "||"
  \mark \default
  g2 r | R1*3 |
  a,1 | gis | g! | g2 f | e1 |
  R1*3 | \bar "||"
  R1*16 |
  | s1^"B2" |
  | s1^"A3" |
  r8 d d e f e f e | f4 r4 r2 |
  \bar "|."
}

altoSax = \relative c'' {
  \global
  \transposition es
  \mark \default
  r8 d,\f d e f e f e | f e f e f e d4 | r8 d d e f e f e | f e f e f e d4 |
  r8 e e f g f g f | g f g f g f e4 | r8 e e f g f g f | g f g f g f e4 |
  r8 f f g a g a g | a g a g a g f4 | r8 f f g a g a g | a g a g a g f4 | 
  r8 g g a bes a bes a | bes a bes a bes a g4 | r8 g g a bes a bes a | bes a bes a bes a g4 | \bar "||"
  R1*32 | \bar "||"
  \mark \default  
  R1*4 |
  d1 | cis | c! | b2 bes | bes1 |
  R1*3 | \bar "||"
  | s1^"A2" | \bar "||"
  \mark \default
  r1 | r2. f'4-> | r1 | r2. g4-> | r1 | r2. cis,4-> | r1 | r1 |
  f1\mf | a1~ | a | f2 a | bes1~ | bes | a1~ | a2 c |
  \bar "||"
  \mark \default  
  bes2 r | R1*3 |
  d,1 | cis | c! | b2 bes | bes1 |
  R1*3 | \bar "||"
  R1*16 |
  | s1^"B2" |
  | s1^"A3" |
  r8 d d e f e f e | f4 r4 r2 |
  \bar "|."
}

trumpetBbPart = \new Staff \with {
  instrumentName = "Trumpet in Bb"
  midiInstrument = "trumpet"
} \trumpetBb

altoSaxPart = \new Staff \with {
  instrumentName = "Alto Sax"
  midiInstrument = "alto sax"
} \altoSax

\score {
  <<
    \trumpetBbPart
    \altoSaxPart
  >>
}

\score {
  <<
    \transpose a b { \trumpetBbPart }
  >>
}

\score {
  <<
    \transpose a fis' { \altoSaxPart }
  >>
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}

\paper {
  page-breaking = #ly:page-turn-breaking
}
