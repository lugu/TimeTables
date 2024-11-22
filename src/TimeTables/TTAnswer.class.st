"
I am a possible answer of a TTMultiplication. I have a string label and I can be compared with other TTAnswers.
"
Class {
	#name : 'TTAnswer',
	#superclass : 'Object',
	#instVars : [
		'label'
	],
	#category : 'TimeTables',
	#package : 'TimeTables'
}

{ #category : 'comparing' }
TTAnswer >> = anotherAnswer [
	^ (self response) = (anotherAnswer response).
]

{ #category : 'comparing' }
TTAnswer >> hash [
	^ self response hash
]

{ #category : 'accessing' }
TTAnswer >> response [

	^ label
]

{ #category : 'accessing' }
TTAnswer >> response: anObject [

	label := anObject
]
