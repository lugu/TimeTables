"
I am the visual representation of a question in a game.
"
Class {
	#name : 'TTAnswersPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'answers'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'layout' }
TTAnswersPresenter >> defaultLayout [
	| spLayout |
	spLayout := SpBoxLayout newLeftToRight.
	answers do: [ :a | spLayout add: a ].
	^ spLayout
]

{ #category : 'initialization' }
TTAnswersPresenter >> initializePresenters [
	answers := TTGame numberOfAnswers timesCollect: [ 
	 	self instantiate: TTAnswerPresenter.
	].
	answers do: [ :a | self focusOrder add: a ]
]

{ #category : 'transmission' }
TTAnswersPresenter >> onResponse: aBlockAcceptingAnAnswer [
	answers do: [ :answer | answer onResponse: aBlockAcceptingAnAnswer ].
]

{ #category : 'accessing' }
TTAnswersPresenter >> setAnswers: someAnswers [
	1 to: someAnswers size do: [:index |
		(answers at: index) setModel: (someAnswers at: index)
	].
]
