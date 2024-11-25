Class {
	#name : 'TTMultiplicationVisualPresenter',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'visual'
	],
	#category : 'TimeTables-UI',
	#package : 'TimeTables-UI'
}

{ #category : 'initialization - deprecated' }
TTMultiplicationVisualPresenter >> defaultLayout [
	^ SpBoxLayout newTopToBottom
		add: visual;
		yourself
]

{ #category : 'initialization - deprecated' }
TTMultiplicationVisualPresenter >> initializePresenter [
	visual := self instantiate: TTSpBlElementPresenter.
	visual element: (self visualFor: 5 by: 10).
	self focusOrder
		add: visual.
]

{ #category : 'initialization - deprecated' }
TTMultiplicationVisualPresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: 'Multiplication visualization'
]

{ #category : 'initialization - deprecated' }
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

{ #category : 'initialization - deprecated' }
TTMultiplicationVisualPresenter >> x: xNumber y: yNumber [
	| element |
	element := self visualFor: xNumber by: yNumber.
	visual element: element.
	super setModel: element.
]