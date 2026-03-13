if(_root.SBflg == 1)
{
   var val = Math.round(_root.ectP / _root.ectPmax * 100);
   if(val >= 100)
   {
      _parent._parent._parent.uaaaMC.play();
   }
}
