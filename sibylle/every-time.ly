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
    \relative {
    \key g \minor
    \clef "bass"
    %% measure: 1
    bes,2 g'4 ees | f1 
    \repeat volta 2
    {
        %% measure: 3
        bes,2 g'4 ees | d2. bes4 | g2 g'4 ees | f1 | bes,2 g'4 ees | d2. bes4 | \break
        %% measure: 9
        ees1 | d2 g4 d | ees2 f4 g | ees2 bes4 g | f'2 bes,4 f' | g2 g4 ees | d2 d4 bes | c2 c4 ees | \break
        %% measure: 17
        d2 ees4 f | r2 g4 ees | f1 |
    }
    r2 g4 ees | d2. bes4 | g1 \bar "|."
    }
    \header {
        piece = "G minor"
    }
}

