Class {
	#name : 'TTQuestionPresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-UI-Tests',
	#package : 'TimeTables-UI-Tests'
}

{ #category : 'tests' }
TTQuestionPresenterTest >> testResize [
	| game presenter question |
	game := TTGame tableOf: (0 to: 10) atRandom.
	presenter := TTQuestionPresenter new.
	question := game questions first.
	presenter setQuestion: question.
]
