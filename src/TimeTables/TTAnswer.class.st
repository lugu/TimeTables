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
	^ (self label) = (anotherAnswer label).
]

{ #category : 'comparing' }
TTAnswer >> hash [
	^ self label hash
]

{ #category : 'accessing' }
TTAnswer >> label [

	^ label
]

{ #category : 'accessing' }
TTAnswer >> label: anObject [

	label := anObject
]
