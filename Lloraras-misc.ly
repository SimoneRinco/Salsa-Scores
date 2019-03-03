\version "2.18.2"

\header {
  title = "Lloraras misc"
}

global = {
  \key a \minor
  \time 2/2
}

bass = \relative c {
  \global
  a'2 g4 f | e4. gis8~ gis4 a~ | a2
  
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic bass"
    instrumentName = "Bass"
  } { \clef "bass" \bass }
}
