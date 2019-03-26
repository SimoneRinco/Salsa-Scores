\version "2.18.2"

global = {
  \key f \minor
  \time 2/2
}

% se fundan...
bass_i = \relative c, {
  \global
  c'4. g'8~ g4 c | g4. g8 c,4 c8 c' | f,4. f8~ f4 r |
}

% brass bridge 1
bass_ii = \relative c, {
  \global
  c'4.^"C7" g'8~ g4 c,8^"F-" f~ | f8 f4 c8~^"C7" c4 f^"F-" |
}

% brass bridge 2
bass_iii = \relative c, {
  \global
  \repeat volta 4
  {f'4. a8~ a4 bes~ | bes4. g8~ g4 g | c,2 e2 |}
  \alternative {
  {f4 r8 c f4 r |}
  {f4 r8 c8~ c4 f |}
  }
  
}


\score {
  \new Staff \with {
  } { \clef "bass" \bass_i }
}

\score {
  \new Staff \with {
  } { \clef "bass" \bass_ii }
}

\score {
  \new Staff \with {
  } { \clef "bass" \bass_iii }
}
