\version "2.18.2"

global = {
  \key a \minor
  \time 2/2
}

chordNames = \chordmode {
  \global  
}

chorus_melody = \relative c' {
  \global
  \partial 4 <e a c>8 <e b' d> |
  <a c e>4 <e b' e> <e a e'>4. <a c e>8~ |
  <a c e>4 r r <e gis e'>8 <e a e'> |
  <gis b d>4 <e a d> <d gis d'>4. <e b' d>8~ |
  <e b' d>4 r r4. <e b' d>8 |
  <b' d f>8 <b d f>4 <b d f>8 <b d f>4 <e, d' f>8 <a c e>~ |
  <a c e>8 <a c e>4 <a c e>8~ <a c e> <a c e> <a c e>4 |
  <gis b d>4 <e b' d> <d c' e>4. <c a' c>8~ <c a' c>2 r2 |
  
}

chorus_verse = \lyricmode {
  Tu me quie -- res de -- jar,
yo no quie -- ro su -- frir
con -- ti -- go me voy mi san -- ta aun -- que me cue -- ste mo -- rir
  
}

chorus_two_melody = \relative c' {
  \global
  \partial 4 <e a c>8 <e b' d> | <a c e>4 <e c' e>8 <e c' e> <e c' e>4 <e c' e>8 <e c' e> |
  <b' d f>4 <b d f>8 <b d f>~ <b d f> <gis b d>4 <gis b>8~ | <gis b> <gis b> <gis b> <gis b> <gis b d>4 <e a c>8 <e gis b> |
  \tuplet 3/1 {<e a e'>2 <e gis d'>4} <e c'>4 r2 |
  
  
}

chorus_two_verse = \lyricmode {
 Tu me quie -- res de -- jar en la car -- re -- te -- ra
y-e -- so que tu quie -- res no pue -- de ser. 
}


\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \chorus_melody }
    \addlyrics { \chorus_verse }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}

\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \chorus_two_melody }
    \addlyrics { \chorus_two_verse }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}

