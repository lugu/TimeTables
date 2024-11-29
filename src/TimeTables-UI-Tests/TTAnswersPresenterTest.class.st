Class {
	#name : 'TTAnswersPresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-UI-Tests',
	#package : 'TimeTables-UI-Tests'
}

{ #category : 'tests' }
TTAnswersPresenterTest >> testResize [
	| game ap question answers |
	game := TTGame tableOf: (0 to: 10) atRandom.
	ap := TTAnswersPresenter new.
	question := game questions first.
	answers := question answers.
	ap setAnswers: answers.
	ap open.
	ap delete.
]
