\version "2.22.0"

\layout {
    indent = 0\cm
}

%% Cello specific markups
db = \downbow
ub = \upbow

ext = \markup "x"

%% Common markups
rit = \markup \italic "rit."
moltorit = \markup \italic "molto rit."
rubato = \markup \italic "rubato"
atempo = \markup \italic "a tempo"

\header{
    title = "1ère Gnossienne"
    composer = "Erik Satie"
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
    % % Removes the time notation
    % \context {
    %   \Staff
    %   \remove Time_signature_engraver
    % }
    raggedright = ##t
    \context {
      \Staff
      whichBar = #""
      \remove "Time_signature_engraver"
    }
}


\score {
    \header {
        piece = "Mode IV de Do mineur harmonique (Fa dorien #11)"
    }
    \relative c'' {
    \override TextScript.outside-staff-padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #5
    \key f \minor
    \clef "G"
    %% Line 1
    r4 c8[ees] d4 c4 \acciaccatura c8 b2 \acciaccatura c8 b2 r4 c8[ees] d4 c4 \acciaccatura e8 f2 \acciaccatura e8 f2 \break
    %% Line 2
    r4 c8[ees] d4 c4 \acciaccatura c8 b2 \acciaccatura aes8 g2 \acciaccatura f8 g4 \acciaccatura f8 g2 ~ g8 r8 \acciaccatura aes8 g4 \acciaccatura g8 f4  f2 ~ f2 ~ f1 \break
    %% Line 3
    c2 f4 r4 c'8[ees] d4 c4 \acciaccatura c8 b2 \acciaccatura c8 b2 r4 c8[ees] d4 c4 \break
    %% Line 4
    \acciaccatura e8 f2 \acciaccatura e8 f2 r4 c8[ees] d4 c4 \acciaccatura c8 b2 \acciaccatura aes8 g2 \acciaccatura f8 g4 \acciaccatura f8 g2 ~ g8 r8 \break
    %% line 5
    \acciaccatura aes8 g4 \acciaccatura g8 f4  f2 ~ f2 ~ f1 c2 f4 \acciaccatura aes8 bes2 \acciaccatura aes8 g2 \acciaccatura aes8 bes2 \acciaccatura aes8 g2 \acciaccatura aes8 g4 \acciaccatura g8 f4  f2 ~ f2 ~ f1 \break
    %% Line 6
    c2 f4 \acciaccatura aes8 bes2 \acciaccatura aes8 g2 \acciaccatura aes8 bes2 \acciaccatura aes8 g2 \acciaccatura aes8 g4 \acciaccatura g8 f4  f2 ~ f2 ~ f1 \break
    %% Line 7
    c2. r8 c'8[d e] f8[g b g] f4 \acciaccatura g8 f4 ~ f2 \acciaccatura g8 f2 \acciaccatura f8 e2 \break
    %% Line 8
    \acciaccatura des8 c2 \acciaccatura c8 b2 \acciaccatura aes8 g4 \acciaccatura g8 f4 f2 ~ f2 ~ f1 c2 f4 r8
    % %% measure: 1
    % \time 6/4 r1. | \time 6/4 r1. | \time 3/4  r2.-\rit | \break
    % %% measure: 4
    % \tempo "Gently" 4 = 54
    % f2.^2\db-\rubato\p | bes2^2\ub ~ 8 16 (a16) | \break
    % %% measure: 6
    % bes4\ub c4. bes16 (c16) | c2\db ~ 8 bes16 (a16) | \break
    % %% measure: 8
    % \time 4/4
    % bes1\db | r8-\rit d16^1\ub (ees16^2) f8^4 d8^1 c8^4 bes8^2 g8^1 ees8^4 \bar "||" \break
    % %% measure: 10
    % bes'4\mp-\atempo^2 ~ 8 16 (a16) bes4 ~ 8 16 (a16) | bes8.^2 (c16^4) c8.^4 (ees16^1) 4\db ~ 8 d16^1\db bes16^4 | \break
    % %% measure: 12
    % c8.^4 (a16^1) f8^4 d'16^1 bes16^4 c4^4\db ~ 8 f16^2 bes,16^2  | \time 5/4 ees8.^2 (d16^1) 8. (c16^4) 2\db ~ 8-\moltorit bes16\ub (a16) | \pageBreak

    % %% measure: 14
    % \time 4/4 bes4 ~ 8 16 (a16) bes4 ~ 8 16 (a16) | bes8. (c16) 8. (ees16^1) 4 ~ 8 d16^1\db bes16^4 | \break
    % %% measure: 16
    % c8.^4\db (a16) f8 d'16^1 bes16^4 c4^4\db ~ 8 f16^2\db bes,16^2 | ees8.^2 \< (d16^1) d8.^1 (c16^4) 4\db ~ 8 bes16\db a16 \! \bar "||" \break
    % %% measure: 18
    % \mark \markup { \bold { Moving, slightly faster } }
    % bes4\db\mf ~ 8 16 (a16) bes4 ~ 8 16 (a16) | a16^1 bes8.^2 f8^4 bes,8^4 aes'4^1 ~ 8 bes16^2 (a16^1) | \break
    % %% measure: 20
    % bes4\db ~ 8 16 (a16) bes4 ~ 8 16 (a16) | bes4 ~ 8 ees16^2 (d16^1) ees4 ~ 8 bes16^2 (a16) | \break
    % %% measure: 22
    % bes2 \< a2-\rit \!  | bes1\>-\atempo  | \break
    % %% measure: 24
    % r2 r4  r8 bes,16^4\ub (a16^3) \! \bar "||" bes4\db ~ 8 16 (a16) bes4 ~ 8 16 (a16) | \break
    % %% measure: 26
    % bes8.\db (c16^1) c8. (ees16^4) ees4\db ~ 8 d16\db^0 bes16^2 | c8.^4\db (a16^1) f8^4 d'16 bes16 c4 ~ 8 f16 bes,16 | \pageBreak

    % %% measure: 28
    % ees8.^2 (d16^1) d8. (c16^4) c4 ~ 8 bes16^2 (a16^1) | bes4 ~ 8 16 (a16) bes4 ~ 8 16 (a16) | \break
    % %% measure: 30
    % bes8-\markup \italic "cresc. poco a poco" f8 f'8 ees16 (d16) ees4 ~ 8 f16\db c16 | ees8. (d16) c8 f16 c16 ees4 ~ 8 f16\db c16 | \break
    % %% measure: 32
    % ees8. \< (d16) c8 f16 g16 a4^1\db ~ a8 bes16\ub (a16) \! | bes8\f f8 ees8 bes'16\ub (a16) bes8 f8 ees8 bes'16\ub (a16) | \break
    % %% measure: 34
    % a16\db bes8.\ub f8 bes,8 aes'4^1 ~ 8 bes16^2\ub (a16) | bes8 f8 ees8 bes'16\ub (a16) bes8 f8 ees8 bes'16\ub (a16) | \break
    % %% measure: 36
    % a16\db bes8.\ub f8 bes,8 bes'4^2 (a8)^1 bes16 (a16) | bes8 \> f8 \! ees8\mf bes'16\ub (a16) bes8 f8 ees8 bes'16\ub (a16) | \break
    % %% measure: 38
    % \time 2/4 a16\db bes8.\ub ees,8 \< c8^1 \! | \time 4/4 bes'2^4\f \< a4^3\ub ~ 8 bes16\db (a16) \! | \break
    % %% measure: 40
    % bes1\ub \> | bes1\fermata\mp \bar "||"

    }
}

