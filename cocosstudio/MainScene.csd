<GameFile>
  <PropertyGroup Name="MainScene" Type="Scene" ID="a2ee0952-26b5-49ae-8bf9-4f1d6279b798" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="682" Speed="1.0000" ActivedAnimationName="baseMove">
        <Timeline ActionTag="-449826650" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="True" />
          <BoolFrame FrameIndex="300" Tween="False" Value="False" />
          <BoolFrame FrameIndex="601" Tween="False" Value="True" />
        </Timeline>
        <Timeline ActionTag="-1170712424" Property="VisibleForFrame">
          <BoolFrame FrameIndex="1" Tween="False" Value="False" />
          <BoolFrame FrameIndex="300" Tween="False" Value="True" />
          <BoolFrame FrameIndex="601" Tween="False" Value="False" />
        </Timeline>
        <Timeline ActionTag="1066438991" Property="Position">
          <PointFrame FrameIndex="602" X="-49.5663" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="682" X="-353.6478" Y="0.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1066438991" Property="VisibleForFrame">
          <BoolFrame FrameIndex="0" Tween="False" Value="True" />
          <BoolFrame FrameIndex="602" Tween="False" Value="True" />
          <BoolFrame FrameIndex="682" Tween="False" Value="True" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="baseMove" StartIndex="602" EndIndex="682">
          <RenderColor A="255" R="0" G="255" B="127" />
        </AnimationInfo>
        <AnimationInfo Name="changeBackground" StartIndex="1" EndIndex="601">
          <RenderColor A="255" R="0" G="255" B="255" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Scene" ctype="GameNodeObjectData">
        <Size X="640.0000" Y="960.0000" />
        <Children>
          <AbstractNodeData Name="day" ActionTag="-449826650" Tag="41" IconVisible="False" LeftMargin="-25.1840" RightMargin="377.1840" TopMargin="448.0000" ctype="SpriteObjectData">
            <Size X="288.0000" Y="512.0000" />
            <AnchorPoint />
            <Position X="-25.1840" />
            <Scale ScaleX="2.3619" ScaleY="2.0017" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.0393" />
            <PreSize X="0.4500" Y="0.5333" />
            <FileData Type="Normal" Path="background-day.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="night" ActionTag="-1170712424" VisibleForFrame="False" Tag="42" IconVisible="False" LeftMargin="-21.2928" RightMargin="373.2928" TopMargin="-66.4427" BottomMargin="514.4427" ctype="SpriteObjectData">
            <Size X="288.0000" Y="512.0000" />
            <AnchorPoint ScaleY="1.0000" />
            <Position X="-21.2928" Y="1026.4427" />
            <Scale ScaleX="2.3399" ScaleY="2.0050" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.0333" Y="1.0692" />
            <PreSize X="0.4500" Y="0.5333" />
            <FileData Type="Normal" Path="background-night.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="base" ActionTag="1066438991" VisibleForFrame="False" Tag="62" IconVisible="False" LeftMargin="-106.5816" RightMargin="410.5816" TopMargin="848.0000" ctype="SpriteObjectData">
            <Size X="336.0000" Y="112.0000" />
            <AnchorPoint />
            <Position X="-106.5816" />
            <Scale ScaleX="3.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.1665" />
            <PreSize X="0.5250" Y="0.1167" />
            <FileData Type="Normal" Path="base.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="message" ActionTag="2077231664" Tag="63" IconVisible="False" LeftMargin="224.4191" RightMargin="231.5809" TopMargin="370.2646" BottomMargin="322.7353" ctype="SpriteObjectData">
            <Size X="184.0000" Y="267.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="316.4191" Y="456.2353" />
            <Scale ScaleX="2.8440" ScaleY="2.5585" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.4944" Y="0.4752" />
            <PreSize X="0.2875" Y="0.2781" />
            <FileData Type="Normal" Path="message.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="tubes" ActionTag="-824187983" Tag="72" IconVisible="True" LeftMargin="617.7600" RightMargin="22.2400" TopMargin="852.0000" BottomMargin="108.0000" ctype="SingleNodeObjectData">
            <Size X="0.0000" Y="0.0000" />
            <AnchorPoint />
            <Position X="617.7600" Y="108.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.9653" Y="0.1125" />
            <PreSize X="0.0000" Y="0.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="over" ActionTag="455786727" VisibleForFrame="False" Tag="75" IconVisible="False" LeftMargin="217.5093" RightMargin="230.4907" TopMargin="181.3500" BottomMargin="736.6500" ctype="SpriteObjectData">
            <Size X="192.0000" Y="42.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="313.5093" Y="757.6500" />
            <Scale ScaleX="3.0000" ScaleY="3.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.4899" Y="0.7892" />
            <PreSize X="0.3000" Y="0.0437" />
            <FileData Type="Normal" Path="gameover.png" Plist="" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
          <AbstractNodeData Name="bird" ActionTag="2133593041" VisibleForFrame="False" Tag="18" IconVisible="True" LeftMargin="90.0000" RightMargin="550.0000" TopMargin="260.0000" BottomMargin="700.0000" StretchWidthEnable="False" StretchHeightEnable="False" InnerActionSpeed="1.0000" CustomSizeEnabled="False" ctype="ProjectNodeObjectData">
            <Size X="0.0000" Y="0.0000" />
            <AnchorPoint />
            <Position X="90.0000" Y="700.0000" />
            <Scale ScaleX="0.6000" ScaleY="0.6000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.1406" Y="0.7292" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="Bird.csd" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="score" ActionTag="-811289449" VisibleForFrame="False" Tag="21" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="292.0000" RightMargin="292.0000" TopMargin="280.0000" BottomMargin="568.0000" FontSize="100" LabelText="0" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
            <Size X="56.0000" Y="112.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="320.0000" Y="624.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.6500" />
            <PreSize X="0.0875" Y="0.1167" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
          <AbstractNodeData Name="FileNode_2" ActionTag="712894514" Tag="32" IconVisible="True" LeftMargin="-54.0000" RightMargin="694.0000" TopMargin="960.0000" StretchWidthEnable="False" StretchHeightEnable="False" InnerActionSpeed="1.0000" CustomSizeEnabled="False" ctype="ProjectNodeObjectData">
            <Size X="0.0000" Y="0.0000" />
            <AnchorPoint />
            <Position X="-54.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.0844" />
            <PreSize X="0.0000" Y="0.0000" />
            <FileData Type="Normal" Path="Node.csd" Plist="" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>