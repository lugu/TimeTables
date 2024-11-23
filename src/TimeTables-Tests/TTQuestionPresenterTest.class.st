Class {
	#name : 'TTQuestionPresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-Tests',
	#package : 'TimeTables-Tests'
}

{ #category : 'tests' }
TTQuestionPresenterTest >> testOpenClose [
	| game presenter question |
	game := TTGame tableOf: (0 to: 10) atRandom.
	presenter := TTQuestionPresenter new.
	question := game questions first.
	presenter setQuestion: question.
	presenter open.
	presenter delete.
]
