\version "2.18.2"


bridge_repeat = {
  r8 c'4 bes8 c4 aes8 bes~ |
  bes8 a4 bes8~ bes r c, c |
  \tuplet 3/2 {c4 e g} des' c8 f,~ |  
}

bridge_two_repeat = {
  r8 f f f f es c des~ |
  des bes4 c8~ c des4 c8~ |
  c8 e4 g,8 \acciaccatura a8 bes4. aes8~ |
}

\header {
  title = "Idilio"
}

global = {
  \set Score.markFormatter = #format-mark-box-letters
  \key f \minor
  \time 2/2
}

trumpetBb = \relative c'' {
  \global
  \compressFullBarRests  
  \transposition bes
  \mark \default
  \partial 8 c8 |
  f4 f8 es~ es f es4 |
  \acciaccatura ees8 f8 es4 des8 es4 des8 f8~ |
  f8 des bes4 r2 |
  r2 r8 bes c des |
  ees g f ees des c bes aes |
  g4 r8 ees f ees f g |
  aes2 r4. aes,8~ |
  \tuplet 3/2 2 {aes4 ces ees g aes bes} |
  \acciaccatura {aes16 bes} ces2~ ces8 bes4 aes8 |
  \acciaccatura bes ces4 ces8 ces~ ces bes4 aes8 |
  b8 c g4~ g8 r r4 |
  r8 \acciaccatura c8 des4 c8 f4 e8 c~ |
  c2~ c8 ces4 bes8~ |
  bes2.~ bes8 aes |
  \acciaccatura aes8 bes aes f4~ f2 |
  r1 | \bar "||"
  % ------------------
  R1*2
  R1*20
  R1*16
  R1*15
  % ------------------
  \mark \default
  r2 r4. b8 | \bar "||"
  c f, r4 r4. b8 |
  c f r4 r4. a,8 |
  bes f des c bes c des f |
  bes c des c bes aes g f |
  ees \acciaccatura fis8 g4 bes8 ees4 f8 g~ |
  g8 f4 ees8~ ees des c bes |
  bes aes bes aes ees4. r8 |
  r4. aes8~ aes8 bes4 \acciaccatura {aes16 bes} ces8~ |
  ces2~ \tuplet 3/2 {ces4 bes4 aes4} |
  f4 es8 des8~ des ees4 des8 |
  \acciaccatura dis8 e4. c8~ c2~ |
  c8 e g des' c4 r |
  r4 c8 f8~ f e4 c8~ |
  c8 ces4 bes8~ bes4. aes8 |
  \acciaccatura aes8 bes aes f4~ f2 |
  r4 \tuplet 3/2 4 {aes8 bes aes g aes g aes g f~} | \bar "||"
  f4 r r2 |
  % ------------------
  R1*15 |
  R1*16 |
  R1*3 |
  % ------------------
  \mark \default
  % Bridge one
  \repeat volta 2 {
    \bridge_repeat
  }
  \alternative {
    {f8 f4 \acciaccatura g8 aes8~ aes4 f |}
    {f8 f4 c'8~ c4 f4 |}
  }
  % Coro
  % ------------------
  R1*8 |
  R1*8 |
  R1*8 |
  R1*7 |
  % ------------------
  \mark \default
  r4 r8 c8~ c4 f |
  \repeat volta 4 {
    \bridge_two_repeat
  }
  \alternative {
    {aes8 r8 r4 r2 |}
    {aes4 r8 c,~ c4 f4~ \bar "||"}
  }
  % Solo
  \mark \default
  f4 r4 r8 f r c' |
  r8 e, r bes' r c, f4 |
  r1 |
  r8 f e f g aes g f |
  e f g aes g f e f |
  g aes g4~ g8 r4 bes8~ |
  bes4. aes8~ aes8 g4 f8~ |
  f4 r4 r2 |
  \tuplet 3/2 2 {r4 \acciaccatura a8 bes4 aes bes aes bes} |
  \tuplet 7/4 {aes4 bes aes bes aes bes aes } |
  \acciaccatura a8 bes8 e,4. r2 |
  r2 r8 c' b c |
  f es c a~ a ges4 f8~ |
  f8 bes4 a8 c4 bes8 des |
  c4 e8 g,~ g4 r |
  r4 r8 bes8~ bes2 \bar "||"  
}

\score {
  \new Staff \with {
    instrumentName = "Trumpet in Bb"
    midiInstrument = "trumpet"
  }
  \transpose f g { \trumpetBb }
  \layout { }
  \midi {
    \tempo 2=94
  }
}
