\version "2.18.2"

global = {
  \time 2/2
}

verse_one_clapping = {
  \global
  \compressFullBarRests
  R1*4 | \repeat volta 7 { r2 c4 r | r2 c4 r } | r2 c4 r | r1 |
}

pre_chorus_congas = \drummode {
  \global  
  cgh8 cgh^"t" ssh^"+" cgh^"t" r4 cgl8^"o" cgl^"o" | cgh4^"o" r8 cgh^"o" r8 cgh^"o" cgl4^"o" |
}

pre_chorus_bongos = \drummode {
  \global  
  boh4^"t" r8 boh boh4^"t" r8 boh^"t" | boh4 r8 boh r4 boh^"t" |
}

pre_chorus_guira = {
  \global
  \partial 8 c16 c | c8 c r c c c r c16 c | c4 c c8 c r c16 c |
}

chorus_campana = \drummode {
  \global
  r4 boh8 boh8 r4 boh8 boh | r4 boh8 boh r4 boh |
}

chorus_one_b_last_bar = {
  \global
  c4 r r c-> | r2. c4 |
}

verse_two_pauses = {
  \global
  \compressFullBarRests
  R1*3 | r2 c4 c |
}

congas_finale = {
  \global
  r4 r8 c r c c4 | r4 r8 c c c c4 |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  \new RhythmicStaff \with {
  } \verse_one_clapping
}

\score {
  \new DrumStaff \with {
    drumStyleTable = #congas-style
    \override StaffSymbol #'line-count = #2
  } \pre_chorus_congas
}

\score {
  \new DrumStaff \with {
    drumStyleTable = #bongos-style
    \override StaffSymbol #'line-count = #2
  } \pre_chorus_bongos
}

\score {
  \new RhythmicStaff \with {
  } \pre_chorus_guira
}

\score {
  \new DrumStaff \with {
    drumStyleTable = #bongos-style
    \override StaffSymbol #'line-count = #2
  } \chorus_campana
}

\score {
  \new RhythmicStaff \with {
  } \chorus_one_b_last_bar
}

\score {
  \new RhythmicStaff \with {
  } \verse_two_pauses
}

\score {
  \new RhythmicStaff \with {
  } \congas_finale
}

%\score {
%  \new DrumStaff \with {
%    drumStyleTable = #bongos-style
%    \override StaffSymbol #'line-count = #2
%  } \break_two_bongos
%}



