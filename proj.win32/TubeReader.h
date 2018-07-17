#pragma once
#include "cocos2d.h"
#include "cocostudio/WidgetReader/NodeReader/NodeReader.h"

class TubeReader : public cocostudio::NodeReader
{
public:
	static TubeReader* getInstance();
	static void purge();
	cocos2d::Node* createNodeWithFlatBuffers(const flatbuffers::Table* nodeOptions);
};