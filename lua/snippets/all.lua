local ls = require 'luasnip'
local s = ls.snippet
-- local t = ls.text_node
local i = ls.insert_node
-- local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt -- Import fmt

-- Dateiname z. B.: ~/.config/nvim/snippets/tex.lua oder all.lua
return {
  s('beschluss', {
    fmt(
      [[
Beschluss des Betriebsrats zur Unterzeichnung der Betriebsvereinbarung "{1}"

In der ordnungsgemäß einberufenen Betriebsratssitzung am {2} hat der Betriebsrat der {3} folgenden Beschluss gemäß § 33 BetrVG gefasst:

Beschluss:
Der Betriebsrat beschließt, der mit dem Arbeitgeber verhandelten Betriebsvereinbarung "{1}" in der vorliegenden Fassung vom {4} zuzustimmen und diese zu unterzeichnen.

Der Betriebsratsvorsitzende {5} wird beauftragt, die Betriebsvereinbarung im Namen des Betriebsrats zu unterzeichnen und dem Arbeitgeber die Zustimmung formell mitzuteilen.

Stimmenverhältnis:
Ja-Stimmen: {6}, Nein-Stimmen: {7}, Enthaltungen: {8}

Ort, Datum: {9}

Unterschrift:
_____________________________

{5}, Betriebsratsvorsitzende*r
]],
      {
        i(1, 'Titel der Betriebsvereinbarung'),
        i(2, 'TT.MM.JJJJ'),
        i(3, 'Name des Unternehmens'),
        i(4, 'Datum der Vereinbarung'),
        i(5, 'Name Vorsitzende*r'),
        i(6, 'Zahl'),
        i(7, 'Zahl'),
        i(8, 'Zahl'),
        i(9, 'Ort, TT.MM.JJJJ'),
        -- Note: rep(1) and rep(5) are handled automatically by fmt because
        -- fmt reuses the same node if the index (e.g., {1} or {5}) appears multiple times.
        -- There's no need for an explicit rep() call within fmt's node list.
      }
    ),
  }),
}
