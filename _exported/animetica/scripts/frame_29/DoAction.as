function AinitSet(no)
{
   var _loc1_;
   var _loc0_;
   switch(no)
   {
      case 0:
         AstartFlg = false;
         bfL = false;
         bfAS = false;
         bfO = false;
         bfR1 = 0;
         bfR2 = 0;
         transP1 = 0;
         transP2 = 0;
         iFini = false;
         normalIn = false;
         tejoh = false;
         TPno = 0;
         cCo = 0;
         CC = 0;
         rtCo = 0;
         SBflg = 1;
         ectP = 0;
         ectPmax = 100;
         break;
      case 1:
         eneNo = 10;
         pOrderO = new Array(0,5,1,6,2,7,3,8,9,4,10);
         pOrderU = new Array(0,1,2,3,4);
         pOrderL = new Array(0,5,7,9,10);
         copyFlg = new Array();
         pFlg = new Array();
         pf = new Array();
         _loc1_ = 0;
         while(_loc1_ <= 10)
         {
            pf[_loc1_] = _loc0_ = true;
            pFlg[_loc1_] = _loc0_;
            copyFlg[_loc1_] = _loc0_;
            _loc1_ = _loc1_ + 1;
         }
         volumeValP = new Array(0,4,8,12,20,32);
         volumeValE = new Array(0,3,6,9,13,18);
         vol = new Array();
         _loc1_ = 1;
         while(_loc1_ <= 4)
         {
            vol[_loc1_] = 3;
            _loc1_ = _loc1_ + 1;
         }
         transitionVal = new Array();
         transitionVal[1] = new Array(0,1,2);
         transitionVal[2] = new Array(2,0,1);
         transitionVal[3] = new Array(1,2,0);
         transitionVal[4] = new Array(0,1,3);
         simpleP = new Array();
         simpleP[1] = "bhcdmoejpfkz";
         simpleP[2] = "HloRrkqEgHsy";
         simpleP[3] = "acdbmUjIfnIv";
         simpleP[4] = "cfpkqIAItIw";
         ITno = 1;
         patNo = 1;
         myPattern = "";
         finishP = 0;
         BGMno = 0;
      default:
         return;
   }
}
initialSet(1);
loadProcessing();
eroSound();
textDataSet();
itemSet();
initialSet(2);
AinitSet(1);
enemyIntelSet();
