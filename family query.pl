
% UMUT CAN AKDAG 171805064

    father(bekir,zeliha). %(bekir is zeliha's father).
    father(abdullah,murat). %(abdullah is murat's father).
    father(abdullah,erkan2). %(abdullah is ekran2's father).
    father(abdullah,sermin). %(abdullah is sermin's father).
    father(bulent,zumra).  %(bekir is umut's father).
    father(bulent,esra).  %(bekir is umut's father).
    father(bulent,timur).  %(bekir is umut's father).
    father(bekir,umut).  %(bekir is umut's father).
    father(bulent,ada).  %(bekir is umut's father).
    father(bulent,hilal).  %(bekir is umut's father).
    father(bekir,mehmet2). %(bekir is mehmet2's father).
    father(mehmet,akgul). %(mehmet is akgul's father).
    father(bekir2,mehmet). %(bekir2 is mehmet's father).
    father(bekir2,efe).    %(bekir2 is efe's father).
    father(mehmet3,bekir2). %(mehmet3 is bekir2's father).
    father(mehmet,bekir).   %(mehmet is bekir's father).
    father(mehmet,bulent).  %(mehmet is bulent's father).
    father(rasit,sebahat).  %(rasit is sebahat's father).
    father(rasit,elmas).  %(rasit is elmas's father).
    father(halil,kete).   %(halil is kete's father).
    father(bekir2,ali).   %(bekir2 is ali's father).
    father(mehmet2,deniz). %(mehmet2 is deniz's father).
    father(ahmet,kayra).  %(ahmet is kayra's father).
    father(bekir3,veli).  %(bekir3 is veli's father).
    father(rasit,huseyin).%(rasit is huseyin's father).

    mother(akgul,erkan2). %(akgul is erkan2's mom).
    mother(akgul,murat). %(akgul is murat's mom).
    mother(akgul,sermin). %(akgul is sermin's mom).
    mother(elmas,mehmet2). %(elmas is mehmet2's mom).
    mother(elmas,umut).   %(elmas is umut's mom).
    mother(elmas,zeliha).   %(elmas is zeliha's mom).
    mother(sultan,veli).   %(sultan is veli's mom).
    mother(sultan,bekir2). %(sultan is bekir2's mom).
    mother(asli,ali).   %(asli is ali's mom).
    mother(asli,efe).    %(asli is efe's mom).
    mother(asli,mehmet). %(asli is mehmet's mom).
    mother(asli,erkan).  %(asli is erkan's mom).
    mother(gullu,kete).  %(gullu is kete's mom).
    mother(rasit,aise). %(aise is rasit's mom).

    mother(ayse,sebahat).  %(ayse is sebahat's mom).
    mother(ayse,elmas).    %(ayse is elmas's mom).
    mother(kete,bekir).    %(kete is bekir's mom).
    mother(kete,akgul).   %(kete is akgul's mom).
    mother(zeliha,kayra). %(zeliha is kayra's mom).
    mother(sevil,deniz).  %(sevil is deniz's mom).
    mother(X,Y) :- father(Y,Z),parent(X,Z).

    brother(X,Y) :- father(A,X),father(A,Y),male(X).  %brother relationship
    sister(X,Y) :- father(A,X),father(A,Y),female(X).   %sister relationship
  %genders
    male(bekir).
    male(efe).
    male(umut).
    male(mehmet).
    male(ahmet).
    male(deniz).
    male(bulent).
    male(kayra).
    male(rasit).
    male(erkan).
    male(mehmet2).
    male(mehmet3).
    male(erkan).
    male(erkan2).
    male(murat).
    male(huseyin).
    female(ayse).
    female(sermin).
    female(akgul).
    female(elmas).
    female(kete).
    female(asli).
    female(sultan).
    female(sevil).
    female(zeliha).


%married relationship
    parent(bekir,elmas).
    parent(mehmet2,sevil).
    parent(mehmet,kete).
    parent(ahmet,zeliha).
    parent(abdullah,akgul).
    parent(rasit,ayse).
    parent(mehmet,ayse).


    uncle(X,Y):- (   father(Z,Y);mother(Z,Y)),brother(X,Z),not(father(X,Y)),male(X).  %uncle relationship
    aunty(X,Y):- (   father(Z,Y),sister(X,Z),not(mother(X,Y)),female(X)). %aunt relationship
    grandpa(X,Y):- (   father(Z,Y);mother(Z,Y)),father(X,Z),not(father(X,Y)),male(X). %grandmother relationship
    grandma(X,Y):- (   father(Z,Y);mother(Z,Y)),mother(X,Z),not(mother(X,Y)),female(X). %grandmother relationship
    granduncle(X,Y) :- (   grandpa(Z,Y);grandma(Z,Y)),brother(X,Z),male(X) .    %granduncle relationship








