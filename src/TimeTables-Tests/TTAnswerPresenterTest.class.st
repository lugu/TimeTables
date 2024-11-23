Class {
	#name : 'TTAnswerPresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-Tests',
	#package : 'TimeTables-Tests'
}

{ #category : 'tests' }
TTAnswerPresenterTest >> testAnswerConnection [
	| game ap question answer |
	game := TTGame tableOf: 8.
	ap := TTAnswerPresenter new.
	question := game questions first.
	answer := question correctAnswer.
	ap setModel: answer.
	ap onSelect: [ game respondTo: question with: answer ].
	ap button click.
	self assert: game openQuestions size equals: 9.
]

{ #category : 'tests' }
TTAnswerPresenterTest >> testOpenClose [
	TTAnswerPresenter new open; delete.
]
