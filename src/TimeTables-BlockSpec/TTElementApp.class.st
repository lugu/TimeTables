"
I am a spec application to play the time tables game.
"
Class {
	#name : 'TTElementApp',
	#superclass : 'SpApplication',
	#category : 'TimeTables-BlockSpec',
	#package : 'TimeTables-BlockSpec'
}

{ #category : 'initialization' }
TTElementApp >> initialize [ 
	super initialize.
	self useBackend: #Toplo
]

{ #category : 'running' }
TTElementApp >> start [
	(TTBlElementPresenter newApplication: self) open
]
