\version "2.18.2"

\header {
  title = "Flor Palida"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key g \major
  \time 2/2
}

trumpetBb = \relative c' {
  \global
  \compressFullBarRests
  \transposition bes
  R1*32 |
  \repeat volta 2 {
  \mark \default
  g1\mp( | a2 b | a1~\> | a1) | a1\!( | b2 c | b1~\> | b1) | c1~\!( | c2 a | b1~ | b2 d | c1 | a1 | b2) r |
  \mark \default
  g''4\f-> r8 g( fis4->) r8 fis( | \bar "||"
  e4)-> r4 r2 | r1 | r1 | r4 r8 fis-^ fis-^ fis-^ fis-^ g-^ | r1 | r1 |
  r2 r4 r8 fis~-. | fis8 e4-. d-. b-. c8~( | c1~ | c2 d | b1~ | b2 d |
  cis1\< | e2 g | g1 |
  \mark \default
  fis4) r\! fis4.-> g8~-> | \bar "||"
  g4 r r2 | r1 | r1 | r4 r8 fis-^ fis-^ fis-^ fis-^ g-^ | r1 | r1 | r2 r4 r8 fis~-. | fis8 e4-. d-. b-. c8~( | c1~\> | c2 d | b1~ | b2 c |
  a1~ |
  }
  \alternative {
    {a2 b | a1 | g | R1*16\!) |}
    {a1~\>}
  }
  a1 | r1\!\fermata | \bar "||"
  \mark \default
  R1*3 | r4 r8 d( g4 d8 g~ | \bar "||"
  g8)-. a4-. b8~-. b4. c8~-> | c4 r r2 | r1 | r4 r8 d, g4 d8 g~ | \bar "||"
  g8 a4 b8~ b4. g8~ | g4 r r2 | r1 | r4 r8 d g4 d8 g~ | \bar "||"
  g8 a4 b8~ b4. c8~ | c4 r r2 | r1 | r4 r8 d, g4 d8 g~ | \bar "||"
  g8 a4 b8~ b4. g8~ | g4 r r2 | r1 | r2 b-> | \bar "||"
  \mark \default
  R1*8 \bar "||"
  R1*3 | r4 d,,2( b4~ | \bar "||"
  b4 d2 c4~ | c d2 a4~ | a4 d2 b4~ | b4) d2( b4~ | \bar "||"
  b4 d2 c4~ | c d2 a4~ | a4 d2 b4~ | b4) d'2\f( b4~ | \bar "||"
  b4 d2 c4~ | c d2 a4~ | a4 d2 b4~ | b4) d2( b4~ |
  b4 d2 c4~ | c d2 a4~ | a4 d2 b4~ | b1)
  \repeat volta 2 {
    R1*4
  }
  R1*2 |
  g4\ff g8 fis8~ fis fis g4 | \bar "|."
  
}

altoSax = \relative c'' {
  \global
  \compressFullBarRests
  \transposition es
  R1*32 |
  \repeat volta 2 {
  \mark \default
  R1*15 |
  \mark \default
  b4\f-> r8 b( a4->) r8 a( | \bar "||"
  g4)-> r4 r2 | r1 | r1 | r4 r8  dis'-^ dis-^ b-^ a-^ g-^ | r1 | r1 |
  r2 r4 r8 a~-. | a8 g4-. fis-. d-. e8~( | e1~ | e2 g | d1~ | d2 g |
  e1\< | g2 cis | d1~ |
  \mark \default
  d4) r\! dis4.-> e8~-> | \bar "||"
  e4 r4 r2 | r1 | r1 | r4 r8  dis-^ dis-^ b-^ a-^ g-^ | r1 | r1 |
  r2 r4 r8 a~-. | a8 g4-. fis-. d-. e8~( | e1~ | e2 g | d1~ | d2 e |
  c1~ |
  }
  \alternative {
    {c2 d | c1 | b | R1*16\!) |}
    {c1~\>}
  }
  c1 | r1\!\fermata | \bar "||"
  \mark \default
  R1*3 | r4 r8 g'( b4 g8 b~ | \bar "||"
  b8)-. d4-. d8~-. d4. e8~-> | e4 r r2 | r1 | r4 r8 g, b4 g8 b~ | \bar "||"
  b8 d4 d8~ d4. b8~ | b4 r r2 | r1 | r4 r8 g b4 g8 b~ | \bar "||"
  b8 d4 d8~ d4. e8~ | e4 r r2 | r1 | r4 r8 g, b4 g8 b~ | \bar "||"
  b8 d4 d8~ d4. b8~ | b4 r r2 | r1 | r2 d-> | \bar "||"
  \mark \default  
  R1*7 | r2 r4 r8 b,8~\mf-. | \bar "||"
  b8 a4-. g-. g-. c8~-. | c8 b( a4) r4 r8 a~ | a g4 fis fis b8~ | b a g4 r4 r8 b8~ |
  b a4-. g-. g-. c8~-. | c8 b( a4) r4 r8 a~ | a g4 fis fis b8~ | b a g4 r4 r8 b8~ |
  b a4-. g-. g-. c8~-. | c8 b( a4) r4 r8 a~ | a g4 fis fis b8~ | b a g4 r4 r8 b8~ |
  b a4-. g-. g-. c8~-. | c8 b( a4) r4 r8 a~ | a g4 fis fis b8~ | b a g4 r4 r8 b8~ |
  b a4-. g-. g-. c8~-. | c8 b( a4) r4 r8 a~ | a g4 fis fis b8~ | b a g4 r4 r8 b8~ |

  \repeat volta 2 {
    b8 a4-. g-. g-. c8~-. | c8 b( a4) r4 r8 a~ | a g4 fis fis b8~ | b a g4 r4 r8 b8~ |
  }
  b a4-. g-. g-. c8~-. | c8 b( a4) r2 | d'4\ff b8 a~ a d b4 | \bar "|."
}

trombone = \relative c {
  \compressFullBarRests
  \global
  R1*32 |
  \repeat volta 2 {
  \mark \default
  R1*15 |
  \mark \default
  b'4\f-> r8 b( dis4->) r8 dis( | \bar "||"
  e4)-> r4 r2 | r1 | r1 | r4 r8  b-^ b-^ dis-^ dis-^ e-^ | r1 | r1 |
  r2 r4 r8 d,!~-. | d8 d4-. d-. d-. c8~( | c1~ | c1 | g'1~ | g |
  a1~\< | a~ | a~ |
  \mark \default
  a4) r\! b,4.-> e8~-> | \bar "||"
  e4 r4 r2 | r1 | r1 | r4 r8  b-^ b-^ dis-^ dis-^ e-^ | r1 | r1 |
  r2 r4 r8 d!~-. | d8 d4-. d-. d-. c8~( | c1~ | c1 | g'1~ | g | a1 |
  }
  \alternative {
  {d, | fis | g1) | R1*16}
  {a1~\>}
  }
  a1 | r1\!\fermata | \bar "||"
  \mark \default  
  R1*3 | r4 r8 b( d4 b8 d~ | \bar "||"
  d8)-. fis4-. g8~-. g4. c,8~-> | c4 r r2 | r1 | r4 r8 b d4 b8 d~ | \bar "||"
  d8 fis4 g8~ g4. g8~ | g4 r r2 | r1 | r4 r8 b, d4 b8 d~ | \bar "||"
  d8 fis4 g8~ g4. c,8~ | c4 r r2 | r1 | r4 r8 b d4 b8 d~ | \bar "||"
  d8 fis4 g8~ g4. g8~ | g4 r r2 | r1 | r2 g,-> | \bar "||"
  \mark \default  
  R1*7 | r2 r4 r8 d8~\mf-. | \bar "||"
  d8 c4-. b-. b-. e8~-. | e8 d( c4) r4 r8 c~ | c b4 a a d8~ | d c b4 r4 r8 d8~ |
  d8 c4-. b-. b-. e8~-. | e8 d( c4) r4 r8 c~ | c b4 a a d8~ | d c b4 r4 r8 d8~ |
  d8 c4-. b-. b-. e8~-. | e8 d( c4) r4 r8 c~ | c b4 a a d8~ | d c b4 r4 r8 d8~ |
  d8 c4-. b-. b-. e8~-. | e8 d( c4) r4 r8 c~ | c b4 a a d8~ | d c b4 r4 r8 d8~ |
  d8 c4-. b-. b-. e8~-. | e8 d( c4) r4 r8 c~ | c b4 a a d8~ | d c b4 r4 r8 d8~ |

  \repeat volta 2 {
    d8 c4-. b-. b-. e8~-. | e8 d( c4) r4 r8 c~ | c b4 a a d8~ | d c b4 r4 r8 d8~ |
  }
  d8 c4-. b-. b-. e8~-. | e8 d( c4) r2 |
  d4\ff d8 d~ d d g4 | \bar "|."
  
}

trumpetBbPart = \new Staff \with {
  instrumentName = "Trumpet in Bb"
  midiInstrument = "trumpet"
} \trumpetBb

altoSaxPart = \new Staff \with {
  instrumentName = "Alto Sax"
  midiInstrument = "alto sax"
} \altoSax

trombonePart = \new Staff \with {
  instrumentName = "Trombone"
  midiInstrument = "trombone"
} { \clef bass \trombone }

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


