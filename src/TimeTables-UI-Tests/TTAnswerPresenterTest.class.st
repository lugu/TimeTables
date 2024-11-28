Class {
	#name : 'TTAnswerPresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-UI-Tests',
	#package : 'TimeTables-UI-Tests'
}

{ #category : 'tests' }
TTAnswerPresenterTest >> testAnswerConnection [
	| game ap question answer |
	game := TTGame tableOf: 8.
	ap := TTAnswerPresenter new.
	question := game questions first.
	answer := question correctAnswer.
	ap setModel: answer.
	ap onResponse: [ :anAnswer | game respondTo: question with: anAnswer ].
	ap button click.
	self assert: game openQuestions size equals: 9.
]

{ #category : 'tests' }
TTAnswerPresenterTest >> testOpenClose [
	TTAnswerPresenter new open; delete.
]
