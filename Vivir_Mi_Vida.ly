\version "2.18.2"

\paper {
  #(set-paper-size "a4")
  page-breaking = #ly:minimal-breaking
}

\header {
  title = "Vivir Mi Vida"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \compressFullBarRests
  \key c \minor
  \time 2/2
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  \mark \default
  R1*16 |
  \mark \default
  c'2\ff r | R1*7 | \bar "||"
  r8 g,,4-.\mf c8~-. c r bes^( c~\< | c2~ c8) r\! r4 |
  r8 aes4-. c8~-. c r bes^( c~\< | c2~ c8) r\! r4 |
  r8 bes4-. ees8-.~ ees r d ees~\< | ees2~ ees8 r\! r4 |
  r8 bes4 d8~ d r c^( d~ | d2 bes | \bar "||"
  \mark \default
  c2~-> c8) r r4 | R1*15 | \bar "||"
  \mark \default
  r8 g4\mf c8~ c r bes c~ | c2~ c8 r r4 |
  r8 aes4 c8~ c r bes c~ | c2~ c8 r r4 |
  r8 bes4 ees8~ ees r d ees~ | ees2~ ees8 r r4 |
  r8 bes4 d8~ d r c d~ | d2~ d8 r r4 |
  r2 c''4->\ff r | r2 c4-> r | r2 c4-> r | r1 |
  R1*2 | r1 | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c2-> r2 | R1*15 | \bar "||"
  \mark \default
  r2. c,4\f-. | ees2( g | aes) r4 c,-. | ees2( aes2 | g) r4 bes,-. | ees2( g2 | f2. f4 | f4. ees8~ ees4 d |
  c2) r4 c-. | ees2( g | aes) r4 c,-. | ees2( aes2 | g) r4 bes,-. | ees2_( g2 | f2. f4 | f4. ees8~ ees4 d | \bar "||"
  c'2) r2 | R1*15 |
  \mark \default
  r8 g,,4\mf c8~ c r bes c~ | c2~ c8 r r4 |
  r8 aes4 c8~ c r bes c~ | c2~ c8 r r4 |
  r8 bes4 ees8~ ees r d ees~ | ees2~ ees8 r r4 |
  r8 bes4 d8~ d r c d~ | d2~ d8 r r4 |
  r2 c''4\ff-> r | r2 c4-> r | r2 c4-> r | r1 | R1*2 | r1 | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c2 r | R1*15 | \bar "||"
  \mark \default
  r1 | r2 bes4(\ff g8 aes~ | aes2~ aes8) r r4 |
  r2 bes4( aes8 g~ | g2~ g8) r r4 |
  r2 aes4 g8 f~ | f2~ f8 r r4 |
  f8-. f4-. f8-. g4( f8 g~ | \bar "||"
  g2~ g8) r r4 | r2 bes4 g8 aes~ | aes2~ aes8 r r4 |
  r2 bes4 aes8 g~ | g2~ g8 r r4 |
  r2 aes4( g | f4)-. r f-. r4 | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c2r | R1*7 | \bar "||"
  R1*16 | \bar "||"
  \mark \default
  r4 r8 c,~\ff( c4 d~ | d8 ees8~ ees4 c2) |
  r4 r8 c~( c4 d~ | d8 ees8~ ees4 bes2) |
  r4 r8 bes~( bes4 d~ | d8 ees8~ ees4 bes2) |
  r4 r8 bes~( bes4 d~ | d8 ees8~ ees4 d4. c8~ |
  c4) r8 c~( c4 d~ | d8 ees8~ ees4 c2) |
  r4 r8 c~( c4 d~ | d8 ees8~ ees4 bes2) |
  r4 r8 bes~( bes4 d~ | d8 ees8~ ees4 bes2) |
  r4 r8 bes~_( bes4 d~ | d8 ees8~ ees4 d4. c'8~-> | \bar "||"
  c4) r r2 | R1*15 | \bar "|."
  
}

altoSax = \relative c'' {
  \global
  \mark \default  
  R1*16 |
  \mark \default
  ees2\ff r2 | R1*7 | \bar "||"
  r8 ees,,4-.\mf g8~-. g r g^( g~\< | g2~ g8) r\! r4 |
  r8 ees4-. aes8~-. aes r aes^( aes~\< | aes2~ aes8) r\! r4 |
  r8 g4-. bes8~-. bes r bes^( bes~\< | bes2~ bes8) r\! r4 |
  r8 f4 bes8~ bes r bes^( bes~ | bes2 bes | \bar "||"
  \mark \default
  c2~-> c8) r r4 | R1*15 | \bar "||" 
  \mark \default
  r8 ees,4\mf g8~ g r g g~ | g2~ g8 r r4 |
  r8 ees4 aes8~ aes r aes aes~ | aes2~ aes8 r r4 |
  r8 g4 bes8~ bes r bes bes~ | bes2~ bes8 r r4 |
  r8 f4 bes8~ bes r bes bes~ | bes2~ bes8 r r4 |
  r2 ees'4->\ff r | r2 ees4-> r | r2 ees4-> r | r1 |
  R1*2 | r1 | \tuplet 3/2 {d4 d d} d-> r | \bar "||"
  c2-> r2 | R1*15 | \bar "||"
  \mark \default
  c,2-- d-- | ees-- g,-- | aes-- ees'~-- | ees2 r | ees-- f-- | g-- ees-- | d-- f-- | f4.( ees8~ ees4 d |
  c2) d | ees g, | aes ees'~ | ees2 r | ees f | g ees | d f | f4.( ees8~ ees4 d |
  c2) r2 | R1*15 |
  \mark \default
  r8 ees,4\mf g8~ g r g g~ | g2~ g8 r r4 |
  r8 ees4 aes8~ aes r aes aes~ | aes2~ aes8 r r4 |
  r8 g4 bes8~ bes r bes bes~ | bes2~ bes8 r r4 |
  r8 f4 bes8~ bes r bes bes~ | bes2~ bes8 r r4 |
  r2 ees'4->\ff r | r2 ees4-> r | r2 ees4-> r | r1 |
  R1*2 | r1 | \tuplet 3/2 {d4 d d} d-> r | \bar "||"  
  c2 r | R1*15 | \bar "||"
  \mark \default
  r4 r8 ees,8\ff-- ees4-- ees-- | ees2 r |
  r4 r8 ees8-- ees4-- ees-- | ees2 r |
  r4 r8 ees8-- ees4-- ees-- | ees2 r |
  r4 r8 d8 d4-- d-- | d2 r |
  r4 r8 ees8-- ees4-- ees-- | ees2 r |
  r4 r8 ees8-- ees4-- ees-- | ees2 r |
  r4 r8 ees8-- ees4-- ees-- | ees2 r |
  d4-. r d-. r | \tuplet 3/2 {d4 d d} d-> r | \bar "||"
  c2r | R1*7 | \bar "||"
  R1*15 | r2 r4 r8 g'8~-- \bar "||"
  \mark \default
  g8 f4-- g8~-- g4 f8( g~ | g2) r4 r8 aes~ |
  aes8 g4-- aes8~-- aes4 g8( aes~ | aes2) r4 r8 g~ |
  g8 f4-- g8~-- g4 f8( g~ | g2) r4 r8 f~ |  
  f8 ees4-- f8~-- f4 ees8( f~ | f2) r4 r8 g~ |
  g8 f4-- g8~-- g4 f8( g~ | g2) r4 r8 aes~ |
  aes8 g4-- aes8~-- aes4 g8( aes~ | aes2) r4 r8 g~ |
  g8 f4-- g8~-- g4 f8( g~ | g2) r4 r8 f~ |  
  f8 ees4-- f8~-- f4 ees8^( f~ | f2 d4. c8~-> |
  c4) r r2 | R1*15 |
  \bar "|."  
}

trombone = \relative c' {
  \global
  \mark \default
  R1*16 |
  \mark \default
  c,2\ff r2 | R1*7 | \bar "||"
  r8 c4-.\mf ees8~-. ees r ees^( ees~\< | ees2~ ees8) r\! r4 |
  r8 c4-. ees8~-. ees r ees^( ees~\< | ees2~ ees8) r\! r4 |
  r8 ees4-. g8~-. g r f^( g~\< | g2~ g8) r\! r4 |
  r8 d4 f8~ f r f^( f~ | f2 d | \bar "||"
  \mark \default
  c2~-> c8) r r4 | R1*15 | \bar "||"
  \mark \default
  r8 c4\mf ees8~ ees r ees ees~ | ees2~ ees8 r r4 |
  r8 c4 ees8~ ees r ees ees~ | ees2~ ees8 r r4 |
  r8 ees4 g8~ g r f g~ | g2~ g8 r r4 |
  r8 d4 f8~ f r f f~ | f2~ f8 r r4 |
  r2 c'4->\ff r | r2 c4-> r | r2 aes4-> r | r1 |
  R1*2 | r1 | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c2-> r2 | R1*15 | \bar "||"
  \mark \default
  c,1~\f | c | aes'~ | aes | ees~ | ees bes' | bes4. bes8~ bes4 bes, |
  c1~ | c | aes'~ | aes | ees~ | ees bes' | bes4. bes8~ bes4 bes |
  c2 r2 | R1*15 |
  \mark \default
  r8 c,4\mf ees8~ ees r ees ees~ | ees2~ ees8 r r4 |
  r8 c4 ees8~ ees r ees ees~ | ees2~ ees8 r r4 |
  r8 ees4 g8~ g r f g~ | g2~ g8 r r4 |
  r8 d4 f8~ f r f f~ | f2~ f8 r r4 |
  r2 c'4->\ff r | r2 c4-> r | r2 aes4-> r | r1 |
  R1*2 | r1 | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c2 r | R1*15 | \bar "||"
  \mark \default  
  r4 r8 c8\ff-- c4-- c-- | c2 r |
  r4 r8 c8-- c4-- c-- | c2 r |
  r4 r8 bes8-- bes4-- bes-- | bes2 r |
  r4 r8 bes8 bes4-- bes-- | bes2 r |
  r4 r8 c8-- c4-- c-- | c2 r |
  r4 r8 c8-- c4-- c-- | c2 r |
  r4 r8 bes8-- bes4-- bes-- | bes2 r |
  bes4-. r bes-. r | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c2 r | R1*7 | \bar "||"
   R1*15 | r2 r4 r8 ees8~-- \bar "||"
  \mark \default
  ees8 d4-- ees8~-- ees4 d8( ees~ | ees2) r4 r8 ees~ |
  ees8 ees4-- ees8~-- ees4 ees8( ees~ | ees2) r4 r8 ees~ |
  ees8 d4-- ees8~-- ees4 d8( ees~ | ees2) r4 r8 d~ |  
  d8 c4-- d8~-- d4 c8( d~ | d2) r4 r8 ees~ |
  ees8 d4-- ees8~-- ees4 d8( ees~ | ees2) r4 r8 ees~ |
  ees8 ees4-- ees8~-- ees4 ees8( ees~ | ees2) r4 r8 ees~ |
  ees8 d4-- ees8~-- ees4 d8( ees~ | ees2) r4 r8 d~ |  
  d8 c4-- d8~-- d4 c8_( d~ | d2 bes4. c8~-> |
  c4) r r2 | R1*15 |
  \bar "|."
  
  
  
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
