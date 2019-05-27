\version "2.18.2"

\header {
  title = "Lloraras"
}

global = {
  \compressFullBarRests  
  \set Score.markFormatter = #format-mark-box-letters
  \key a \minor
  \time 2/2
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  R1*8 | \bar "||"
  \mark \default
  r1 |
  \repeat volta 2
  {
    e4\f r8 e~-> e2 | d4\<( e f a | gis4) r8\! e8~-> e2 |
    c4( e8 d c b c d) | e4 r8 e~-> e2 | d4\<( e f d |
  }
  \alternative
  {
    {
      e4) r8\! b8~-> b2 |
      c8( d e c d e f d) 
    }
    {
      e4 r8\! b8->~ b2 \bar "||"
    }
  } |
  R1*16 |
  s1^"A2"|
  R1*16 |
  s1^"A3"|
  R1*8 |
  \mark \default
  \repeat volta 2
  {r8 e4.-- d4-- c-- | b4.-- gis8~ gis2 | r8 e'4.-- d4-- c-- | b4.-- gis'8~-- gis4 a4-- | }
  \repeat volta 2
  {r8 e, a c d c b a | gis4.-- e8~( e4 a) | r8 e a c d c b a | gis4.-- e'8~( e4 a,)}
  \repeat volta 2
  {r8 a,\< b c d dis e f | e gis b d f e d c\! | r8 a,\< b c d e f dis | e gis b d c b gis' a\!}
  \repeat volta 2
  {r8 a e c g'4-- f8 e~-- | e d4-- c8~-- c4 b8 a | r a' e c g'4-- f8 e~-- | e d4-- e8~-- e4 gis8 a |}
  R1*12 R1*16 |
  \mark \default
  \repeat volta 4
  {r8 d,4--( e8 \tuplet 3/2 {f4 e d} |}
  \alternative
  {
    {e4.) gis8~\< gis4 a\! |}
    {e4-- e8(\< gis8~ gis) gis( a4)\!->\ff | \bar "|."}
  }
}

altoSax = \relative c'' {
  \global
  R1*8 | \bar "||"
  \mark \default
  r1 |
  \repeat volta 2
  {
    c4\f r8 c~-> c2 | a2\<( d4 c | b4) r8\! b8~-> b2 |
    a4( c8 b a g a b) |c4 r8 c~-> c2 | a2\<( d4 a |
  }
  \alternative
  {
    {
      gis4) r8\! gis8->~ gis2 |
      a8( b c a b c d b) |
    }
    {
      gis4 r8\! gis8->~ gis2 | \bar "||"
    }
  }
  R1*16 |
  s1^"A2"|
  R1*16 |
  s1^"A3"|
  R1*8 |
  \repeat volta 2
  \mark \default
  {r8 c4.-- b4-- a-- | gis4.-- e8~ e2 | r8 c'4.-- b4-- a-- | gis4.-- b8~-- b4 a4-- | }
  \repeat volta 2
  {r8 c,8 e a b a g f | e4. d8~( d4 c) | r8 c8 e a b a g f | e4. d8~( d4 c) |}
  \repeat volta 2
  {r8 a\< b c b4 a | gis8 b d f d c b a\! | r8 a\< b c b4 a | gis8 b d f e d b c\!}
  \repeat volta 2
  {r8 e' c a g4 f8 e~ | e8 f4 e8~ e4 d8 c | r8 e' c a g4 f8 e~ | e8 f4 gis8~ gis4 b8 c }
  R1*12 R1*16 |
  \mark \default
  \repeat volta 4
  {r8 d4--( e8 \tuplet 3/2 {d4 e d} |}
  \alternative
  {
    {gis,4.) b8~\< b4 a\! |}
    {gis4-- gis8(\< b8~ b) b( a4)\!->\ff | \bar "|."}
  }
}


trombone = \relative c' {
  \global
  \clef tenor
  R1*8 | \bar "||"
  \mark \default
  r1 |
  \repeat volta 2
  {
    c4\f r8 g'~(-> g4 e) | f4\<( e d dis | e4) r8\! gis8~(-> gis4 e) |
    a,8( c e4) g,!8( b d4) | c4 r8 g'~(-> g4 e) | f4( e d f) |
  }
  \alternative
  {
    {
      e4 r8 gis8~->( gis4 e) | a,8( c e4) g,8( b d4) |
    }
    {
      e4 r8 e8~-> e2 | \bar "||"
    }
  }
  R1*16 |
  s1^"A2"|
  R1*16 |
  s1^"A3"|
  R1*8 |
  \repeat volta 2
  \mark \default
  {r8 a4.-- g4-- f-- | e4.-- d8~-- d4 c8( b | a8) a'4.-- g4-- f-- | e4.-- d8~-- d4 c-- }
  \repeat volta 2
  {a2-- g4-- f-- | e4.-- gis8~( gis4 a) | a2-- g4-- f-- | e4.-- gis8~( gis4 a) }
  \repeat volta 2
  {a2-- g4-- f-- | e4.-- gis8~( gis4 e8 a) | a2-- g4-- f-- | e4.-- gis8~( gis4 e8 a) }
  \repeat volta 2
  {r8 c_"non legato" e c b d a gis~ | gis e gis b d b gis a | r8 c e c b d a gis~ | gis e gis b d b gis a | }
  R1*12 R1*16 |
  \mark \default
  \repeat volta 4
  {r8 f4--( e8 \tuplet 3/2 {d4 e f} |}
  \alternative
  {
    {e4.) d8~\< d4 c\! |}
    {e4-- e8(\< d8~ d) d( c4)\!->\ff | \bar "|."}    
  }  
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
