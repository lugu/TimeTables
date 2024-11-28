"
I represent a multiplication using a serie of cercles.
"
Class {
	#name : 'TTMultiplicationVisualPresenter',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'visual'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'layout' }
TTMultiplicationVisualPresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: visual;
		yourself
]

{ #category : 'initialization - deprecated' }
TTMultiplicationVisualPresenter >> initializePresenter [
	visual := self instantiate: TTBlElementPresenter.
	visual element: (self visualFor: 10 by: 10).
	self focusOrder
		add: visual.
]

{ #category : 'initialization' }
TTMultiplicationVisualPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Multiplication visualization'
]

{ #category : 'initialization' }
TTMultiplicationVisualPresenter >> visualFor: x by: y [
	| color diameter size childElements |
	color := Color random.
	diameter := 30.
	size := (y * diameter) @  (x * diameter).
	childElements := (x * y) timesCollect: [ 
		BlElement new
		geometry: BlCircleGeometry new;
		background: color;
		size: diameter @ diameter
	].
	^ BlElement new
		background: Color transparent;
		layout: BlFlowLayout new;
		addChildren: childElements;
		size: size
]

{ #category : 'initialization' }
TTMultiplicationVisualPresenter >> x: xNumber y: yNumber [
	| element |
	element := self visualFor: xNumber by: yNumber.
	visual element: element.
	super setModel: element.
]
