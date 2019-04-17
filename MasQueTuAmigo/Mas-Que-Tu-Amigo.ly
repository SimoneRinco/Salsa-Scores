\version "2.18.2"

\header {
  title = "Mas Que Tu Amigo"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key c \minor
  \time 2/2  
}


trumpetBb = \relative c'' {
  \global
  \compressFullBarRests
  \transposition bes

  \mark \default
  R1*8 |
  \repeat volta 2
  {
    r8\f ees4-. ees8 g4-. ees8 g~ | g4. ees8( d4 c) |
    r8 d4-. d8 f4-. d8 f~ | f4. d8( c4 bes) |
    r8 c4-. c8 ees4-. c8 ees~ | ees4. c8( ees4 c |
  }
  \alternative {
    {d4)-. b8 g~ g2~\< | g2 r2\! |}
    {d'2 r8 g, b d | g4-> g4-> r2}
  }
  \bar "||"
  \mark \default
  R1*2 | r2 r8 aes,(\mf-> g aes | g8)-.-> r8 r4 r2 | R1*2 | r2 r8 aes\<( g aes | bes2 d | \bar "||"
  \mark \default
  ees2.\!)\f r4 | r1 | r1 | r8 f4-. ees8( d4 bes | c2.) r4 | r1 | r2 r8 g\< b d | g2\!\>->( f |
  ees2.) r4\! | r1 | r1 | r8 d4-. ees8( f8 ees d4   | c2.) r4 | r1 | r2 r8 g b d | g4-> g4-> g4-> r | \bar "||"
  s1^\markup {\bold {B2}} |
  s1^\markup {\bold {C2}} |
  \mark \default
  r2 aes,8(\>\mf g f4)\! | r2 aes8 g f4 |
  r2 g8 f ees4 | r2 g8 f ees4 |
  r1 | r1 |
  r1 | r8 ees'4-.\< d8-. ees4( g |
  f4)-> r\! aes,8\mf g f4 | r2 aes8 g f4 |
  r2 g8 f ees4 | r2 g8 f ees4 |
  r1 | r1 |    
  r2 r8 c'8\ff ees g | c4-> c-> c-> r
  \bar "||"
  s1^\markup {\bold {A2}} |
  s1^\markup {\bold {B3}} |
  s1^\markup {\bold {C3}} |
  s1^\markup {\bold {D2}} |
  \bar "||"
  \mark \default
  R1*8 |
  r8\f ees,4 ees8 g4 ees8 g~ | g4. ees8 d4 c |
  r8 d4 d8 f4 d8 f~ | f4. d8 c4 bes |
  r8 c4 c8 ees4-. ees8( d~ | d2~ d8 ees d c~ | c1)\< | c'4->\!\ff c-> r2
  \bar "|."
}

altoSax = \relative c'' {
  \global
  \compressFullBarRests
  \transposition es
  \mark \default
  r8\f c4-- aes8( g4)-- f-- | r8 c'4-- aes8( g4)--\prall f-- |
  r8 ees'4-- d8( c4 g)-- | r8 ees'4-- d8( c4)\prall g-- |
  r8 c4-- aes8( g4)-- f-- | r8 c'4-- aes8( g4)--\prall f-- |
  r8 ees'4-- d8( c4) g-- | r1 |
  \repeat volta 2
  {
    r8\f bes4-. bes8 ees4-. bes8 ees~ | ees4. bes8( bes4 c) |
    r8 bes4-. bes8 d4-. bes8 d~ | d4. bes8( c4 f,) |
    r8 ees4-. ees8 aes4-. ees8 aes~ | aes4. ees8( aes4 c |
  }
  \alternative {
    {b4)-. g8 d~ d2~\< | d2 r2\! |}
    {b'2 r8 g g g | g4-> g4-> r2}
  }
  \bar "||"
  \mark \default
  R1*2 | r2 r8 aes(\mf-> g aes | g8)-.-> r8 r4 r2 | R1*2 | r2 r8 aes\<( g aes | f2 aes | \bar "||"
  \mark \default
  g2.\!)\f r4 | r1 | r1 | r8 d'4-. c8( bes4 d, | ees2.) r4 | r1 | r2 r8 g\< g g | g2\!\>->( aes |
  g2.) r4\! | r1 | r1 | r8 f4-. bes8( d8 c bes4 | aes2.) r4 | r1 | r2 r8 g g g | g4-> g4-> g4-> r | \bar "||"
  s1^\markup {\bold {B2}} |
  s1^\markup {\bold {C2}} |
  \mark \default
  r2 aes8(\>\mf g f4)\! | r2 aes8 g f4 |
  r2 g8 f ees4 | r2 g8 f ees4 |
  r1 | r1 |
  r1 | r8 c'4-.\< d8-. c4( bes |
  aes4)-> r\! aes8\mf g f4 | r2 aes8 g f4 |
  r2 g8 f ees4 | r2 g8 f ees4 |
  r1 | r1 |    
  r2 r8 c'8\ff c c | c4-> c-> c-> r
  \bar "||"
  s1^\markup {\bold {A2}} |
  s1^\markup {\bold {B3}} |
  s1^\markup {\bold {C3}} |
  s1^\markup {\bold {D2}} |
  \bar "||"
  \mark \default  
  r8\f c4-- aes8( g4)-- f-- | r8 c'4-- aes8( g4)--\prall f-- |
  r8 ees'4-- d8( c4 g)-- | r8 ees'4-- d8( c4)\prall g-- |
  r8 c4-- aes8( g4)-- f-- | r8 c'4-- aes8( g4)--\prall f-- |
  r8 ees'4-- d8( c4 g)-- | r1 |
  r8\f bes4-. bes8 ees4-. bes8 ees~ | ees4. bes8( bes4 c) |
  r8 bes4-. bes8 d4-. bes8 d~ | d4. bes8( c4 f,) |
  r8 ees4 ees8 aes4-. c8( b~ | b2~ b8 g f ees~ | ees1)\< | c'4->\!\ff c-> r2
  \bar "|."
}

trombone = \relative c {
  \compressFullBarRests
  \global
  \mark \default
  R1*8 |
  \repeat volta 2
  {
    r8\f g'4-. g8 bes4-. g8 bes~ | bes4. g8( bes4 ees) |
    r8 f,4-. f8 bes4-. f8 bes~ | bes4. f8( bes4 d) |
    r8 aes4-. aes8 c4-. aes8 c~ | c4. aes8( c4 aes |
  }
  \alternative {
    {g4)-. g8 b~ b2~\< | b2 r2\! |}
    {g2 r8 g d' b | g4-> g4-> r2}
  }
  \bar "||"
  \mark \default
  R1*7 | d2(\< bes |
  \bar "||"
  \mark \default
  ees2.)\!\f r4 |
  r1 | r1 | r8 bes4-. bes8( f'4 bes, | aes2.) r4 | r1 | r2 r8 g'\< d' b | g2\!\>( bes, |
  ees2.) r4\! | r1 | r1 | r8 bes4-. bes8( f'8 f f4 | aes,2.) r4 | r1 | r2 r8 g' d' b | g4-> g4-> g4-> r | \bar "||"
  s1^\markup {\bold {B2}} |
  s1^\markup {\bold {C2}} |
  \mark \default
  R1*7 |
  r8 c,4-.\< c8-. g'4( c, |
  f4)-> r\! r2 |
  R1*4 | r1 |
  r2 r8 c'8\ff g ees | c4-> c-> c-> r
  
  s1^\markup {\bold {A2}} |
  s1^\markup {\bold {B3}} |
  s1^\markup {\bold {C3}} |
  s1^\markup {\bold {D2}} |
  \bar "||"
  \mark \default
  R1*8 | 
  r8\f g'4-. g8 bes4-. g8 bes~ | bes4. g8( bes4 ees) |
  r8 f,4-. f8 bes4-. f8 bes~ | bes4. f8( bes4 d) |
  r8 aes4 aes8 f4-. f8( g~ | g2~ g8 g b c~ | c1)\< | c,4->\!\ff c-> r2  
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
    \transpose a fis { \altoSaxPart }
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

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}

\paper {
  page-breaking = #ly:page-turn-breaking
}
