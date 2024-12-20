"
I am a spec application to play the time tables game.
"
Class {
	#name : 'TTApplication',
	#superclass : 'SpApplication',
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'initialization' }
TTApplication >> initialize [ 
	super initialize.
	self useBackend: #Toplo
]

{ #category : 'running' }
TTApplication >> start [
	(TTApplicationPresenter newApplication: self) open
]
