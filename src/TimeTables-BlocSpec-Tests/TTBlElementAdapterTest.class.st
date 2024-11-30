Class {
	#name : 'TTBlElementAdapterTest',
	#superclass : 'SpAbstractWidgetAdapterTest',
	#category : 'TimeTables-BlocSpec-Tests',
	#package : 'TimeTables-BlocSpec-Tests'
}

{ #category : 'accessing' }
TTBlElementAdapterTest >> classToTest [
	^ TTBlElementPresenter 
]

{ #category : 'accessing' }
TTBlElementAdapterTest >> testSetElementInPresenterAffectsWidget [
	| element |
	element := BlElement new.
	presenter element: element.
	self assert: self adapter element equals: element
]
