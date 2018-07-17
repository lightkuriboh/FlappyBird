#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"
#include "../proj.win32/Bird.h"
#include "../proj.win32/Tube.h"
#include "../proj.win32/BirdReader.h"
#include "../proj.win32/TubeReader.h"
#include "../proj.win32/Constant.h"

class HelloWorld : public cocos2d::Layer
{
public:
    // there's no 'id' in cpp, so we recommend returning the class instance pointer
    static cocos2d::Scene* createScene();

    // Here's a difference. Method 'init' in cocos2d-x returns bool, instead of returning 'id' in cocos2d-iphone
    virtual bool init();

    // implement the "static create()" method manually
    CREATE_FUNC(HelloWorld);

protected:
	const int maxTubes = 5;
	const float tubeDistance = 250.0f;
	float baseHeight;

	cocos2d::Vector <Tube*> tubes;
	cocos2d::Node* tubeNode;
	Bird* bird;
	cocos2d::Node* rootNode;
	GameState gameState;
	int currentIndex;
	int score;

	void update(float dt) override;
	void setupTouch();
	void triggerPlaying();
	void triggerReady();
	void makeMovingBase();
	void onEnter() override;
	void initTubeNode();
	void updateTubePosition();
	float getRealPositionX(Tube* tube);
	bool collapse(Tube* tube);
	bool willCollapse();
	bool gameOver();
	void triggerGameOver();
	void birdFail();
};

#endif // __HELLOWORLD_SCENE_H__
