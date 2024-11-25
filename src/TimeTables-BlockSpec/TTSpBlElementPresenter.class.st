Class {
	#name : 'TTSpBlElementPresenter',
	#superclass : 'SpAbstractWidgetPresenter',
	#instVars : [
		'#element => ObservableSlot'
	],
	#category : 'TimeTables-BlockSpec',
	#package : 'TimeTables-BlockSpec'
}

{ #category : 'specs' }
TTSpBlElementPresenter class >> adapterName [
	^ #TTSpBlElementAdapter
]

{ #category : 'api' }
TTSpBlElementPresenter >> element [
	^ element
]

{ #category : 'api' }
TTSpBlElementPresenter >> element: aBlElement [
	element := aBlElement
]

{ #category : 'api - events' }
TTSpBlElementPresenter >> whenElementChangedDo: aBlockClosure [ 
	self property: #element whenChangedDo: aBlockClosure 
]
