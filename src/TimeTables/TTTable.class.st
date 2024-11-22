"
I reprensents the 10 multiplications of a number (1*3, 2*3, 3*3, ..., 10 * 3).
Each of my multiplication can be responded to.
"
Class {
	#name : 'TTTable',
	#superclass : 'Object',
	#instVars : [
		'x'
	],
	#category : 'TimeTables',
	#package : 'TimeTables'
}

{ #category : 'accessing' }
TTTable class >> ofNumber: aNumber [
   ^ self new x: aNumber.
]

{ #category : 'accessing' }
TTTable class >> table: aNumber [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"
   ^ self new questions: ((self new x: aNumber) questions)
]

{ #category : 'accessing' }
TTTable >> questions [
	"I return all the multiplications in the table"
   ^ 10 timesCollect: [ :number | TTMultiplication new x: x; y: number ]

]

{ #category : 'accessing' }
TTTable >> x [

	^ x
]

{ #category : 'accessing' }
TTTable >> x: anObject [

	x := anObject
]
