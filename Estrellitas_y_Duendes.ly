\version "2.18.2"

\header {
  title = "Estrellitas y Duendes"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key d \major
  \time 2/2
}

trumpetBb = \relative c' {
  \global
  \transposition bes
  \mark \default
  d2\p cis | b d | cis b | a cis | e b | d cis4 b | a2 cis | b a4 g | fis4. a8 d\< e fis g | e2\! d8 cis d e | \bar "||"
  \mark \default
  fis2\mp g | a fis4 d' | cis2 d | e a, | b \tuplet 3/2 {a4 g fis} | e4\< fis g gis | a2 b4\> a | g2 \grace  {a16 g} fis4 e | d2 r2\! | r1 | \bar "||"
  \mark \default
  b4.\mp cis8~ cis2 | b4. cis8~ cis2 | cis4. d8~ d2 | fis e8 d cis d | b4. cis8~ cis2 | b4. cis8~ cis4 a8 cis | d2 r2 | \grace {b16 cis d} dis4.\< b8 b' a gis fis |
  \mark \default
  \key e \major
  e2\!\mf fis | gis b | cis1~\< | cis2\> b | a\! gis | a \tuplet 3/2 {fis4\< gis ais} | b2\! dis4 cis8 b | a2 cis4 b8 a |
  gis2 e8\< fis gis a | fis gis a ais b cis dis b |
  \mark \default
  e2.\!\mf b4 | dis2. b4 | cis2. dis4 | b2 fis | a2. gis4 | a2 ais2 | b2 dis4 cis8 b | a2 a4 gis8 fis | e2 r2 | r1 |
  \mark \default
  \repeat volta 2 {
  cis4.\mp dis8~ dis2 | cis4. dis8~ dis2 | dis4. e8~ e2 | gis2 fis8 e dis e |
  cis4. dis8~ dis2 | cis4. dis8~ dis4 b8 dis | e2 r2 | r1 |
  }
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  }
  \transpose a b { \trumpetBb }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}
