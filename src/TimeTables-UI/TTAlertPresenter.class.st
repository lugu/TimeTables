"
I am the visual representation of a question in a game.
"
Class {
	#name : 'TTAlertPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'label',
		'button'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'layout' }
TTAlertPresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: label;
		add: button;
		yourself
]

{ #category : 'initialization' }
TTAlertPresenter >> initializePresenters [
	label := self newLabel.
	button := self newButton.
]

{ #category : 'initialization' }
TTAlertPresenter >> textMessage: text buttonLabel: btnLabel action: aBlock [
	label label: text.
	button action: [ aBlock value ].
	button label: btnLabel
	
]
