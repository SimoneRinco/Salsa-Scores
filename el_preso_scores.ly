\version "2.18.2"

global = {
  \key c \minor
  \time 2/2
}

bass_one = \relative c, {
  \global
  \partial 4 g4~ | g b d4. c8~ | c4. ees8~ ees4 f~ | f aes f4. g8~ | g4. d8~ d4 g,~ | g4
  
}

bass_two = \relative c, {
  \global
  \partial 4 g4~ | g4. d'8~ d4 c~ | c4. g'8~ g4 f~ | f4. aes8~ aes4 g4~ | g4. d8~ d4 g,4 |  
}

bass_break = \relative c, {
  \global
  \partial 4 g'4~ | g4 r8 g g g g4 |
}

bass_chorus_two = \relative c, {
  \global
  r8 g' g g g4 c,~ | c4. c8~ c4 f~ | f4. f8~ f4 g~ | g4. d8~ d4 g~ | \break
  g4. g8~ g4 c,~ | c4. c8~ c4 f~ | f4. d8~ d4 g~ | g4. d8~ d4 g8 g | \break
  d'4 d d c,4~ | c4. c8~ c4 f~ | f4. f8~ f4 g~ | g4. d8~ d4 g~ | \break
  g4. g8~ g4 c,~ | c4. c8~ c4 f~ | f4. d8~ d4 g~ | g4. d8~ d4 g,4~ |
  
}

link_campana = \drummode {
  \global
  \partial 8 boh8 | boh4 boh bol8 bol r boh~ | boh boh boh4 bol8 bol r boh |
}


\score {
  \new Staff \with {
    midiInstrument = "acoustic bass"
    instrumentName = "Bass"
  } { \clef "bass_8" \bass_one }
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic bass"
    instrumentName = "Bass"
  } { \clef "bass_8" \bass_two }
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic bass"
    instrumentName = "Bass"
  } { \clef "bass_8" \bass_break }
}

\score {
  \new Staff \with {
    midiInstrument = "acoustic bass"
    instrumentName = "Bass"
  } { \clef "bass_8" \bass_chorus_two }
}

\score {
  \new DrumStaff \with {
    drumStyleTable = #bongos-style
    \override StaffSymbol #'line-count = #2
  } \link_campana
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}
