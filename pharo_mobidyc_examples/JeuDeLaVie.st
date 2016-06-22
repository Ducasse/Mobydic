MobidycTacheGeneree subclass: #MobidycAutomate	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'MB_TachesGenerees'!!MobidycAutomate commentStamp: '<historical>' prior: 0!Missing comment!!MobidycAutomate methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!codeAEteModifie
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^false! !!MobidycAutomate methodsFor: 'executer' stamp: 'rw 23/5/16 15:04'!executer
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	|  t1 |
	 t1 :=  self mon_Voisinage executer.
	 t1 :=  self trier_sur_les_valeurs_des_attributs executer:  t1.
	 t1 :=  self compter executer:  t1.
	^ self! !!MobidycAutomate methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!trier_sur_les_valeurs_des_attributs
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 2! !!MobidycAutomate methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!compter
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 3! !!MobidycAutomate methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!mon_Voisinage
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 1! !!MobidycAutomate methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiserActions
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	|  t1 |
	( t1 :=  Array new: 3)
		at: 1
		put:  MobidycMonVoisinage new.
	 t1
		at: 2
		put:
			(( MobidycTrierSurValeursAttributs new)
				changerClasseArgumentEntree: #Cellule;
				changerDimensionArgumentEntree: 1).
	 t1
		at: 3
		put:
			(( MobidycCompter new)
				changerClasseArgumentEntree: #Cellule;
				changerDimensionArgumentEntree: 1).
	 self actions:  t1.
	^ self! !!MobidycAutomate methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiser
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 super initialiser.
	 self nom: 'Automate'.
	 self proprietaire:  MobidycCellule.
	 self initialiserActions.
	^ self! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!MobidycAutomate class	instanceVariableNames: ''!!MobidycAutomate class methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nomRessourceInterface
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'interface'! !!MobidycAutomate class methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nomClasseInterface
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'SI_TacheGeneree'! !MobidycMathScript subclass: #MobidycMS_VieOuMortMathScript	instanceVariableNames: 'mon_nbVivants mon_statut'	classVariableNames: ''	poolDictionaries: ''	category: 'MB_TachesGenerees'!!MobidycMS_VieOuMortMathScript commentStamp: '<historical>' prior: 0!Missing comment!!MobidycMS_VieOuMortMathScript methodsFor: 'resultat' stamp: 'rw 23/5/16 15:04'!executer
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	( self mon_nbVivants >  self sup or: [ self mon_nbVivants < 2])
		ifTrue: [( self agent attribut: 'statut') valeur: 0].
	 self mon_nbVivants = 3
		ifTrue: [( self agent attribut: 'statut') valeur: 1].
	^ self! !!MobidycMS_VieOuMortMathScript methodsFor: 'parametres' stamp: 'rw 23/5/16 15:04'!sup
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^( self parametres at: 'sup') valeur! !!MobidycMS_VieOuMortMathScript methodsFor: 'acces - liens' stamp: 'rw 23/5/16 15:04'!mon_nbVivants
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ mon_nbVivants valeur! !!MobidycMS_VieOuMortMathScript methodsFor: 'acces - liens' stamp: 'rw 23/5/16 15:04'!mon_nbVivants:  t1
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 mon_nbVivants :=  t1.
	^ self! !!MobidycMS_VieOuMortMathScript methodsFor: 'acces - liens' stamp: 'rw 23/5/16 15:04'!mon_statut:  t1
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 mon_statut :=  t1.
	^ self! !!MobidycMS_VieOuMortMathScript methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nom
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'VieOuMort(MathScript)'! !!MobidycMS_VieOuMortMathScript methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiser
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 super initialiser.
	 nom := 'VieOuMort(MathScript)'.
	 userStr := '// utiliser un paramètre permet de modifier sa valeur à l aide du tableau de bord.##param sup = 3##ifTrue (( mon$nbVivants > sup) OR (mon$nbVivants < 2))####mon$statut = 0####endIfTrue#### ####ifTrue (mon$nbVivants = 3)####mon$statut = 1####endIfTrue##'.
	 self parametres
		at: 'sup'
		put:
			(( MobidycParametre new)
				nom: 'sup';
				unite: ' ';
				valeurU: 3).
	 self liens add: ( MobidycCapteur new: 'mon_nbVivants').
	 self mon_nbVivants:  self liens last.
	 self liens add: ( MobidycCapteur new: 'mon_statut').
	 self mon_statut:  self liens last.
	^ self! !MobidycTacheGeneree subclass: #MobidycModifierConditionnel	instanceVariableNames: ''	classVariableNames: ''	poolDictionaries: ''	category: 'MB_TachesGenerees'!!MobidycModifierConditionnel commentStamp: '<historical>' prior: 0!Missing comment!!MobidycModifierConditionnel methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!codeAEteModifie
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^false! !!MobidycModifierConditionnel methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiserActions
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	|  t1 |
	( t1 :=  Array new: 2)
		at: 1
		put:  MobidycConditions new.
	 t1
		at: 2
		put:  MobidycModifierAttribut new.
	 self actions:  t1.
	^ self! !!MobidycModifierConditionnel methodsFor: 'initialiser' stamp: 'rw 23/5/16 15:04'!initialiser
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 super initialiser.
	 self nom: 'ModifierConditionnel'.
	 self proprietaire:  MobidycAgent.
	 self initialiserActions.
	^ self! !!MobidycModifierConditionnel methodsFor: 'executer' stamp: 'rw 23/5/16 15:04'!executer
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	 self si____Alors executer ifFalse: [^nil].
	 self modifier_attribut executer.
	^ self! !!MobidycModifierConditionnel methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!si____Alors
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 1! !!MobidycModifierConditionnel methodsFor: 'actions' stamp: 'rw 23/5/16 15:04'!modifier_attribut
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^ self actions at: 2! !"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!MobidycModifierConditionnel class	instanceVariableNames: ''!!MobidycModifierConditionnel class methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nomRessourceInterface
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'interface'! !!MobidycModifierConditionnel class methodsFor: 'acces' stamp: 'rw 23/5/16 15:04'!nomClasseInterface
	"	***This is decompiled code.*** 
	The source was unavailable because the source pointer appears to point to an incorrect position in 
	the file. The file may have been modified after this method was updated."
	
	^'SI_TacheGeneree'! !