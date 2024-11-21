"
I reprensent a game where one has to find the correct answer to the multiplications of a time table.
Once the correct answer for all the multiplications have been found, the game is finished.
"
Class {
	#name : 'TTGame',
	#superclass : 'Object',
	#instVars : [
		'multiplications'
	],
	#category : 'TimeTables',
	#package : 'TimeTables'
}

{ #category : 'initialization' }
TTGame class >> tableOf: aNumber [
	^ self new multiplications: (TTTable ofNumber: aNumber) multiplications shuffle.
]

{ #category : 'testing' }
TTGame >> isFinished [
	^ self multiplications allSatisfy: [ :m | m success ].
]

{ #category : 'accessing' }
TTGame >> multiplications [

	^ multiplications
]

{ #category : 'accessing' }
TTGame >> multiplications: anObject [

	multiplications := anObject
]
