#!/usr/bin/env python3
"""Generate vim colourscheme"""

import sys

from fabulous.xterm256 import rgb_to_xterm  # type: ignore
from grapefruit import Color  # type: ignore

new_vim_colour = []


def html2xterm256(colour):
    r, g, b = Color.HtmlToRgb(colour)
    r = int(r * 255)
    g = int(g * 255)
    b = int(b * 255)
    return rgb_to_xterm(r, g, b)


for line in open(sys.argv[1]):
    _tmp = line.split()
    _tmp_line = []
    for _t in _tmp:
        if "guifg=" in _t:
            html_colour = _t.split("guifg=")[1]
            if html_colour[0] != "#":
                if html_colour == "NONE":
                    _tmp_line.append("ctermfg=NONE")
                continue
            c = html2xterm256(html_colour)
            _tmp_line.append("ctermfg=%d" % c)
        if "guibg=" in _t:
            html_colour = _t.split("guibg=")[1]
            if html_colour[0] != "#":
                if html_colour == "NONE":
                    _tmp_line.append("ctermbg=NONE")
                continue
            c = html2xterm256(html_colour)
            _tmp_line.append("ctermbg=%d" % c)
        if "gui=" in _t:
            _term = _t.split("gui=")[1]
            _tmp_line.append("cterm=%s" % _term)
        _tmp_line.append(_t)
    new_vim_colour.append(" ".join(_tmp_line))

print("\n".join(new_vim_colour))
