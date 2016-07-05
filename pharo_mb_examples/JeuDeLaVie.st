MBTacheGeneree subclass: #MBAutomate	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'MB_TachesGenerees'!!MBAutomate commentStamp: '<historical>' prior: 0!Missing comment!!MBAutomate methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!codeAEteModifie
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^false! !!MBAutomate methodsFor: 'executer' stamp: 'rw 23/5/16 15:04'!executer
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	|  t1 |
	 t1 :=  self mon_Voisinage executer.
	 t1 :=  self trier_sur_les_valeurs_des_attributs executer:  t1.
	 t1 :=  self compter executer:  t1.
	^ self! !!MBAutomate methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!trier_sur_les_valeurs_des_attributs
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 2! !!MBAutomate methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!compter
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 3! !!MBAutomate methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!mon_Voisinage
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 1! !!MBAutomate methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiserActions
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	|  t1 |
	( t1 :=  Array new: 3)
		at: 1
		put:  MBMonVoisinage new.
	 t1
		at: 2
		put:
			(( MBTrierSurValeursAttributs new)
				changerClasseArgumentEntree: #Cellule;
				changerDimensionArgumentEntree: 1).
	 t1
		at: 3
		put:
			(( MBCompter new)
				changerClasseArgumentEntree: #Cellule;
				changerDimensionArgumentEntree: 1).
	 self actions:  t1.
	^ self! !!MBAutomate methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiser
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 super initialiser.
	 self nom: 'Automate'.
	 self proprietaire:  MBCellule.
	 self initialiserActions.
	^ self! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!MBAutomate class	instanceVariableNames: ''!!MBAutomate class methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nomRessourceInterface
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'interface'! !!MBAutomate class methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nomClasseInterface
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'SI_TacheGeneree'! !MBMathScript subclass: #MBMS_VieOuMortMathScript	instanceVariableNames: 'mon_nbVivants mon_statut'	classVariableNames: ''	poolDictionaries: ''	category: 'MB_TachesGenerees'!!MBMS_VieOuMortMathScript commentStamp: '<historical>' prior: 0!Missing comment!!MBMS_VieOuMortMathScript methodsFor: 'resultat' stamp: 'rw 23/5/16 15:04'!executer
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	( self mon_nbVivants >  self sup or: [ self mon_nbVivants < 2])
		ifTrue: [( self agent attribut: 'statut') valeur: 0].
	 self mon_nbVivants = 3
		ifTrue: [( self agent attribut: 'statut') valeur: 1].
	^ self! !!MBMS_VieOuMortMathScript methodsFor: 'parametres' stamp: 'rw 23/5/16 15:04'!sup
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^( self parametres at: 'sup') valeur! !!MBMS_VieOuMortMathScript methodsFor: 'acces - liens' stamp: 'rw 23/5/16 15:04'!mon_nbVivants
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ mon_nbVivants valeur! !!MBMS_VieOuMortMathScript methodsFor: 'acces - liens' stamp: 'rw 23/5/16 15:04'!mon_nbVivants:  t1
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 mon_nbVivants :=  t1.
	^ self! !!MBMS_VieOuMortMathScript methodsFor: 'acces - liens' stamp: 'rw 23/5/16 15:04'!mon_statut:  t1
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 mon_statut :=  t1.
	^ self! !!MBMS_VieOuMortMathScript methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nom
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'VieOuMort(MathScript)'! !!MBMS_VieOuMortMathScript methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiser
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 super initialiser.
	 nom := 'VieOuMort(MathScript)'.
	 userStr := '// utiliser un paramètre permet de modifier sa valeur à l aide du tableau de bord.##param sup = 3##ifTrue (( mon$nbVivants > sup) OR (mon$nbVivants < 2))####mon$statut = 0####endIfTrue#### ####ifTrue (mon$nbVivants = 3)####mon$statut = 1####endIfTrue##'.
	 self parametres
		at: 'sup'
		put:
			(( MBParametre new)
				nom: 'sup';
				unite: ' ';
				valeurU: 3).
	 self liens add: ( MBCapteur new: 'mon_nbVivants').
	 self mon_nbVivants:  self liens last.
	 self liens add: ( MBCapteur new: 'mon_statut').
	 self mon_statut:  self liens last.
	^ self! !MBTacheGeneree subclass: #MBModifierConditionnel	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'MB_TachesGenerees'!!MBModifierConditionnel commentStamp: '<historical>' prior: 0!Missing comment!!MBModifierConditionnel methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!codeAEteModifie
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^false! !!MBModifierConditionnel methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiserActions
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	|  t1 |
	( t1 :=  Array new: 2)
		at: 1
		put:  MBConditions new.
	 t1
		at: 2
		put:  MBModifierAttribut new.
	 self actions:  t1.
	^ self! !!MBModifierConditionnel methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiser
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 super initialiser.
	 self nom: 'ModifierConditionnel'.
	 self proprietaire:  MBAgent.
	 self initialiserActions.
	^ self! !!MBModifierConditionnel methodsFor: 'executer' stamp: 'rw 23/5/16 15:04'!executer
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 self si____Alors executer ifFalse: [^nil].
	 self modifier_attribut executer.
	^ self! !!MBModifierConditionnel methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!si____Alors
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 1! !!MBModifierConditionnel methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!modifier_attribut
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 2! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!MBModifierConditionnel class	instanceVariableNames: ''!!MBModifierConditionnel class methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nomRessourceInterface
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'interface'! !!MBModifierConditionnel class methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nomClasseInterface
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'SI_TacheGeneree'! !