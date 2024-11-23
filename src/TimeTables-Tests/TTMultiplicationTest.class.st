Class {
	#name : 'TTMultiplicationTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-Tests',
	#package : 'TimeTables-Tests'
}

{ #category : 'tests' }
TTMultiplicationTest >> testAnswerIsCorrect [
	| mul |
	10 timesRepeat: [
		| x y |
		x := (0 to: 10) atRandom.
		y := (0 to: 10) atRandom.
		mul := TTMultiplication new x: x; y: y.
		self assert: mul correctAnswer equals: (TTAnswer new response: (x * y) asString).
	]
]

{ #category : 'tests' }
TTMultiplicationTest >> testCorrectAnswerIsRecognized [
	| mul |
	mul := TTMultiplication new x: 4; y:3.
	self assert: (mul response: (mul correctAnswer)) equals: true.
]

{ #category : 'tests' }
TTMultiplicationTest >> testIncorrectAnswerIsRecognized [
	| mul |
	mul := TTMultiplication new x: 4; y:3.
	10 timesRepeat: [ 
		self assert: (mul response: mul incorrectAnswer) equals: false
	]
]

{ #category : 'tests' }
TTMultiplicationTest >> testOnlyOneCorrectAnswer [
	| mul correctAnswers |
	mul := TTMultiplication new x: 4; y:3.
	correctAnswers := mul answers select: [ :a | mul correctAnswer = a ].
	self assert: correctAnswers size equals: 1.
]

{ #category : 'tests' }
TTMultiplicationTest >> testOnlyThreeAnswers [
	| mul answers |
	mul := TTMultiplication new x: 4; y:3.
	answers := mul answers.
	self assert: answers size equals: 3.
]
