"
I reprensent a game where one has to find the correct answer to the multiplications of a time table.
Once the correct answer for all the multiplications have been found, the game is finished.
"
Class {
	#name : 'TTGame',
	#superclass : 'Object',
	#instVars : [
		'questions'
	],
	#category : 'TimeTables',
	#package : 'TimeTables'
}

{ #category : 'initialization' }
TTGame class >> numberOfAnswers [
	^ 3
]

{ #category : 'initialization' }
TTGame class >> size: questionNb [
	| questions |
	questions := Set new.
	[ questions size = questionNb ] whileFalse: [
		| a b |
		a := (1 to: 10) atRandom.
		b := (1 to: 10) atRandom.
		questions add: (TTMultiplication new x: a; y: b).
	].
	^ self new questions: questions
]

{ #category : 'initialization' }
TTGame class >> tableOf: aNumber [
	^ self new questions: (TTTable ofNumber: aNumber) questions shuffle.
]

{ #category : 'initialization' }
TTGame >> initialize [
	questions := Dictionary new
]

{ #category : 'testing' }
TTGame >> isFinished [
   "I return true if all questions have been correctly answerred."
	^ (questions reject: [ :success | success ]) isEmpty
]

{ #category : 'accessing' }
TTGame >> openQuestions [

	^ (questions reject: [ :success | success ]) keys
]

{ #category : 'accessing' }
TTGame >> questions [
	^ questions keys
]

{ #category : 'accessing' }
TTGame >> questions: someQuestions [
   someQuestions do: [ :q | questions at: q put: false ]
]

{ #category : 'accessing' }
TTGame >> respondTo: aQuestion with: anAnswer [ 
	questions at: aQuestion put: (aQuestion response: anAnswer).
	^ questions at: aQuestion.
]
