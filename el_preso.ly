\version "2.18.2"

\header {
  title = "El preso"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key c \minor
  \time 2/2
}

part_d_trumpet = \relative c'' {
  r8 d8\f ees f aes f d c~ |
  c4. g'8 bes4. d,8~ |
  d4. f8 aes4. g8~ |
  g2 r |
}

part_d_sax = \relative c'' {
  r8 b8\f c d f d b c~ |
  c4. c8 c4. aes8~ |
  aes4. aes8 c4. b8~ |
  b2 r |
}

part_d_trombone = \relative c'' {
  \clef tenor
  r8 g8\f f d b d f ees~ |
  ees4. ees8 ees4. f8~ |
  f4. f8 f4. g8~ |
  g2 r |
}


part_e_trumpet = \relative c'' {
  r8 f,4\mf d8 g g4 c,8~ |
  c4 r8 c g' f ees f~ |
  f ees d ees~ ees d c b~ |
  b2 r |
  f'4 r8 d g g4 c,8~ |
  c4 r8 c c d ees f~ |
  f ees d ees~ ees d c b~ |
  b2 r |
}

part_e_sax = \relative c'' {
  r8 d,4\mf b8 b b4 c8~ |
  c4 r8 c ees d c d~ |
  d c b c~ c b aes g~ |
  g2 r |
  d'4 r8 b b b4 c8~ |
  c4 r8 c c d c d~ |
  d c b c~ c b aes g~ |
  g2 r |
}

part_e_trombone = \relative c' {
  \clef bass
  r8 f,4\mf g8 g f4 ees8~ |
  ees4 r8 ees c f g f~ |
  f g aes g~ g d f g~ |
  g2 r |
  f4 r8 g g f4 ees8~ |
  ees4 r8 ees ees f g f~ |
  f g aes g~ g d f g~ |
  g2 r |
}


trumpetBb = \relative c'' {
  \global
  \compressFullBarRests  
  \transposition bes
  R1*16 |
  \mark \default
  \repeat volta 2 {
  \tuplet 3/2 2 {r4\f b( c d c b } |
  c4.) ees8~ ees ees4 d8~ |
  d4. d8 c8 d4 c8~ |
  c4 b2 r4 |
  \tuplet 3/2 2 {r4 b c d c b } |
  c4. ees8~ ees g4 f8~ |
  f4. f8 ees8 f4 ees8~ |
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
    \part_d_trumpet
  }
  \mark \default
  \part_e_trumpet
  \bar "||"
  % chorus 1a
  R1*16 |
  % chorus 2a
  R1*14
  r4 r8 g''\ff g g g4 | \bar "||"
  r8 g g g g4 r |
  R1*15 |
  \mark \default
  \repeat volta 2 {
    \part_d_trumpet
  }
  \mark \default
  \part_e_trumpet
  g8\ff g4 g8 g4 c4~-> | c4 r4 r2 \bar "|." 
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}


altoSax = \relative c' {
  \global
  \compressFullBarRests  
  \transposition bes
  R1*16 |
  \mark \default
  \repeat volta 2 {
  \tuplet 3/2 2 {r4\f f( g f g f } |
  ees4.) g8~ g g4 aes8~ |
  aes4. aes8 g8 aes4 g8~ |
  g4 g2 r4 |
  \tuplet 3/2 2 {r4 f g f g f } |
  ees4. c'8~ c ees4 d8~ |
  d4. d8 c8 d4 c8~ |
  c4  b2 r4 |
  }
  \mark \default
  \repeat volta 2 {
  r4 f'8\ff ees d ees4 c8~ |
  c4 r8 g8 c4 r8 ees |
  d4 r8 d c4 r8 c |
  }
  \alternative {
    {b2. r4 | }
    {b4 r8 b~\< b2~ |b2. r4\! | }
  }
  R1*3 |
  R1*12 |
  R1*12 |
  R1*3 |
  r2 r4 d,4~\f |
  \mark \default
  d2 d4. d8~ |
  d4 ees4~ ees4 r |
  r ees g4. g8~ |
  g4 g4~ g4 r |
  r8 f8~ f4 ees4 d |
  b8 c d c b4 d8 ees |
  f ees d4 d8 ees f ees |
  d8 f4 r8 r4 aes8 g |
  r aes g r aes g r4 |
  b,8 c d c b4 d8 ees |
  f ees d4 d8 ees f ees |
  d4 r8 d~ d f4 ees8~ |
  ees4 r8 ees d d r c~ |
  c4 r8 c b b r c~ |
  c4 r8 c b aes r f~ |
  f f8~ f2 r4 \bar "||"
  R1*8 |
  \mark \default
  
  \repeat volta 2 {
    \part_d_sax
  }
  \mark \default
  \part_e_sax
  \bar "||"
  % chorus 1a
  R1*16 |
  % chorus 2a
  R1*14
  r4 r8 b'\ff b b b4 | \bar "||"
  r8 b b b b4 r |
  R1*15 |
  \mark \default
  \repeat volta 2 {
    \part_d_sax
  }
  \mark \default
  \part_e_sax
  b8\ff b4 b8 b4 c4~-> | c4 r4 r2 \bar "|." 
}

trombone = \relative c' {
  \global
  \compressFullBarRests  
  \transposition bes
  R1*16 |
  \mark \default
  \repeat volta 2 {
  \tuplet 3/2 2 {r4\f d( ees f ees d } |
  c4.) ees8~ ees ees4 f8~ |
  f4. f8 ees8 f4 ees8~ |
  ees4 d2 r4 |
  \tuplet 3/2 2 {r4 d ees f ees d } |
  c4. g'8~ g g4 aes8~ |
  aes4. aes8 g8 aes4 g8~ |
  g4 f2 r4 |
  }
  \mark \default
  \repeat volta 2 {
  r4 f8\ff g aes g4 g8~ |
  g4 r8 ees8 g4 r8 g |
  aes4 r8 aes g4 r8 g |
  }
  \alternative {
    {f2. r4 | }
    {f4 r8 f~\< f2~ |f2. r4\! | }
  }
  R1*3 |
  R1*12 |
  R1*12 |
  R1*3 |
  r2 r4 \clef bass g,4~\f |
  \mark \default
  g2 b4. b8~ |
  b4 c4~ c4 r |
  r c ees4. ees8~ |
  ees4 d4~ d4 r |
  r8 b8~ b4 c4 d |
  d,8 ees f g aes4 f8 g |
  aes g f4 f8 g aes g |
  f8 aes4 r8 r4 c8 b |
  r c b r c b r4 |
  d,8 ees f g aes4 f8 g |
  aes g f4 f8 g aes g |
  f4 r8 aes~ aes b4 c8~ |
  c4 r8 c aes aes r g~ |
  g4 r8 g f f r ees~ |
  ees4 r8 ees d f r d~ |
  d d8~ d2 r4 \bar "||"
  R1*8 |
  \mark \default
  
  \repeat volta 2 {
    \part_d_trombone
  }
  \mark \default
  \part_e_trombone
  \bar "||"
  % chorus 1a
  R1*16 |
  % chorus 2a
  R1*14
  r4 r8 \clef tenor f'\ff f f f4 | \bar "||"
  r8 f f f f4 r |
  R1*15 |
  \mark \default
  \repeat volta 2 {
    \part_d_trombone 
  }
  \mark \default
  \part_e_trombone
  \clef tenor
  f8\ff f4 f8 f4 ees4~-> | ees4 r4 r2 \bar "|." 
}


trumpetBbPart = \new Staff \with {
  instrumentName = "Trumpet Bb"
  midiInstrument = "trumpet"
} \trumpetBb

altoSaxPart = \new Staff \with {
  instrumentName = "Alto Sax"
  midiInstrument = "alto sax"
} \altoSax

trombonePart = \new Staff \with {
  instrumentName = "Trombone"
  midiInstrument = "trombone"
} { \clef tenor \trombone }

\bookpart {
\score {
  <<
    \trumpetBbPart
    \altoSaxPart
    \trombonePart
  >>
}
}

\bookpart {
\score {
  <<
    \transpose a b { \trumpetBbPart }
  >>
}
}

\bookpart {
\score {
  <<
    \transpose a fis' { \altoSaxPart }
  >>
}
}

\bookpart {
\score {
  <<
    \transpose a a { \trombonePart }
  >>
}
}





