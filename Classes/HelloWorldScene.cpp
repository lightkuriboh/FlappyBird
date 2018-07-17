#include "HelloWorldScene.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include <time.h>
#include <stdlib.h>
#include <math.h>

USING_NS_CC;

using namespace cocostudio::timeline;

Scene* HelloWorld::createScene()
{
    // 'scene' is an autorelease object
    auto scene = Scene::create();
    
    // 'layer' is an autorelease object
    auto layer = HelloWorld::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}

// on "init" you need to initialize your instance
bool HelloWorld::init()
{
    /**  you can create scene with following comment code instead of using csb file.
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }
    
    Size visibleSize = Director::getInstance()->getVisibleSize();
    Vec2 origin = Director::getInstance()->getVisibleOrigin();

    /////////////////////////////
    // 2. add a menu item with "X" image, which is clicked to quit the program
    //    you may modify it.

    // add a "close" icon to exit the progress. it's an autorelease object
    auto closeItem = MenuItemImage::create(
                                           "CloseNormal.png",
                                           "CloseSelected.png",
                                           CC_CALLBACK_1(HelloWorld::menuCloseCallback, this));
    
	closeItem->setPosition(Vec2(origin.x + visibleSize.width - closeItem->getContentSize().width/2 ,
                                origin.y + closeItem->getContentSize().height/2));

    // create menu, it's an autorelease object
    auto menu = Menu::create(closeItem, NULL);
    menu->setPosition(Vec2::ZERO);
    this->addChild(menu, 1);

    /////////////////////////////
    // 3. add your codes below...

    // add a label shows "Hello World"
    // create and initialize a label
    
    auto label = Label::createWithTTF("Hello World", "fonts/Marker Felt.ttf", 24);
    
    // position the label on the center of the screen
    label->setPosition(Vec2(origin.x + visibleSize.width/2,
                            origin.y + visibleSize.height - label->getContentSize().height));

    // add the label as a child to this layer
    this->addChild(label, 1);

    // add "HelloWorld" splash screen"
    auto sprite = Sprite::create("HelloWorld.png");

    // position the sprite on the center of the screen
    sprite->setPosition(Vec2(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));

    // add the sprite as a child to this layer
    this->addChild(sprite, 0);
    **/
    
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }

	CSLoader* instance = CSLoader::getInstance();
	instance->registReaderObject("BirdReader", (ObjectFactory::Instance) BirdReader::getInstance);
	instance->registReaderObject("TubeReader", (ObjectFactory::Instance) TubeReader::getInstance);
    
    this->rootNode = CSLoader::createNode("MainScene.csb");	

	this->tubeNode = this->rootNode->getChildByName("tubes");	

	this->baseHeight = this->rootNode->getChildByName<Sprite*>("base")->getContentSize().height;
	this->bird = this->rootNode->getChildByName<Bird*>("bird");


    addChild(this->rootNode);	

	srand(time(nullptr));

    return true;
}

void HelloWorld::onEnter() {
	Layer::onEnter();
	
	this->setupTouch();	
	this->triggerReady();
	this->scheduleUpdate();	
	
	
}

void HelloWorld::update(float dt) {
	Layer::update(dt);
	if (this->gameState == GameState::Playing) {
		this->updateTubePosition();
	}
}

bool HelloWorld::gameOver() {
	if (this->gameState == GameState::Over) {
		return true;
	}
	return false;
}

void HelloWorld::triggerGameOver() {
	cocostudio::timeline::ActionTimeline* overTimeLife = CSLoader::createTimeline("MainScene.csb");
	this->stopAllActions();
	this->runAction(overTimeLife);
	this->gameState = GameState::Over;
	this->rootNode->getChildByName<Sprite*>("over")->setVisible(true);	

	this->birdFail();
	cocos2d::ui::Text* score = this->rootNode->getChildByName<ui::Text*>("score");
	score->setVisible(true);
	score->setString(std::to_string(this->score));
}

void HelloWorld::birdFail() {
	this->bird->stopAllActions();
	MoveTo* fall = MoveTo::create(0.9f, Vec2(this->bird->getPositionX(), this->baseHeight));
	this->bird->runAction(fall);
}

void HelloWorld::setupTouch() {
	auto touchListener = EventListenerTouchOneByOne::create();
	touchListener->onTouchBegan = [&](Touch* touch, Event* event) {
		switch (this->gameState) {
			case GameState::Ready: {
				this->triggerPlaying();
			}
			case GameState::Playing: {
				this->bird->flyUp();
				if (this->gameOver()) {
					this->triggerGameOver();
					return true;
				}
				break;
			}
			case GameState::Over: {
				this->triggerReady();
				break;
			}
		}		
		return true;
	};
	this->getEventDispatcher()->addEventListenerWithSceneGraphPriority(touchListener, this);
}

void HelloWorld::triggerPlaying() {


	this->gameState = GameState::Playing;	

	this->rootNode->getChildByName<cocos2d::Sprite*>("message")->setVisible(false);	

	this->tubeNode->setVisible(true);
	this->bird->setVisible(true);
	this->bird->setPosition(Vec2(90, 700));
	this->bird->setContentSize(Size(18.0f, 18.0f));
	this->initTubeNode();
	this->currentIndex = 0;	

	this->bird->Init();
	this->bird->flap();
	this->bird->flyDown();
	this->makeMovingBase();
}

void HelloWorld::makeMovingBase() {
	cocostudio::timeline::ActionTimeline* baseTimeline = CSLoader::createTimeline("MainScene.csb");	
	this->stopAllActions();
	this->runAction(baseTimeline);
	//baseTimeline->play("baseMove", true);
	baseTimeline->play("changeBackground", true);

	cocostudio::timeline::ActionTimeline* base2TimeLife = CSLoader::createTimeline("Node.csb");
	this->runAction(base2TimeLife);
	base2TimeLife->play("moveBase", true);
}

void HelloWorld::triggerReady() {
	this->gameState = GameState::Ready;	
	this->rootNode->getChildByName<Sprite*>("over")->setVisible(false);
	this->rootNode->getChildByName<ui::Text*>("score")->setVisible(false);
	this->tubeNode->setVisible(false);
	this->rootNode->getChildByName<cocos2d::Sprite*>("message")->setVisible(true);
	this->bird->setVisible(false);
	this->score = 0;
}

void HelloWorld::initTubeNode() {

	this->tubeNode->setPosition(Vec2(617.76f, this->baseHeight));
	this->tubeNode->removeAllChildrenWithCleanup(false);

	this->tubes.clear();
	for (int i = 0; i < this->maxTubes; i++) {
		Tube* tube = dynamic_cast<Tube*>(CSLoader::createNode("Tube.csb"));		
		float tubeWidth = tube->getContentSize().width;
		tube->setPosition(Vec2(float(i) * tubeWidth + float(i) * this->tubeDistance, 0));
		tube->makeTube();
		this->tubeNode->addChild(tube);
		this->tubes.pushBack(tube);
	}	
}

float HelloWorld::getRealPositionX(Tube* tube) {
	return this->tubeNode->convertToWorldSpace(tube->getPosition()).x;
}

void HelloWorld::updateTubePosition() {
	if (this->tubes.size() > 0) {

		Tube* rightMost = this->tubes.at(this->maxTubes - 1);		
		
		this->tubeNode->setPosition(Vec2(this->tubeNode->getPositionX() - 4.0f, this->baseHeight));

		if (this->getRealPositionX(this->tubes.at(0)) < -100.0f) {
			
			this->tubes.eraseObject(this->tubes.at(0), false);
			Tube* tube = dynamic_cast<Tube*>(CSLoader::createNode("Tube.csb"));
			float tubeWidth = tube->getContentSize().width;
			tube->setPosition(Vec2(rightMost->getPositionX() + this->tubeDistance, 0));
			tube->makeTube();
			this->tubeNode->addChild(tube);
			this->tubes.pushBack(tube);	
			this->currentIndex -= 1;
		}

		if (this->gameState == GameState::Playing && this->willCollapse()) {
			this->triggerGameOver();
		}

	}
}

bool HelloWorld::willCollapse() {
	/*
	for (int i = 0; i < this->maxTubes; i++) {
		if (this->collapse(this->tubes.at(i))) {
			return true;
		}
	}	
	*/
	return this->collapse(this->tubes.at(this->currentIndex));
	//return false;
}

bool HelloWorld::collapse(Tube* tube) {
	float xBird = this->bird->getPositionX();
	float yBird = this->bird->getPositionY();

	if (yBird - this->bird->getContentSize().height / 2 < this->baseHeight) {
		return true;
	}

	float w = tube->getWidth();

	float yBot = tube->getHeight(Side::Bot) + this->baseHeight;
	
	float xBot = this->getRealPositionX(tube) - w / 2.0f;
	
	
	float yTop = yBot + tube->dist - 23.0f;
	float xTop = xBot;

	if (xBird > xBot + w) {
		this->score += 1;
		this->currentIndex += 1;
		if (this->currentIndex >= this->maxTubes) {
			this->currentIndex -= 1;
		}
		return false;
	}

	if (xBird + this->bird->getContentSize().width < xBot) {
		return false;
	}

	if (
		yBird < yBot
		||
		yBird + this->bird->getContentSize().height / 1.0f > yTop
	) {
		return true;
	}

	return false;
}
