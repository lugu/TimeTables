"
I am a presenter which wraps a TTGamePresenter. Once the game is terminated, I create a new TTGamePresenter.
"
Class {
	#name : 'TTApplicationPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'game'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'layout' }
TTApplicationPresenter >> defaultLayout [
	^ SpBoxLayout new
		add: game;
		yourself
]

{ #category : 'initialization' }
TTApplicationPresenter >> initializePresenters [

	game := self instantiate: TTGamePresenter.
	game onFinishedDo: [
		layout remove: game.
		self initializePresenters.
		layout add: game ]
]

{ #category : 'initialization' }
TTApplicationPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Time tables'.
]
