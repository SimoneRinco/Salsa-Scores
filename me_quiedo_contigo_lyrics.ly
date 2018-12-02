\version "2.18.2"

global = {
  \key g \minor
  \time 2/2
}

chorus_melody = \relative c'' {
  \global
  r2 r8 <bes ees> <ees g> <ees g> | \tuplet 3/2 {<ees g>2 <d g>4} <c g'>4 <ees g>~ |
  <ees g> <d f> r8 <bes d> <c ees> <d f> | <ees g>4. <d f>8~ <d f> <bes ees> <c f>4 | r4 <a c> <c ees> <c ees>8 <c ees>~ |
  <c ees>8 <bes d>4 <a c>8 <a c>4 <g bes>4
  
}

chorus_lyrics = \lyricmode {
  Que yo me que -- do con -- ti -- go
  Se -- ré tu-a -- man -- te-y tu dios
  Se -- ré tu pan y tu vi -- no
}

coda_melody = \relative c'' {
  \global
  <g bes>4 <bes d> <bes d g> <bes d g>8 <bes d g>~ | <bes d g>8 <bes d g>4. r4 r8 <g bes>~ |
  <g bes>8 <bes ees>4 <c ees g>8~ <c ees g>8 <c ees g>4 <c ees g>8 | <bes ees g> <a d f>4 <g c ees>8 <f bes d>8 <f bes d> r4 |
  r8 <f bes d>4 <bes d f>8~ <bes d f> <bes d f>8 <bes d f> <c ees g>8~ | <c ees g>8 <bes d f>4 <g bes ees>8 <a c f>4 r4 |
  r4 <f a c>4 <a c ees>4 <a c ees>4 | <a c ees>8( <g bes d>4) <f a c>8 <g bes>4 r | 
  
  
}

coda_lyrics = \lyricmode {
  Y si tu me quie -- res
  Sin pen -- sar -- lo me que -- do-a tu la -- do
  Que-es lo que hi ci -- ste mu -- jer
  Que estoy tan ena_ -- mo -- rao  
}

\score {
  <<
    \new Staff { \chorus_melody }
    \addlyrics { \chorus_lyrics }
  >>
  \layout { }
  \midi {
    \tempo 4=184
  }
}

\score {
  <<
    \new Staff { \coda_melody }
    \addlyrics { \coda_lyrics }
  >>
  \layout { }
  \midi {
    \tempo 4=184
  }
}
