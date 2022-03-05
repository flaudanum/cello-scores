\version "2.23.6"

\layout {
    indent = 0\cm
}

%% Cello specific markups
% db = \markup { \musicglyph "scripts.downbow" }
% ub = \markup { \musicglyph "scripts.upbow" }
db = \downbow
ub = \upbow

\header{
    title = "Experience"
    composer = "Ludovico ENAUDI"
}

%% Adds space between the header and the first line
\markup \vspace #1

\paper {
  %% Sets spacing between lines
  system-system-spacing =
    #'((basic-distance . 19)
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60))
}

\score {
    \relative {
    \key fis \minor
    \clef "bass"
    cis4_4 cis_4 d^0 cis | cis cis d cis | cis cis d cis | cis_4 b_2 cis d^0 \break
    cis cis d cis | cis cis d cis | cis cis d cis | cis_4 b_2 a_1 b_2 \break
    \repeat volta 2{
      cis8_1 (a_4) cis (a) cis (a) cis (a) | cis (a) cis (a) cis (a) cis (a) | 
      cis (gis) cis (gis) cis  (gis) cis (gis) | cis4_4 b_2 cis d_0 \break
    }
    \repeat volta 2{
      cis'8^1 (a^4) cis (a) cis (a) cis (a) | cis (a) cis (a) cis (a) cis (a) | 
      cis^1 (gis^2) cis (gis) cis  (gis) cis (gis) | cis4^1 b^1 cis^3 d^4 \break
    }
    }
    \header {
        piece = "C# phrygian"
    }
}

