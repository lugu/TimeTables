Class {
	#name : 'BaselineOfTimeTables',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTimeTables',
	#package : 'BaselineOfTimeTables'
}

{ #category : 'baselines' }
BaselineOfTimeTables >> baseline: spec [

	spec for: #common do: [
		"Dependencies"
		spec baseline: 'SpecToplo' with: [
				spec repository: 'github://pharo-graphics/Spec-Toplo:dev/src' ].

		"Packages"
		spec			
			package: 'TimeTables';
			package: 'TimeTables-Tests'	with: [ spec requires: #( 'TimeTables') ];
			package: 'TimeTables-BlocSpec' with: [ spec requires: #( 'SpecToplo') ];
			package: 'TimeTables-BlocSpec-Tests' with: [ spec requires: #( 'TimeTables-BlocSpec') ];
			package: 'TimeTables-UI' with: [ spec requires: #( 'TimeTables' 'TimeTables-BlocSpec') ];
			package: 'TimeTables-UI-Tests'	with: [ spec requires: #( 'TimeTables-UI') ].
	]
]
