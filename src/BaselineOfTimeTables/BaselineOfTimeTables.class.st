Class {
	#name : 'BaselineOfTimeTables',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTimeTables',
	#package : 'BaselineOfTimeTables'
}

{ #category : 'baselines' }
BaselineOfTimeTables >> baseline: spec [
    <baseline>

    spec for: #common do: [	
				
        "Packages"
        spec
            package: 'TimeTables';
            package: 'TimeTables-UI' with: [ spec requires: #('TimeTables') ];
	         package: 'TimeTables-Tests' with: [ spec requires: #('TimeTables' 'TimeTables-UI') ] ].

]
