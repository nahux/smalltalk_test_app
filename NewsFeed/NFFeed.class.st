"
I'm a News Feed with posts.
"
Class {
	#name : #NFFeed,
	#superclass : #Object,
	#instVars : [
		'posts'
	],
	#category : #NewsFeed
}

{ #category : #accessing }
NFFeed >> allBlogPosts [
	 ^ posts
]

{ #category : #accessing }
NFFeed >> allBlogPostsFromCategory: aCategory [
	 ^ posts collect: [ :p | p category equals: aCategory ]
]
