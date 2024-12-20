"
I represent a question with a label displaying the problem statement.
"
Class {
	#name : 'TTQuestionPresenter',
	#superclass : 'SpPresenter',
	#instVars : [
		'question',
		'answers'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'layout' }
TTQuestionPresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: question;
		add: answers expand: true;
		yourself
]

{ #category : 'initialization - deprecated' }
TTQuestionPresenter >> initializePresenters [
	question := self instantiate: TTMultiplicationPresenter.
	answers := self instantiate: TTAnswersPresenter.
	self focusOrder
		add: question;
		add: answers.
]

{ #category : 'transmission' }
TTQuestionPresenter >> onResponse: aBlockAcceptingAnAnswer [
	answers onResponse: aBlockAcceptingAnAnswer
]

{ #category : 'accessing' }
TTQuestionPresenter >> setQuestion: aQuestion [
	question setModel: aQuestion.
	answers setAnswers: aQuestion answers.
]
