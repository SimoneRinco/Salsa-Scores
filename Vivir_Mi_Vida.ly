\version "2.18.2"

\header {
  title = "Vivir Mi Vida"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key c \minor
  \time 2/2
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  \compressFullBarRests
  \mark \default
  R1*16 |
  \mark \default
  \grace {g'16 a b} c4~\ff c8 \glissando c, ~ c r r4 | R1*7 | \bar "||"
  r8 g,4-.\mf c8~-. c r bes^( c~\< | c2~ c8) r\! r4 |
  r8 aes4-. c8~-. c r bes^( c~\< | c2~ c8) r\! r4 |
  r8 bes4 ees8~ ees r d ees~ | ees2~ ees8 r r4 |
  r8 bes4 d8~ d r c^( d~ | d2 bes | \bar "||"
  \mark \default
  c2~-> c8) r r4 | R1*15 | \bar "||"
  \mark \default
  r8 g4 c8~ c r bes c~ | c2~ c8 r r4 |
  r8 aes4 c8~ c r bes c~ | c2~ c8 r r4 |
  r8 bes4 ees8~ ees r d ees~ | ees2~ ees8 r r4 |
  r8 bes4 d8~ d r c d~ | d2~ d8 r r4 |
  r2 c''4->\ff r | r2 c4-> r | r2 c4-> r | r1 | R1*2 | r1 | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c4~-> c8 \glissando c,8~ c r r4 | R1*15 | \bar "||"
  \mark \default
  r2. c4\f-. | ees2( g | aes) r4 c,-. | ees2( aes2 | g) r4 bes,-. | ees2( g2 | f2. f4 | f4. ees8~ ees4 d |
  c2) r4 c-. | ees2( g | aes) r4 c,-. | ees2( aes2 | g) r4 bes,-. | ees2_( g2 | f2. f4 | f4. ees8~ ees4 d | \bar "||"
  c'4~-> c8 \glissando c,8~ c) r r4 | R1*15 |
  \mark \default
  r8 g,4\mf c8~ c r bes c~ | c2~ c8 r r4 |
  r8 aes4 c8~ c r bes c~ | c2~ c8 r r4 |
  r8 bes4 ees8~ ees r d ees~ | ees2~ ees8 r r4 |
  r8 bes4 d8~ d r c d~ | d2~ d8 r r4 |
  r2 c''4\ff-> r | r2 c4-> r | r2 c4-> r | r1 | R1*2 | r1 | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c4~-> c8 \glissando c,8~ c r r4 | R1*15 | \bar "||"
  \mark \default
  r1 | r2 bes'4(\ff g8 aes~ | aes2~ aes8) r r4 |
  r2 bes4( aes8 g~ | g2~ g8) r r4 |
  r2 aes4 g8 f~ | f2~ f8 r r4 |
  f8-. f4-. f8-. g4( f8 g~ | \bar "||"
  g2~ g8) r r4 | r2 bes4 g8 aes~ | aes2~ aes8 r r4 |
  r2 bes4 aes8 g~ | g2~ g8 r r4 |
  r2 aes4( g | f4)-. r f-. r4 | \tuplet 3/2 {bes4 bes bes} bes-> r | \bar "||"
  c4~-> c8 \glissando c,8~ c r r4 | R1*7 | \bar "||"
  R1*16 | \bar "||"
  \mark \default
  r4 r8 c~\ff( c4 d~ | d8 ees8~ ees4 c2) |
  r4 r8 c~( c4 d~ | d8 ees8~ ees4 bes2) |
  r4 r8 bes~( bes4 d~ | d8 ees8~ ees4 bes2) |
  r4 r8 bes~( bes4 d~ | d8 ees8~ ees4 d4. c8~ |
  c4) r8 c~( c4 d~ | d8 ees8~ ees4 c2) |
  r4 r8 c~( c4 d~ | d8 ees8~ ees4 bes2) |
  r4 r8 bes~( bes4 d~ | d8 ees8~ ees4 bes2) |
  r4 r8 bes~_( bes4 d~ | d8 ees8~ ees4 d4. c'8~-> | \bar "||"
  c4 \glissando c,8) r r2 | R1*15 | \bar "|."
  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  } \transpose a b \trumpetBb
  \layout { }
  \midi {
    \tempo 4=100
  }
}
