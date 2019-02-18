\version "2.18.2"

\header {
  title = "Felices los 4"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key d \minor
  \time 2/2
}

trumpetBb = \relative c'' {
  \global
  \transposition bes
  \compressFullBarRests
  R1*20 | \bar "||"
  R1*8 | \bar "||"
  R1* 8 | \bar "||"
  \mark \default
  R1*8 |
  r2. f8\(\f f |
  e f\) r4 r2 |
  r1 | r1 |
  r2. f4->-. |
  R1*3 | \bar "||"
  r8 f,4-.\mf g8~-. g a^( g4~\< | g2.) r4\! |
  r8 f4-. g8~-. g a^( g4~\< | g2.) r4\! |
  r8 f4-. g8~-. g a^( g4~\< | g2.) r4\! |
  r2. c8-.\f c-. | d8-. f4-. f8~-. f f-. c4-. |
  d4.\( c8~ c4 bes4~ | bes4\) r4 d4-. f-. |
  d4.\( c8~ c4 bes4~ | bes4\) r4 d4-. f-. |
  f4.\( d8~ d4 c4~ | c4\) r d-. f-. | g8 g g g g g g\glissando g,~ | g8 r8 r4 r2 | \bar "||" |
  R1*8 |
  \mark \default
  \repeat volta 2 {r1 | r1 | c,1~\<\p | c1 | r1\! | r1 | d~\<\p | d} |
  \mark \default
  R1*8\! |
  r2. f'8(\f f |
  e f) r4 r2 |
  r1 | r1 |
  r2. f4->-. |
  R1*3 | \bar "||"
  r8 f,4-.\mf g8~-. g a^( g4~\< | g2.) r4\! |
  r8 f4-. g8~-. g a^( g4~\< | g2.) r4\! |
  r8 f4-. g8~-. g a^( g4~\< | g2.) r4\! |
  r2. c8-.\f\cresc c-. | d8-. f4-. f8~-. f f-. c4-. | \bar "||"
  bes'4.\ff-> a8~-> a4 g~-> | g r r2 | R1*6 | \bar "||" |
  \mark \default
  R1*6 | r2. c,,8-.\f c-. | d8-. f4-. f8~-. f f-. c4-. | \bar "||"
  d4.\( c8~ c4 bes4~ | bes4\) r4 d4-. f-. |
  d4.\( c8~ c4 bes4~ | bes4\) r4 d4-. f-. |
  f4.\( d8~ d4 c4~ | c4\) r d-. f-. | f2\< r4\! c8-. c-. | d8-. f4-. f8~-. f f-. c4-. |
  d4.\( c8~ c4 bes4~ | bes4\) r4 d4-. f-. |
  d4.\( c8~ c4 bes4~ | bes4\) r4 d4-. f-. |
  f4.\( d8~ d4 c4~ | c4\) r d-. f-. |
  f1~\< | f | \bar "||"
  \mark \default
  R1*4\! |
  r2. c''4-.-> |
  bes4.\( a8~ a4\) r | r1 | g,4.\mf\( f8~ f4\) r | \bar "||"
  r1 | r8 g'4->\f\glissando g,8 r2 | R1*6 | \bar "||"
  \mark \default
  r8 f'4-. g8~-. g a^( g4~\< | g2.) r4\! |
  r8 f4-. g8~-. g a^( g4~\< | g2.) r4\! |
  r8 f4-. g8~-. g a^( g4~\< | g2.) r4\! |
  r8 f4-. g8~-. g a^( g4~\> | g2 f2~ | \bar "||"
  f1) | R1*7\! | R1*8 \bar "|."
  
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
