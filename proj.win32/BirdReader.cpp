#include "BirdReader.h"
#include "Bird.h"

using namespace cocos2d;

static BirdReader* _instanceBirdReader = nullptr;

BirdReader* BirdReader::getInstance() {
	if (!_instanceBirdReader) {
		_instanceBirdReader = new BirdReader();
	}
	return _instanceBirdReader;
}

void BirdReader::purge() {
	CC_SAFE_DELETE(_instanceBirdReader);
}

Node* BirdReader::createNodeWithFlatBuffers(const flatbuffers::Table* nodeOptions) {
	Bird* node = Bird::create();
	setPropsWithFlatBuffers(node, nodeOptions);
	return node;
}
