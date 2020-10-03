[top]
components : protein

[protein]
type : cell
width : 30
height : 12
delay : transport
defaultDelayTime : 100
border : nowrapped 
neighbors :				   protein(-2,-2) protein(-2,-1) protein(-2,0) protein(-2,1) protein(-2,2)
neighbors : 			   protein(-1,-2) protein(-1,-1) protein(-1,0) protein(-1,1) protein(-1,2)
neighbors : protein(0,-3)  protein(0,-2)  protein(0,-1)  protein(0,0)  protein(0,1)  protein(0,2)  protein(0,3)
neighbors : 			   protein(1,-2)  protein(1,-1)  protein(1,0)  protein(1,1)  protein(1,2)
neighbors : 			   protein(2,-2)  protein(2,-1)  protein(2,0)  protein(2,1)  protein(2,2)
initialvalue : 0
%Example sequence: P2HP2(H2P4)3
initialrowvalue :  6     000011211221111221111221111000
localtransition : protein-rule


[protein-rule]


% move P to bottom is upper surface is more occupied
rule : 0 100 { (0,0) = 1 and (0,-1) = 1 and (0,1)=1 and (1,0) = 2 and (1,1) = 2 and (1,-1) = 2 and (2,0) = 0 and (2,1) = 0 }
rule : 1 100 { (0,0) = 0 and (-1,0) = 2 and (-1,-1)=2 and (-1,1) = 2 and (-2,1) = 1 and (-2,0) = 1 and (-2,-1) = 1 }



%move P to second free spot on left if left is free and second left is free but 3rd left is occupied
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 and (0,-2) = 0 and (0,-3) = 0 and (1,-1) = 2  }
rule : 1 100 { (0,0) = 0 and (0,1) = 1 and (1,0) = 2 and (0,-1) = 0 and (0,-2)=0 }

% move P up left if left is H
rule : 0 100 { (0,0) = 1 and (0,-1) = 2 and (-1,-1)=0 and (-1,0) = 0 }
rule : 1 100 { (0,0) = 0 and (1,0) = 2 and (1,1)=1 and (0,1) = 0}


% Move P down left if left is H and upper left is P
rule : 0 100 { (0,0) = 1 and (0,-1) = 2 and (-1,-1)=1 and (1,-1)=0 }
rule : 1 100 { (0,0) = 0 and (-1,0) = 2 and (-1,1) = 1 and (-2,0)=1 }


% Move P up if left is H and upper left is P and down left is P
rule : 0 100 { (0,0) = 1 and (0,-1) = 2 and (-1,-1)=1 and (1,-1)=1 and (-1,0)=0 }
rule : 1 100 { (0,0) = 0 and (1,0) = 1 and (0,-1) = 1 and (1,-1)=2 and (2,-1)=1 }


%move P to free spot on left if left is free and second left is occupied
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 and (0,-2) != 0  }
rule : 1 100 { (0,0) = 0 and (0,1) = 1 and (0,-1)!=0 }

%move P to second free spot on left if left is free and second left is free but 3rd left is occupied
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 and (0,-2) = 0 and (0,-3) != 0  }
rule : 1 100 { (0,0) = 0 and (0,1) = 1 and (0,-2) = 1 and (0,-1)=0 }


%move H to free spot on left if left is free and second left is occupied
rule : 0 100 { (0,0) = 2 and (0,-1) = 0 and (0,-2) != 0  }
rule : 2 100 { (0,0) = 0 and (0,1) = 2  and (0,-1)!=0 }

%move H to second free spot on left if left is free and second left is free but 3rd left is occupied
rule : 0 100 { (0,0) = 2 and (0,-1) = 0 and (0,-2) = 0 and (0,-3) != 0  }
rule : 2 100 { (0,0) = 0 and (0,1) = 0 and (0,2) = 2 and (0,-1)!=0 }


%move P to free spot on left if left is free and upper left is occupied
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 and (-1,-1) != 0  }
rule : 1 100 { (0,0) = 0 and (0,1) = 1 and (-1,0)!=0 }

%move H to free spot on left if left is free and upper left is occupied
rule : 0 100 { (0,0) = 2 and (0,-1) = 0 and (-1,-1) != 0 and (0,-2) = 0  }
rule : 2 100 { (0,0) = 0 and (0,1) = 2 and (-1,0)!=0 and (0,-2)=0 }




rule : {(0,0)} 100 { t } 