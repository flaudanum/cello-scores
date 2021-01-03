\version "2.21.6"

\layout {
    indent = 0\cm
}

%% Cello specific markups
% db = \markup { \musicglyph "scripts.downbow" }
% ub = \markup { \musicglyph "scripts.upbow" }
db = \downbow
ub = \upbow

%% Common markups
rit = \markup \italic "rit."
moltorit = \markup \italic "molto rit."
rubato = \markup \italic "rubato"
atempo = \markup \italic "a tempo"

\header{
    title = "Jurassic Park - Main theme"
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
       (stretchability . 40))
}

\layout {
  \context {
    \Voice
    \override TextScript.padding = #3
  }
  \context {
    \Staff
    \override TextScript.padding = #3
  }
}

\score {
    \header {
        piece = "B flat major"
    }
    \relative {
    \override TextScript.outside-staff-padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #5
    \key bes \major
    \clef "bass"
    %% measure: 1
    \time 6/4 r1. | \time 6/4 r1. | \time 3/4  r2.-\rit | \break
    %% measure: 4
    \tempo "Gently" 4 = 54
    f2.-\rubato\p | bes2 ~ 8 16 a16 | \break
    %% measure: 6
    bes4 c4. bes16 c16 | c2 ~ 8 bes16 a16 | \break
    %% measure: 8
    \time 4/4
    bes1 | r8-\rit d16 ees16 f8 d8 c8 bes8 g8 ees8 \bar "||" \break
    %% measure: 10
    bes'4\mp-\atempo ~ 8 16 a16 bes4 ~ 8 16 a16 | bes8. c16 c8. ees16 4 ~ 8 d16 bes16 | \break
    %% measure: 12
    c8. a16 f8 d'16 bes16 c4 ~ 8 f16 bes,16  | \time 5/4 ees8. d16 8. c16 2 ~ 8-\moltorit bes16 a16 | \pageBreak

    %% measure: 14
    \time 4/4 bes4 ~ 8 16 a16 bes4 ~ 8 16 a16 | bes8. c16 8. ees16 4 ~ 8 d16 bes16 | \break
    %% measure: 16
    c8. a16 f8 d'16 bes16 c4 ~ 8 f16 bes,16 | ees8. \< d16 d8. c16 4 ~ 8 bes16 a16 \! \bar "||" \break
    %% measure: 18
    \mark \markup { \bold { Moving, slightly faster } }
    bes4\mf ~ 8 16 a16 bes4 ~ 8 16 a16 | a16 bes8. f8 bes,8 aes'4 ~ 8 bes16 a16 | \break
    %% measure: 20
    bes4 ~ 8 16 a16 bes4 ~ 8 16 a16 | bes4 ~ 8 ees16 d16 ees4 ~ 8 bes16 a16 | \break
    %% measure: 22
    bes2 \< a2-\rit \!  | bes1\>-\atempo  | \break
    %% measure: 24
    r2 r4  r8 bes,16 a16 \! \bar "||" bes4 ~ 8 16 a16 bes4 ~ 8 16 a16 | \break
    %% measure: 26
    bes8. c16 c8. ees16 ees4 ~ 8 d16 bes16 | c8. a16 f8 d'16 bes16 c4 ~ 8 f16 bes,16 |


    }
}

