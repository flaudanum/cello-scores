\version "2.19.84"

\layout {
    indent = 0\cm
}

%% Cello specific markups
% db = \markup { \musicglyph "scripts.downbow" }
% ub = \markup { \musicglyph "scripts.upbow" }
db = \downbow
ub = \upbow

\header{
    title = "May the Force be With You"
    composer = "John WILLIAMS"
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
    \key e \minor
    \clef "bass"
    \repeat volta 2
    {
        e2^\db fis4. g16 (a) | g2 b,4. b8 | e4. (fis8) g8 b, \tuplet 3/2 {e8 g e} | a2. b,4 | \break
        %% measure: 5
        e4. fis8 g8. (b,16) a'8. (g16) | e'2 e,4 \tuplet 3/2 {g8 fis e} | b'4 ~ \tuplet 3/2 {b8 g e} b4 b8. b16 \break
    }
    %% measure: 8
    \alternative {
        {e2. b4 }
        {e2. e4^\ub}
    }
    e2 fis4 \tuplet 3/2 {fis8 g a} | \tuplet 3/2 {g8 fis e} fis2 b8.^\ub b16^\ub| \break
    %% measure: 12
    b4 e,4 e8 c'8 \tuplet 3/2 {b8 g e} | a2. c,4^\ub | a'2 b4 ~ \tuplet 3/2 {b8 c (d)} |
    \tuplet 3/2 {c8 a c} b2 \tuplet 3/2 {e,8 f g} | \break
    %% measure: 16
    \tuplet 3/2 {a8 b c} c4 ~ \tuplet 3/2 {c8 d, (e)} \tuplet 3/2 {f8 b a} |
    \tuplet 3/2 {c8 d^1 e} e4 ~ \tuplet 3/2 {e8 e,^1 (f)} \tuplet 3/2 {c'8 b a} |
    \tuplet 3/2 {d e f} f2 d4 | \break
    %% measure: 19
    b2 b,2^\ub \bar "||" e2 fis4. g16 (a16) | g2 b,4. b8 | e4. (fis8) g8 b, \tuplet 3/2 {g'8 b, g'} | \break
    %% measure: 23
    a2. b,4 | e4. fis8 g8. (b,16) b'8. (g16) | e'2 e,4^1 \tuplet 3/2 {g8^\ub fis e} |
    b'4 ~ \tuplet 3/2 {b8 g e} b2 | \break
    %% measure: 27
    b2 b4. b8^\ub | e1^\db | e^\ub | e^\db | e^\fermata \bar "|."
    }
    \header {
        piece = "E minor"
    }
}

