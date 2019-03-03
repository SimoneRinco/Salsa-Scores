\version "2.18.2"

\header {
  title = "El Cuarto de Tula"
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
  \repeat volta 2
  {
    \mark \default
    a4-.\f a-. gis4. b8~ | b2 r |
    b4 b a4. c8~ | c2 r |
    %
    a4 a gis4. b8~ | b2 r |
    b4 b a4. c8~ | c2 r |

    r8 c4-.->\> b8( a4) g8( f~) |
    f8 e4-. d8~ d4 r\! |
    r8 b'4 a8 gis4 f8 e~ |
    e8 d4 c8~ c4 r |
    %
    r8 c'4 b8 a4 g8 f~ |
    f8 e4 d8~ d4 r |
    r8 b'4 a8 gis4 f8 e~ |
    e8 d4 c8~ c4 r |

    \mark \default
    R1*3 | r8 gis'\mf b f' d b gis a~ |
    a4 r r2 | R1*2 | r8 b, dis e f e gis a~ |
    a4 r r a8( g!~) | g4 r r g8 f~ | f4 r r f8 e~ | e4 r4 r8 gis( b a~) |
    a4 r r c8 b~ | b4 r r d8 c~ | c4 r r a8 gis~ | gis e~ e4 r2 |
    r8 g!( b d f e d e~ | e) g,4. r2 | r8 g b d f e d e~ | e g,4. r2 |
    r8 gis b e d c b c~ | c e,4. r2 | r8 gis( b e d c b a~) |
  }
  \alternative
  {
    {a e(\< dis e f fis g gis) |}
    {\mark \default a4\! r r2}
  }
  R1* 6 | r8 a'8~\f a2.~ | \bar "||"
  a4. e8~-- e4 c-- | b4.-- d8 \tuplet 3/2 {g4 fis g} |
  \tuplet 3/2 {f!4 d b} \tuplet 3/2 {a a c~} | c8 a~ a4 r2 | r8 e a b c b a d~-- |
  d8 b4-- e-- f-- e8~\mordent |
  e4.-- b8~ \tuplet 3/2 {b4 d c } | a2 r2 \bar "||"
  R1*8 | \bar "||"
  e'4. e8~ \tuplet 3/2 {e4 e d } | f4-- b,-- r2 | \tuplet 3/2 {r4 b c} d4 c8 e~ |
  \tuplet 3/2 {e4 a, b} c4 d8 e~ | \tuplet 3/2 {e4 b' a} b4 a8 gis~ |
  gis8 c4-- b-- a-- gis8~-- | gis f e d \tuplet 3/2 {c4 b a~} | a8 b c d e f dis e~ | \bar "||"
  e4 r r2 | R1*7 | \bar "||"
  s1 |
  \mark \default
  R1*7 | \tuplet 3/2 2 {r4 a, c e a gis} | \bar "||" 
  b8 a4-- e-- c-- f8~ | f8 e d f~ f e d f~ | f e d f~ f e d e~ |
  e d c e~ e d c e~ | e d c e~ e2 |
  d4-- e8 f~ f b, c d~ | d gis, a b~ b4 r |
  r8 c d e~ e a, b c~ | \bar "||"
  c e, fis gis~ gis4 r | R1*6 | r4. \tuplet 3/2 {e'4-- f-- e--} a8~-- | \bar "||"
  a4 r8 \tuplet 3/2 {e4 f e} gis8~ | \tuplet 3/2 2 {gis8 e4 f e8~ e8 gis4 e f8~} |
  \tuplet 3/2 2 {f8 e4 gis e8~ e8 f4 e c'8~} | \tuplet 3/2 2 {c8 gis4 b a8~ a e4 c b8~} |
  \tuplet 3/2 2 {b8 a4 gis a8~ a8 b4 c \acciaccatura e8 f8~} |
  \tuplet 3/2 2 {f8 f4 f \acciaccatura e8 f8~ f8 f4 f4 \acciaccatura e8 f8~} |
  \tuplet 3/2 2 {f8 f4 f \acciaccatura e8 f8~ f8 f4 f4 \acciaccatura dis8 e8~} |
  \tuplet 3/2 {e8 e4 e \acciaccatura dis8 e8~} e8 a4 a8~ | \bar "||"
  a8 e8~ e4 r2 | R1*7 | \bar "||"
  a,4~-- a16 c8.~-- c8 e4.-- |
  \tuplet 3/2 {f8( e d} f4) r \tuplet 3/2 {f8( e d} | f4) r \tuplet 5/4 {f8( e f e d} |
  e4) r8 a~-- \tuplet 3/2 {a8-- b4-- c-- b8~} |
  \tuplet 3/2 {b8 d4 c b8~} b8 a gis a~ |
  \tuplet 3/2 {a8 b4 a gis8~} gis8 e4 e8~ | e1~ | e1 | \bar "||"
  s1 | a1~\ff | a1 | \bar "|."
  
  
  
  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  } \transpose a b { \trumpetBb }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
   }
}
