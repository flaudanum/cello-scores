\version "2.23.6"

\layout {
    indent = 0\cm
    %% See Documentation/notation/line-width
    % ragged-last = ##t
}

%% Cello specific markups
% db = \markup { \musicglyph "scripts.downbow" }
% ub = \markup { \musicglyph "scripts.upbow" }
db = \downbow
ub = \upbow

\header{
    title = "Mysterious Song"
    composer = "Mysterious composer"
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
    \transpose g b
    \relative {
    \key g \minor
    \clef "bass"
    %% measure: 1
    bes,2^0 g'4^1 ees^4 | f1^0 
    \repeat volta 2
    {
        %% measure: 3
        bes,2 g'4 ees | d2.^3 bes4 | g2^3 g'4 ees | f1 | \break
        %% measure: 7
        bes,2 g'4 ees | d2.^3 bes4 | d2 g4 d | ees1^4 | d2 g4 d | ees2 f4 g | \break
        %% measure: 13
        ees2^4 bes'4^4 g^1 | f2^0 bes,4^0 f' | g2 g4 ees | d2 d4 bes | c2 c4 ees | d2 ees4 f | \break
        %% measure: 20
        r2 g4 ees | f1 |
    }
    r2 g4 ees | d2. bes4 | g1_3^\fermata \bar "|."
    }
    \header {
        piece = "Si mineur"
    }
}

