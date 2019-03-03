\version "2.18.2"

\header {
  title = "Lloraras"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key a \minor
  \time 2/2
}

trumpetBb = \relative c'' {
  \global
  \compressFullBarRests
  \transposition bes
  R1*8 | \bar "||"
  \mark \default
  r1 | e4\f r8 e~ e2 | d4\<( e f a | gis4) r8\! e8~ e2 | c4( e8 d c b4.) |
       e4 r8 e~ e2 | d4\<( e f d | e4) r8\! b8~ b2 | \bar "||"
  a4( c) b( d) | e4 r8 e~ e2 | d4 e f a | gis4 r8 e8~ e2 | c4 e8 d c b4. |
             e4 r8 e~ e2 | d4 e f d | e4 r8 b8~ b2 \bar "||"
  R1*16 |
  s1^"A2"|
  R1*16 |
  s1^"A3"|
  R1*8 |
  \repeat volta 2
  \mark \default
  {r8 c4( a8 b4)-. a-. | gis r8 e~ e2 | r8 c'4 a8 b4 a | gis r8 e'~ e2 | }
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
    {e4-- e8(\< gis8~ gis) gis( a4)\!-> | \bar "|."}
  }
  
  
  
  
  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  } \transpose a b { \trumpetBb }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
