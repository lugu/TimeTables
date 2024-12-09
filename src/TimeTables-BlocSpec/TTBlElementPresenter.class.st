Class {
	#name : 'TTBlElementPresenter',
	#superclass : 'SpAbstractWidgetPresenter',
	#instVars : [
		'#element => ObservableSlot'
	],
	#category : 'TimeTables-BlocSpec',
	#package : 'TimeTables-BlocSpec'
}

{ #category : 'specs' }
TTBlElementPresenter class >> adapterName [
	^ #TTBlElementAdapter
]

{ #category : 'api' }
TTBlElementPresenter >> element [
	^ element
]

{ #category : 'api' }
TTBlElementPresenter >> element: aBlElement [
	element := aBlElement
]

{ #category : 'api - events' }
TTBlElementPresenter >> whenElementChangedDo: aBlockClosure [ 
	self property: #element whenChangedDo: aBlockClosure 
]
