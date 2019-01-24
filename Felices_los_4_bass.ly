\version "2.18.2"

\header {
  title = "Felices los 4"
}

global = {
  \key d \minor
  \time 2/2
}

electricBass = \relative c {
  \global
  r1 | r1 | d4 a d,2~ | d2 f, | \repeat volta 2 {g2 r | g2 r | c2 r | c2 a } | g4. g8 r2 | g4. g8 r2 | c4. c8 r2 | c4. c8 r2 | f,4. f8 r2 | f4. f8 r2 | d'4. a8~ a4 d4~ | d2 r | \bar "||"
  g,1~ | g | c~ | c | f,~ | f | d'~ | d |
  g,2. g4~ | g2 bes | c2. c4~ | c2 e | f2. f4~ | f2 e | d1~ d |
  \repeat volta 2 {
    g,4.^"[CUMBIA (C)]" d'8~ d4 f | g4. g,8~ g4 d' | c4. e,8~ e4 g | c4. e8~ e4 e,8 g | f4. a8~ a4 c | f4. a,8~ a4 c | }
  \alternative {
    {d4. a'8~ a4 c | d4. a8~ a4 d,8 f | }
    {d4. a'8~ a4 d, | r1 |} \bar "||"
  }
  \repeat volta 2 {
    g,4.^"[SALSA (S)]" d'8 d4 g, | r4. g8 bes4 c | r4. c8~ c e, g4 | r4. c8 c4 f, | r4. a8 c4 f | }
  \alternative {
    {r4. a,8 c4 d | r4. f8 d4 f,8 g~ | g f g c d g d f, | }
    {r4. a'8~ a f d4 | r4. a8 c4 d8 d~ | d4 c bes a | }
  } \bar "||"
  g4. d'8~ d4 d | g,4. d'8~ d4 g | c,4. e,8~ e4 g | c2. c4 | f,4. a8~ a4 c | f4. a,8~ a4 c | d4. a'8~ a4 a | d,4. c8~ c4 d |
  \repeat volta 2 {g,4. d'8~ d4 f | g4. g,8~ g4 d' | c1~ | c1 | f,4. a8~ a4 c | f4. a,8~ a4 c | d1~ | d}
  s1^"[C]" | \bar "||"
  s1^"[C]" | \bar "||"
  s1^"[S (6 bars)]" | d4 d d d | d c c c \bar "||"
  bes4. bes8~ bes4 bes | r1 | c4. e,8~ e4 g | g'4. bes,8~ bes4 c | f,4 c'8 a~ a4 c | f4. a,8~ a4 c | d4 d8 f,~ f4 a | d4. c8~ c4 c | \bar "||"
  bes4. d8~ d4 f | g4. g,8~ g4 g' | c,4 c8 e,~ e4 g | c4. e8~ e4 c | f4. a,8~ a4 c | f4. a,8~ a4 c | d4. a'8~ a4 a, | d4 r d8 f,8 f4 | \bar "||"
  s1^"[C]" | s1^"[C]" | s1^"[S]" | s1^"[S]" | s1^"[C]" \bar "||"
  g1~ | g2. d'4 | c1~ | c | f,~ | f2. c'4 | d1~ | d2. f,4 | \bar "||"
  g1~ | g1 | c1~ | c1 | f1~ | f1 | d1~ | d1 \bar "|."
  
}

\score {
  \new Staff \with {
    midiInstrument = "electric bass (finger)"
    instrumentName = "Electric bass"
  } { \clef "bass_8" \electricBass }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
