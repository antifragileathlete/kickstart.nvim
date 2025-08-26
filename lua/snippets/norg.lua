local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node -- You definitely need t for text!
-- local i = ls.insert_node
-- local rep = require('luasnip.extras').rep -- You'll need rep for repeated values

return {
  s('weekly', {
    t {
      '* Weekly Scrum {https://app-eu.wrike.com/workspace.htm?acc=1891048#folder/1477588191/tableV2?spaceId=836707652&viewId=304740746&sidePanelItemId=1477588191}[link]',
    },
    t { '', '** Woran habt ihr letzte Woche gearbeitet?' },
    t { '', '*** Adrian' },
    t { '', '*** Matheusz' },
    t { '', '*** Jannik' },
    t { '', '', '** Was lief gut? Was lief nicht so gut? Wo gab es Probleme?' },
    t { '', '*** Adrian' },
    t { '', '*** Matheusz' },
    t { '', '*** Jannik' },
    t { '', '', '** Was habt ihr diese Woche geplant? Wobei könntet ihr Hilfe gebrauchen und was für eine Art von Hilfe?' },
    t { '', '*** Adrian' },
    t { '', '*** Matheusz' },
    t { '', '*** Jannik' },
  }),
  s('daily', {
    t { '* Daily Scrum' },
    t { '', '** Woran habt ihr gestern gearbeitet?' },
    t { '', '*** Adrian' },
    t { '', '*** Matheusz' },
    t { '', '*** Jannik' },
    t { '', '', '** Was lief gut? Was lief nicht so gut? Wo gab es Probleme?' },
    t { '', '*** Adrian' },
    t { '', '*** Matheusz' },
    t { '', '*** Jannik' },
    t { '', '', '** Was habt ihr diese heute geplant? Wobei könntet ihr Hilfe gebrauchen und was für eine Art von Hilfe?' },
    t { '', '*** Adrian' },
    t { '', '*** Matheusz' },
    t { '', '*** Jannik' },
  }),
}
