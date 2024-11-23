Class {
	#name : 'TTGameTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-Tests',
	#package : 'TimeTables-Tests'
}

{ #category : 'tests' }
TTGameTest >> testGameFinishes [
	| game |
	game := TTGame tableOf: 13.
	self assert: game isFinished equals: false.
	game questions do: [ :question |
			game respondTo: question with: question correctAnswer].
	self assert: game isFinished equals: true.
]

{ #category : 'tests' }
TTGameTest >> testNewGameCreation [
	| game |
	game := TTGame tableOf: 13.
]

{ #category : 'tests' }
TTGameTest >> testNumberOfAnswers [

	self assert: TTGame numberOfAnswers equals: 3.
]

{ #category : 'tests' }
TTGameTest >> testOpenQuestions [

	| game firstQuestion |
	game := TTGame tableOf: 13.
	self assert: game questions size equals: game openQuestions size.
	firstQuestion := game questions first.
	game respondTo: firstQuestion with: firstQuestion correctAnswer.
	self assert: game questions size equals: (game openQuestions size + 1).
]

{ #category : 'tests' }
TTGameTest >> testPerfectPlayer [

	| game |
	game := TTGame tableOf: 13.
	game questions do: [ :question |
			game respondTo: question with: question correctAnswer ].
	self assert: game isFinished equals: true.
]

{ #category : 'tests' }
TTGameTest >> testRandomPlayer [

	| game count |
	game := TTGame tableOf: 13.
	count := 1000. "No more than 1000 tries"
	[
		count := count - 1.
		game isFinished or: [ count < 0 ]
	] whileFalse: [
		game openQuestions do: [ :q | game respondTo: q with: (q answers atRandom)].
	].
	self assert: game isFinished
]
