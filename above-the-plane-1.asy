if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="above-the-plane-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph3;
import three;
size(15cm,0);
currentprojection = perspective(6,2,4);
real r=3;
real ballsize=.05;
real ballheight=r/2;
pen linepen=gray+2pt;
draw(O--ballheight*Z, linepen);
draw(shift(ballheight*Z)*scale(ballsize,ballsize,ballsize)*unitsphere, surfacepen=white);
draw(shift(-r*X-r*Y)*scale(2*r,2*r,1)*unitplane, material(diffusepen=gray(0.5), emissivepen=gray(0.4), specularpen=black));
draw((-r,-r,0) -- (-r,r,0) -- (r,r,0) -- (r,-r,0) -- cycle,lightgray+2pt);

// Draw a point and a line through it.
// triple p=(2,1,0);
// triple q=2*ballheight*Z-p;
// draw (q -- p,linepen);
// draw(shift(p)*scale(ballsize,ballsize,ballsize)*unitsphere,surfacepen=white);

// Draw three parallel lines, 2 in the plane, and one through the vantage point.
draw(-r*Y+ballheight*Z -- r*Y+ballheight*Z,linepen);
draw(-X+r*Y -- -X-r*Y,linepen);
draw(X+r*Y -- X-r*Y,linepen);
