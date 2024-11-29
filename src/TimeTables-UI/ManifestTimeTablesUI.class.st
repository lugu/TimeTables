"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : 'ManifestTimeTablesUI',
	#superclass : 'PackageManifest',
	#category : 'TimeTables-UI-Manifest',
	#package : 'TimeTables-UI',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestTimeTablesUI class >> ruleCollectionProtocolRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#TTAnswersPresenter #initializePresenters #false)) #'2024-11-28T22:00:33.788609+00:00') )
]