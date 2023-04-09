\version "2.23.6"

\layout {
    indent = 2\cm
    %% See Documentation/notation/line-width
    line-width = #150
    % ragged-right = ##t
}

%% Cello specific markups
% db = \markup { \musicglyph "scripts.downbow" }
% ub = \markup { \musicglyph "scripts.upbow" }
db = \downbow
ub = \upbow

\header{
    title = "Passamezzo Burger"
    composer = "Sibylle Laudarin & Sacha Dessandier"
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
    <<
    \new Staff \with {
    instrumentName = "Cello Sib"
    } \relative  {
        \clef "bass" 
        \key d \minor 
        \time 4/2
        \repeat volta 2 {g2^\markup{pizz.} f g d | g f g4 d g,2} \break
        \repeat volta 2 {d''2^"pizz." c bes a | d c bes4 a g2} \break
        \repeat volta 2 {g2^"arco" f g d | g f g4 d g,2} \break
        \repeat volta 2 {g'2^"arco" a bes a | bes c d4 fis, g2}
    }
    \new Staff \with {
    instrumentName = "Cello Sacha"
    } \relative  {
        \clef "bass" 
        \key d \minor 
        \time 4/2
        \repeat volta 2 {g2^"pizz." f g d | g f g4 d g,2} \break
        \repeat volta 2 {g'2^"pizz." f g d | g f g4 d g,2} \break
        \repeat volta 2 {d''2^"arco" c d a | d c d4 a bes2} \break
        \repeat volta 2 {g2^"arco" f g d | g f g4 d g,2}
    }
    >>
}