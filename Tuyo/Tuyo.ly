\version "2.18.2"

\header {
  title = "Tuyo"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key cis \minor
  \time 4/4
}

trumpetBb = \relative c' {
  \global
  \transposition bes
  \compressFullBarRests
  R1*10 \bar "||"
  R1*8 \bar "||"
  R1*8 \bar "||"
  r1 |
  gis'2.\p gis8 a | fis2 \tuplet 3/2 {fis4 gis a} | a2 gis2~ | gis2 \tuplet 3/2 {a4 gis fis} | fis2 e~ | e2 \tuplet 3/2 {fis4 e fis} |
  gis2.\< cis4 | bis2 \tuplet 3/2 {bis4 cis dis} | dis2\!\> cis2~ | cis2 bis2 | cis2. gis4 | a2. bis,4 | cis1 | r1\! | \bar "||"
  R1*10 | \bar "||"
  r8\mp gis'4 fis8 \tuplet 3/2 {e4 dis cis} | \tuplet 3/2 {dis dis e} fis2 | r8 dis4 e8 \tuplet 3/2 {fis4 dis fis} | \tuplet 3/2 {e4 e fis} gis2 |
  r8 gis4 fis8 \tuplet 3/2 {e4 dis cis} | \tuplet 3/2 {dis dis e} fis2 | r8 gis4 ais8 \tuplet 3/2 {bis4 cis dis} | \tuplet 3/2 {cis4 cis dis} e2 |
  r4 cis8 dis \tuplet 3/2 {eis4 fis gis} | \tuplet 3/2 {fis4 cis a} fis2 |
  r4 b8 cis \tuplet 3/2 {dis4 e fis} | \tuplet 3/2 {e4 b gis} e2 | r4 a8 b cis dis e cis | \tuplet 3/2 {dis4 cis a} fis2 |
  r4 a8 gis \tuplet 3/2 {fis4\prall e dis} | dis4. cis8 cis2 | r1 |
  gis'2 \tuplet 3/2 {a4 gis fis} | fis2 \tuplet 3/2 {\grace{fis8 gis} a4 gis fis} | a2\< gis4. bis8 | e2 dis4.\prall e8 |
  dis2 cis~ | cis fis | gis1 | a2.\!\> fis4 | gis2 \tuplet 3/2 {fis4 e dis} | cis2. bis4 | cis2 gis | a2. fis4 | gis1~ | gis4 r\! r2 |
  \bar "|."
  
  
  
  
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
