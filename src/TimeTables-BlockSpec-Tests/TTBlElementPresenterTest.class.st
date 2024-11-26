Class {
	#name : 'TTBlElementPresenterTest',
	#superclass : 'SpSmokeTest',
	#category : 'TimeTables-BlockSpec-Tests',
	#package : 'TimeTables-BlockSpec-Tests'
}

{ #category : 'accessing' }
TTBlElementPresenterTest >> classToTest [
	^ TTBlElementPresenter
]

{ #category : 'accessing' }
TTBlElementPresenterTest >> testElementChangeRaisesEvent [

	self
		assertEvent: #whenChangedDo:
		isRaisedInPresenter: presenter
		whenDoing: [ presenter element: BlElement new ]
]

{ #category : 'accessing' }
TTBlElementPresenterTest >> testElementChangeRaisesEventOnce [

	self
		assertWith: [ :times | times = 1 ]
		timesRaisedEvent: #whenChangedDo:
		inPresenter: presenter
		whenDoing: [ presenter element: BlElement new ]
]

{ #category : 'accessing' }
TTBlElementPresenterTest >> testElementIsSet [
	| element |
	element := BlElement new.
	presenter element: element.
	self assert: presenter element equals: element
]
