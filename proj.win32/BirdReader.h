#pragma once
#include "cocos2d.h"
#include "cocostudio/WidgetReader/NodeReader/NodeReader.h"

class BirdReader : public cocostudio::NodeReader
{
public:
	static BirdReader* getInstance();
	static void purge();
	cocos2d::Node* createNodeWithFlatBuffers(const flatbuffers::Table* nodeOptions);
};