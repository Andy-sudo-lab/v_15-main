var lb = _root.getBytesLoaded();
var tb = _root.getBytesTotal();
if(lb >= tb)
{
   _root.gotoAndPlay(5);
}
var f = Math.round(lb / tb * 100);
_root.loadbar.gotoAndStop(f);
