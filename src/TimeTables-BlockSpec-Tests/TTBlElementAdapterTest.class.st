Class {
	#name : 'TTBlElementAdapterTest',
	#superclass : 'SpAbstractWidgetAdapterTest',
	#category : 'TimeTables-BlockSpec-Tests',
	#package : 'TimeTables-BlockSpec-Tests'
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
