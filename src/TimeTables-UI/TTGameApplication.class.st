"
I am a spec application to play the time tables game.
"
Class {
	#name : 'TTGameApplication',
	#superclass : 'SpApplication',
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'as yet unclassified' }
TTGameApplication >> initialize [ 
	super initialize.
	self useBackend: #Toplo
]

{ #category : 'running' }
TTGameApplication >> start [
	(TTGamePresenter newApplication: self) open
]
