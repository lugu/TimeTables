"
I represents a multiplication to learn. I can generate correct and incorrect answers.
I know how to recognize a correct answer with `response:`.
Once I have received a correct response with `response:` my `success` value is `true`.
"
Class {
	#name : 'TTMultiplication',
	#superclass : 'Object',
	#instVars : [
		'x',
		'y',
		'success'
	],
	#category : 'TimeTables',
	#package : 'TimeTables'
}

{ #category : 'answers' }
TTMultiplication >> answers [
	"I return 3 TTAnswer different from x * y"
	^ { self correctAnswer. self incorrectAnswer. self incorrectAnswer } shuffle
]

{ #category : 'answers' }
TTMultiplication >> correctAnswer [
	"I return a TTAnswer with x * y"
	^ TTAnswer new label: (self label)
]

{ #category : 'answers' }
TTMultiplication >> incorrectAnswer [
	"I return a TTAnswer different from x * y"
	| noise answer |
	noise := 3 timesCollect: [ (-1 to: 1) atRandom].
	answer := (x + noise at: 1) * ( y + noise at: 2) + noise at:3.
	^ (answer = (x * y)) ifTrue: [self incorrectAnswer.] ifFalse: [ TTAnswer new label: answer asString ].
]

{ #category : 'initialization' }
TTMultiplication >> initialize [
	success := false
]

{ #category : 'accessing' }
TTMultiplication >> label [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	^ (x * y) asString
]

{ #category : 'answers' }
TTMultiplication >> response: anAnswer [
	success := self correctAnswer = anAnswer.
	^ success
]

{ #category : 'accessing' }
TTMultiplication >> success [

	^ success
]

{ #category : 'accessing' }
TTMultiplication >> x [

	^ x
]

{ #category : 'accessing' }
TTMultiplication >> x: anObject [

	x := anObject
]

{ #category : 'accessing' }
TTMultiplication >> y [

	^ y
]

{ #category : 'accessing' }
TTMultiplication >> y: anObject [

	y := anObject
]
