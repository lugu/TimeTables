Class {
	#name : 'TTAlertPresenterTest',
	#superclass : 'TestCase',
	#category : 'TimeTables-Tests',
	#package : 'TimeTables-Tests'
}

{ #category : 'tests' }
TTAlertPresenterTest >> testOpenClose [
	| ap |
	ap := TTAlertPresenter new.
	ap textMessage: 'Hello' buttonLabel: 'ok' action: [ Transcript show: 'done'; cr ].
	ap open.
	ap delete.
]
