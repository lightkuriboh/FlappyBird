#include "TubeReader.h"
#include "Tube.h"

using namespace cocos2d;

static TubeReader* _instanceTubeReader = nullptr;

TubeReader* TubeReader::getInstance() {
	if (!_instanceTubeReader) {
		_instanceTubeReader = new TubeReader();
	}
	return _instanceTubeReader;
}

void TubeReader::purge() {
	CC_SAFE_DELETE(_instanceTubeReader);
}

Node* TubeReader::createNodeWithFlatBuffers(const flatbuffers::Table* nodeOptions) {
	Tube* node = Tube::create();
	setPropsWithFlatBuffers(node, nodeOptions);
	return node;
}
