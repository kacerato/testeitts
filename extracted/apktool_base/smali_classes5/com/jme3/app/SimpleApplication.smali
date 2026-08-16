.class public abstract Lcom/jme3/app/SimpleApplication;
.super Lcom/jme3/app/LegacyApplication;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/SimpleApplication$AppActionListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final INPUT_MAPPING_CAMERA_POS:Ljava/lang/String; = "SIMPLEAPP_CameraPos"

.field public static final INPUT_MAPPING_EXIT:Ljava/lang/String; = "SIMPLEAPP_Exit"

.field public static final INPUT_MAPPING_HIDE_STATS:Ljava/lang/String; = "SIMPLEAPP_HideStats"

.field public static final INPUT_MAPPING_MEMORY:Ljava/lang/String; = "SIMPLEAPP_Memory"

.field protected static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final actionListener:Lcom/jme3/app/SimpleApplication$AppActionListener;

.field protected flyCam:Lcom/jme3/input/FlyByCamera;

.field protected fpsText:Lcom/jme3/font/BitmapText;

.field protected guiFont:Lcom/jme3/font/BitmapFont;

.field protected guiNode:Lcom/jme3/scene/Node;

.field protected rootNode:Lcom/jme3/scene/Node;

.field protected showSettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/SimpleApplication;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/jme3/app/StatsAppState;

    invoke-direct {v0}, Lcom/jme3/app/StatsAppState;-><init>()V

    new-instance v1, Lcom/jme3/app/FlyCamAppState;

    invoke-direct {v1}, Lcom/jme3/app/FlyCamAppState;-><init>()V

    new-instance v2, Lcom/jme3/audio/AudioListenerState;

    invoke-direct {v2}, Lcom/jme3/audio/AudioListenerState;-><init>()V

    new-instance v3, Lcom/jme3/app/DebugKeysAppState;

    invoke-direct {v3}, Lcom/jme3/app/DebugKeysAppState;-><init>()V

    new-instance v4, Lcom/jme3/app/state/ConstantVerifierState;

    invoke-direct {v4}, Lcom/jme3/app/state/ConstantVerifierState;-><init>()V

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/jme3/app/state/AppState;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-direct {p0, v5}, Lcom/jme3/app/SimpleApplication;-><init>([Lcom/jme3/app/state/AppState;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/app/state/AppState;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/app/LegacyApplication;-><init>([Lcom/jme3/app/state/AppState;)V

    .line 3
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "Root Node"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/app/SimpleApplication;->rootNode:Lcom/jme3/scene/Node;

    .line 4
    new-instance p1, Lcom/jme3/scene/Node;

    const-string v0, "Gui Node"

    invoke-direct {p1, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/app/SimpleApplication;->guiNode:Lcom/jme3/scene/Node;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/jme3/app/SimpleApplication;->showSettings:Z

    .line 6
    new-instance p1, Lcom/jme3/app/SimpleApplication$AppActionListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jme3/app/SimpleApplication$AppActionListener;-><init>(Lcom/jme3/app/SimpleApplication;Lcom/jme3/app/SimpleApplication$1;)V

    iput-object p1, p0, Lcom/jme3/app/SimpleApplication;->actionListener:Lcom/jme3/app/SimpleApplication$AppActionListener;

    return-void
.end method


# virtual methods
.method public getFlyByCamera()Lcom/jme3/input/FlyByCamera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/SimpleApplication;->flyCam:Lcom/jme3/input/FlyByCamera;

    return-object v0
.end method

.method public getGuiNode()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/SimpleApplication;->guiNode:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public getRootNode()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/SimpleApplication;->rootNode:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/app/LegacyApplication;->speed:F

    return v0
.end method

.method public initialize()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/jme3/app/LegacyApplication;->initialize()V

    invoke-virtual {p0}, Lcom/jme3/app/SimpleApplication;->loadGuiFont()Lcom/jme3/font/BitmapFont;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/app/SimpleApplication;->guiFont:Lcom/jme3/font/BitmapFont;

    iget-object v2, p0, Lcom/jme3/app/SimpleApplication;->guiNode:Lcom/jme3/scene/Node;

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    iget-object v2, p0, Lcom/jme3/app/SimpleApplication;->guiNode:Lcom/jme3/scene/Node;

    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v3, p0, Lcom/jme3/app/SimpleApplication;->rootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v3}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->guiViewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v3, p0, Lcom/jme3/app/SimpleApplication;->guiNode:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v3}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    const-class v3, Lcom/jme3/app/StatsAppState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    const-class v4, Lcom/jme3/app/FlyCamAppState;

    invoke-virtual {v2, v4}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object v2

    check-cast v2, Lcom/jme3/app/FlyCamAppState;

    if-eqz v2, :cond_0

    new-instance v4, Lcom/jme3/input/FlyByCamera;

    iget-object v5, p0, Lcom/jme3/app/LegacyApplication;->cam:Lcom/jme3/renderer/Camera;

    invoke-direct {v4, v5}, Lcom/jme3/input/FlyByCamera;-><init>(Lcom/jme3/renderer/Camera;)V

    iput-object v4, p0, Lcom/jme3/app/SimpleApplication;->flyCam:Lcom/jme3/input/FlyByCamera;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/jme3/input/FlyByCamera;->setMoveSpeed(F)V

    iget-object v4, p0, Lcom/jme3/app/SimpleApplication;->flyCam:Lcom/jme3/input/FlyByCamera;

    invoke-virtual {v2, v4}, Lcom/jme3/app/FlyCamAppState;->setCamera(Lcom/jme3/input/FlyByCamera;)V

    :cond_0
    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v2}, Lcom/jme3/system/JmeContext;->getType()Lcom/jme3/system/JmeContext$Type;

    move-result-object v2

    sget-object v4, Lcom/jme3/system/JmeContext$Type;->Display:Lcom/jme3/system/JmeContext$Type;

    const-string v5, "SIMPLEAPP_Exit"

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/KeyTrigger;

    invoke-direct {v4, v1}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v6, v1, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v6, v0

    invoke-virtual {v2, v5, v6}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    :cond_1
    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v2, v3}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object v2

    check-cast v2, Lcom/jme3/app/StatsAppState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v4, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v6, 0x3f

    invoke-direct {v4, v6}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v1, v1, [Lcom/jme3/input/controls/Trigger;

    aput-object v4, v1, v0

    const-string v0, "SIMPLEAPP_HideStats"

    invoke-virtual {v2, v0, v1}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v2, p0, Lcom/jme3/app/SimpleApplication;->actionListener:Lcom/jme3/app/SimpleApplication$AppActionListener;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/app/SimpleApplication;->actionListener:Lcom/jme3/app/SimpleApplication$AppActionListener;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v0, v3}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/StatsAppState;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/jme3/app/SimpleApplication;->guiFont:Lcom/jme3/font/BitmapFont;

    invoke-virtual {v0, v1}, Lcom/jme3/app/StatsAppState;->setFont(Lcom/jme3/font/BitmapFont;)V

    invoke-virtual {v0}, Lcom/jme3/app/StatsAppState;->getFpsText()Lcom/jme3/font/BitmapText;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/SimpleApplication;->fpsText:Lcom/jme3/font/BitmapText;

    :cond_4
    invoke-virtual {p0}, Lcom/jme3/app/SimpleApplication;->simpleInitApp()V

    return-void
.end method

.method public isShowSettings()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/SimpleApplication;->showSettings:Z

    return v0
.end method

.method public loadGuiFont()Lcom/jme3/font/BitmapFont;
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v1, "Interface/Fonts/Default.fnt"

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadFont(Ljava/lang/String;)Lcom/jme3/font/BitmapFont;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayFps(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    const-class v1, Lcom/jme3/app/StatsAppState;

    invoke-virtual {v0, v1}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/StatsAppState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/app/StatsAppState;->setDisplayFps(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayStatView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    const-class v1, Lcom/jme3/app/StatsAppState;

    invoke-virtual {v0, v1}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/StatsAppState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/app/StatsAppState;->setDisplayStatView(Z)V

    :cond_0
    return-void
.end method

.method public setShowSettings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/app/SimpleApplication;->showSettings:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/app/LegacyApplication;->speed:F

    return-void
.end method

.method public abstract simpleInitApp()V
.end method

.method public simpleRender(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    return-void
.end method

.method public simpleUpdate(F)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jme3/app/SimpleApplication;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "AppSettings not set, creating default settings."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v0, Lcom/jme3/system/AppSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/jme3/app/LegacyApplication;->setSettings(Lcom/jme3/system/AppSettings;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/jme3/app/SimpleApplication;->showSettings:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-static {v0, v1}, Lcom/jme3/system/JmeSystem;->showSettingsDialog(Lcom/jme3/system/AppSettings;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {p0, v0}, Lcom/jme3/app/LegacyApplication;->setSettings(Lcom/jme3/system/AppSettings;)V

    invoke-super {p0}, Lcom/jme3/app/LegacyApplication;->start()V

    return-void
.end method

.method public update()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/jme3/profile/AppStep;->BeginFrame:Lcom/jme3/profile/AppStep;

    invoke-interface {v0, v1}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_0
    invoke-super {p0}, Lcom/jme3/app/LegacyApplication;->update()V

    iget v0, p0, Lcom/jme3/app/LegacyApplication;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/jme3/app/LegacyApplication;->paused:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v0

    iget v1, p0, Lcom/jme3/app/LegacyApplication;->speed:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/jme3/profile/AppStep;->StateManagerUpdate:Lcom/jme3/profile/AppStep;

    invoke-interface {v1, v2}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_2
    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v1, v0}, Lcom/jme3/app/state/AppStateManager;->update(F)V

    invoke-virtual {p0, v0}, Lcom/jme3/app/SimpleApplication;->simpleUpdate(F)V

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/jme3/profile/AppStep;->SpatialUpdate:Lcom/jme3/profile/AppStep;

    invoke-interface {v1, v2}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_3
    iget-object v1, p0, Lcom/jme3/app/SimpleApplication;->rootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object v1, p0, Lcom/jme3/app/SimpleApplication;->guiNode:Lcom/jme3/scene/Node;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object v1, p0, Lcom/jme3/app/SimpleApplication;->rootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    iget-object v1, p0, Lcom/jme3/app/SimpleApplication;->guiNode:Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/jme3/profile/AppStep;->StateManagerRender:Lcom/jme3/profile/AppStep;

    invoke-interface {v1, v2}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_4
    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v1, v2}, Lcom/jme3/app/state/AppStateManager;->render(Lcom/jme3/renderer/RenderManager;)V

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/jme3/profile/AppStep;->RenderFrame:Lcom/jme3/profile/AppStep;

    invoke-interface {v1, v2}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_5
    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v2}, Lcom/jme3/system/JmeContext;->isRenderable()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/jme3/renderer/RenderManager;->render(FZ)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {p0, v0}, Lcom/jme3/app/SimpleApplication;->simpleRender(Lcom/jme3/renderer/RenderManager;)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v0}, Lcom/jme3/app/state/AppStateManager;->postRender()V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/jme3/profile/AppStep;->EndFrame:Lcom/jme3/profile/AppStep;

    invoke-interface {v0, v1}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_6
    :goto_0
    return-void
.end method
