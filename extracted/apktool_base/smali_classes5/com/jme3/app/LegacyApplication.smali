.class public Lcom/jme3/app/LegacyApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/app/Application;
.implements Lcom/jme3/system/SystemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/LegacyApplication$RunnableWrapper;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected audioRenderer:Lcom/jme3/audio/AudioRenderer;

.field protected cam:Lcom/jme3/renderer/Camera;

.field protected context:Lcom/jme3/system/JmeContext;

.field protected guiViewPort:Lcom/jme3/renderer/ViewPort;

.field protected inputEnabled:Z

.field protected inputManager:Lcom/jme3/input/InputManager;

.field protected joyInput:Lcom/jme3/input/JoyInput;

.field protected keyInput:Lcom/jme3/input/KeyInput;

.field protected listener:Lcom/jme3/audio/Listener;

.field protected lostFocusBehavior:Lcom/jme3/app/LostFocusBehavior;

.field protected mouseInput:Lcom/jme3/input/MouseInput;

.field protected paused:Z

.field protected prof:Lcom/jme3/profile/AppProfiler;

.field protected renderManager:Lcom/jme3/renderer/RenderManager;

.field protected renderer:Lcom/jme3/renderer/Renderer;

.field protected settings:Lcom/jme3/system/AppSettings;

.field protected speed:F

.field protected stateManager:Lcom/jme3/app/state/AppStateManager;

.field private final taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/jme3/app/AppTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected timer:Lcom/jme3/system/Timer;

.field protected touchInput:Lcom/jme3/input/TouchInput;

.field protected viewPort:Lcom/jme3/renderer/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/app/LegacyApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/LegacyApplication;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/app/LegacyApplication;-><init>([Lcom/jme3/app/state/AppState;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/app/state/AppState;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/jme3/system/NanoTimer;

    invoke-direct {v0}, Lcom/jme3/system/NanoTimer;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jme3/app/LegacyApplication;->inputEnabled:Z

    .line 5
    sget-object v0, Lcom/jme3/app/LostFocusBehavior;->ThrottleOnLostFocus:Lcom/jme3/app/LostFocusBehavior;

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->lostFocusBehavior:Lcom/jme3/app/LostFocusBehavior;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/jme3/app/LegacyApplication;->speed:F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/jme3/app/LegacyApplication;->paused:Z

    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/jme3/app/LegacyApplication;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 9
    invoke-direct {p0}, Lcom/jme3/app/LegacyApplication;->initStateManager()V

    if-eqz p1, :cond_1

    .line 10
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 11
    iget-object v3, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v3, v2}, Lcom/jme3/app/state/AppStateManager;->attach(Lcom/jme3/app/state/AppState;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initAssetManager()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "AssetConfigURL"

    invoke-virtual {v0, v2}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :catch_0
    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/jme3/util/res/Resources;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/app/LegacyApplication;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Unable to access AssetConfigURL in asset config:{0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/jme3/system/JmeSystem;->getPlatformAssetConfigURL()Ljava/net/URL;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->assetManager:Lcom/jme3/asset/AssetManager;

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/jme3/system/JmeSystem;->newAssetManager(Ljava/net/URL;)Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->assetManager:Lcom/jme3/asset/AssetManager;

    :cond_2
    return-void
.end method

.method private initAudio()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v0}, Lcom/jme3/system/AppSettings;->getAudioRenderer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getType()Lcom/jme3/system/JmeContext$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/system/JmeContext$Type;->Headless:Lcom/jme3/system/JmeContext$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-static {v0}, Lcom/jme3/system/JmeSystem;->newAudioRenderer(Lcom/jme3/system/AppSettings;)Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    invoke-interface {v0}, Lcom/jme3/audio/AudioRenderer;->initialize()V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    invoke-static {v0}, Lcom/jme3/audio/AudioContext;->setAudioRenderer(Lcom/jme3/audio/AudioRenderer;)V

    new-instance v0, Lcom/jme3/audio/Listener;

    invoke-direct {v0}, Lcom/jme3/audio/Listener;-><init>()V

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->listener:Lcom/jme3/audio/Listener;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    invoke-interface {v1, v0}, Lcom/jme3/audio/AudioRenderer;->setListener(Lcom/jme3/audio/Listener;)V

    :cond_0
    return-void
.end method

.method private initCamera()V
    .locals 5

    new-instance v0, Lcom/jme3/renderer/Camera;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v1}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v2}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v2}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    const/high16 v4, 0x42340000    # 45.0f

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/jme3/renderer/Camera;->setFrustumPerspective(FFFF)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->cam:Lcom/jme3/renderer/Camera;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->cam:Lcom/jme3/renderer/Camera;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/renderer/Camera;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-direct {v0, v1}, Lcom/jme3/renderer/RenderManager;-><init>(Lcom/jme3/renderer/Renderer;)V

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setTimer(Lcom/jme3/system/Timer;)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v1, v0}, Lcom/jme3/renderer/RenderManager;->setAppProfiler(Lcom/jme3/profile/AppProfiler;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    const-string v1, "Default"

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/renderer/RenderManager;->createMainView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->viewPort:Lcom/jme3/renderer/ViewPort;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/renderer/ViewPort;->setClearFlags(ZZZ)V

    new-instance v0, Lcom/jme3/renderer/Camera;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v1}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v2}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    const-string v2, "Gui Default"

    invoke-virtual {v1, v2, v0}, Lcom/jme3/renderer/RenderManager;->createPostView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->guiViewPort:Lcom/jme3/renderer/ViewPort;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/renderer/ViewPort;->setClearFlags(ZZZ)V

    return-void
.end method

.method private initDisplay()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getSettings()Lcom/jme3/system/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getTimer()Lcom/jme3/system/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderer:Lcom/jme3/renderer/Renderer;

    return-void
.end method

.method private initInput()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getMouseInput()Lcom/jme3/input/MouseInput;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->mouseInput:Lcom/jme3/input/MouseInput;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/input/Input;->initialize()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getKeyInput()Lcom/jme3/input/KeyInput;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->keyInput:Lcom/jme3/input/KeyInput;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/jme3/input/Input;->initialize()V

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getTouchInput()Lcom/jme3/input/TouchInput;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->touchInput:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/jme3/input/Input;->initialize()V

    :cond_2
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-virtual {v0}, Lcom/jme3/system/AppSettings;->useJoysticks()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getJoyInput()Lcom/jme3/input/JoyInput;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->joyInput:Lcom/jme3/input/JoyInput;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/jme3/input/Input;->initialize()V

    :cond_3
    new-instance v0, Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->mouseInput:Lcom/jme3/input/MouseInput;

    iget-object v2, p0, Lcom/jme3/app/LegacyApplication;->keyInput:Lcom/jme3/input/KeyInput;

    iget-object v3, p0, Lcom/jme3/app/LegacyApplication;->joyInput:Lcom/jme3/input/JoyInput;

    iget-object v4, p0, Lcom/jme3/app/LegacyApplication;->touchInput:Lcom/jme3/input/TouchInput;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/input/InputManager;-><init>(Lcom/jme3/input/MouseInput;Lcom/jme3/input/KeyInput;Lcom/jme3/input/JoyInput;Lcom/jme3/input/TouchInput;)V

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    return-void
.end method

.method private initStateManager()V
    .locals 2

    new-instance v0, Lcom/jme3/app/state/AppStateManager;

    invoke-direct {v0, p0}, Lcom/jme3/app/state/AppStateManager;-><init>(Lcom/jme3/app/Application;)V

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    new-instance v1, Lcom/jme3/app/ResetStatsState;

    invoke-direct {v1}, Lcom/jme3/app/ResetStatsState;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jme3/app/state/AppStateManager;->attach(Lcom/jme3/app/state/AppState;)Z

    return-void
.end method


# virtual methods
.method public createCanvas()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/app/LegacyApplication;->logger:Ljava/util/logging/Logger;

    const-string v1, "createCanvas() called when application already created!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    if-nez v0, :cond_1

    new-instance v0, Lcom/jme3/system/AppSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    :cond_1
    sget-object v0, Lcom/jme3/app/LegacyApplication;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Starting application: {0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    sget-object v1, Lcom/jme3/system/JmeContext$Type;->Canvas:Lcom/jme3/system/JmeContext$Type;

    invoke-static {v0, v1}, Lcom/jme3/system/JmeSystem;->newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0, p0}, Lcom/jme3/system/JmeContext;->setSystemListener(Lcom/jme3/system/SystemListener;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v0}, Lcom/jme3/app/state/AppStateManager;->cleanup()V

    invoke-virtual {p0}, Lcom/jme3/app/LegacyApplication;->destroyInput()V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/audio/AudioRenderer;->cleanup()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->reset()V

    return-void
.end method

.method public destroyInput()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->mouseInput:Lcom/jme3/input/MouseInput;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/input/Input;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->keyInput:Lcom/jme3/input/KeyInput;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/jme3/input/Input;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->joyInput:Lcom/jme3/input/JoyInput;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/jme3/input/Input;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->touchInput:Lcom/jme3/input/TouchInput;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/jme3/input/Input;->destroy()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    return-void
.end method

.method public enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jme3/app/AppTask;

    invoke-direct {v0, p1}, Lcom/jme3/app/AppTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    iget-object p1, p0, Lcom/jme3/app/LegacyApplication;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public enqueue(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/jme3/app/LegacyApplication$RunnableWrapper;

    invoke-direct {v0, p0, p1}, Lcom/jme3/app/LegacyApplication$RunnableWrapper;-><init>(Lcom/jme3/app/LegacyApplication;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/app/LegacyApplication;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public gainFocus()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->lostFocusBehavior:Lcom/jme3/app/LostFocusBehavior;

    sget-object v1, Lcom/jme3/app/LostFocusBehavior;->Disabled:Lcom/jme3/app/LostFocusBehavior;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/jme3/app/LostFocusBehavior;->PauseOnLostFocus:Lcom/jme3/app/LostFocusBehavior;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/LegacyApplication;->paused:Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jme3/system/JmeContext;->setAutoFlushFrames(Z)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/input/InputManager;->reset()V

    :cond_1
    return-void
.end method

.method public getAppProfiler()Lcom/jme3/profile/AppProfiler;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    return-object v0
.end method

.method public getAssetManager()Lcom/jme3/asset/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->assetManager:Lcom/jme3/asset/AssetManager;

    return-object v0
.end method

.method public getAudioRenderer()Lcom/jme3/audio/AudioRenderer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    return-object v0
.end method

.method public getCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->cam:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public getContext()Lcom/jme3/system/JmeContext;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    return-object v0
.end method

.method public getDisplays()Lcom/jme3/system/Displays;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getDisplays()Lcom/jme3/system/Displays;

    move-result-object v0

    return-object v0
.end method

.method public getGuiViewPort()Lcom/jme3/renderer/ViewPort;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->guiViewPort:Lcom/jme3/renderer/ViewPort;

    return-object v0
.end method

.method public getInputManager()Lcom/jme3/input/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    return-object v0
.end method

.method public getListener()Lcom/jme3/audio/Listener;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->listener:Lcom/jme3/audio/Listener;

    return-object v0
.end method

.method public getLostFocusBehavior()Lcom/jme3/app/LostFocusBehavior;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->lostFocusBehavior:Lcom/jme3/app/LostFocusBehavior;

    return-object v0
.end method

.method public getPrimaryDisplay()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getPrimaryDisplay()I

    move-result v0

    return v0
.end method

.method public getRenderManager()Lcom/jme3/renderer/RenderManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    return-object v0
.end method

.method public getRenderer()Lcom/jme3/renderer/Renderer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderer:Lcom/jme3/renderer/Renderer;

    return-object v0
.end method

.method public getStateManager()Lcom/jme3/app/state/AppStateManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->stateManager:Lcom/jme3/app/state/AppStateManager;

    return-object v0
.end method

.method public getTimer()Lcom/jme3/system/Timer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    return-object v0
.end method

.method public getViewPort()Lcom/jme3/renderer/ViewPort;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->viewPort:Lcom/jme3/renderer/ViewPort;

    return-object v0
.end method

.method public handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/jme3/app/LegacyApplication;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->getType()Lcom/jme3/system/JmeContext$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/system/JmeContext$Type;->Headless:Lcom/jme3/system/JmeContext$Type;

    if-eq v0, v1, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/system/JmeSystem;->handleErrorMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/jme3/system/JmeSystem;->handleErrorMessage(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/jme3/app/LegacyApplication;->stop()V

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->assetManager:Lcom/jme3/asset/AssetManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jme3/app/LegacyApplication;->initAssetManager()V

    :cond_0
    invoke-direct {p0}, Lcom/jme3/app/LegacyApplication;->initDisplay()V

    invoke-direct {p0}, Lcom/jme3/app/LegacyApplication;->initCamera()V

    iget-boolean v0, p0, Lcom/jme3/app/LegacyApplication;->inputEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jme3/app/LegacyApplication;->initInput()V

    :cond_1
    invoke-direct {p0}, Lcom/jme3/app/LegacyApplication;->initAudio()V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->reset()V

    return-void
.end method

.method public isPauseOnLostFocus()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/app/LegacyApplication;->getLostFocusBehavior()Lcom/jme3/app/LostFocusBehavior;

    move-result-object v0

    sget-object v1, Lcom/jme3/app/LostFocusBehavior;->PauseOnLostFocus:Lcom/jme3/app/LostFocusBehavior;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loseFocus()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->lostFocusBehavior:Lcom/jme3/app/LostFocusBehavior;

    sget-object v1, Lcom/jme3/app/LostFocusBehavior;->Disabled:Lcom/jme3/app/LostFocusBehavior;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/jme3/app/LostFocusBehavior;->PauseOnLostFocus:Lcom/jme3/app/LostFocusBehavior;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/app/LegacyApplication;->paused:Z

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jme3/system/JmeContext;->setAutoFlushFrames(Z)V

    :cond_1
    return-void
.end method

.method public requestClose(Z)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/jme3/system/JmeContext;->destroy(Z)V

    return-void
.end method

.method public rescale(FF)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyRescale(FF)V

    :cond_0
    return-void
.end method

.method public reshape(II)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/jme3/renderer/RenderManager;->notifyReshape(II)V

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-interface {v0, v1}, Lcom/jme3/system/JmeContext;->setSettings(Lcom/jme3/system/AppSettings;)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->restart()V

    return-void
.end method

.method public runQueuedTasks()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/AppTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/app/AppTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/app/AppTask;->invoke()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAppProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/RenderManager;->setAppProfiler(Lcom/jme3/profile/AppProfiler;)V

    :cond_0
    return-void
.end method

.method public setAssetManager(Lcom/jme3/asset/AssetManager;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->assetManager:Lcom/jme3/asset/AssetManager;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/jme3/app/LegacyApplication;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only set asset manager before initialization."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLostFocusBehavior(Lcom/jme3/app/LostFocusBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/LegacyApplication;->lostFocusBehavior:Lcom/jme3/app/LostFocusBehavior;

    return-void
.end method

.method public setPauseOnLostFocus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/jme3/app/LostFocusBehavior;->PauseOnLostFocus:Lcom/jme3/app/LostFocusBehavior;

    invoke-virtual {p0, p1}, Lcom/jme3/app/LegacyApplication;->setLostFocusBehavior(Lcom/jme3/app/LostFocusBehavior;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/app/LostFocusBehavior;->Disabled:Lcom/jme3/app/LostFocusBehavior;

    invoke-virtual {p0, p1}, Lcom/jme3/app/LegacyApplication;->setLostFocusBehavior(Lcom/jme3/app/LostFocusBehavior;)V

    :goto_0
    return-void
.end method

.method public setSettings(Lcom/jme3/system/AppSettings;)V
    .locals 2

    iput-object p1, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/system/AppSettings;->useInput()Z

    move-result v0

    iget-boolean v1, p0, Lcom/jme3/app/LegacyApplication;->inputEnabled:Z

    if-eq v0, v1, :cond_1

    xor-int/lit8 p1, v1, 0x1

    iput-boolean p1, p0, Lcom/jme3/app/LegacyApplication;->inputEnabled:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/jme3/app/LegacyApplication;->initInput()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/app/LegacyApplication;->destroyInput()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/system/AppSettings;->useInput()Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/app/LegacyApplication;->inputEnabled:Z

    :goto_0
    return-void
.end method

.method public setTimer(Lcom/jme3/system/Timer;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/system/Timer;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->renderManager:Lcom/jme3/renderer/RenderManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/RenderManager;->setTimer(Lcom/jme3/system/Timer;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    sget-object v0, Lcom/jme3/system/JmeContext$Type;->Display:Lcom/jme3/system/JmeContext$Type;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/app/LegacyApplication;->start(Lcom/jme3/system/JmeContext$Type;Z)V

    return-void
.end method

.method public start(Lcom/jme3/system/JmeContext$Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/jme3/app/LegacyApplication;->start(Lcom/jme3/system/JmeContext$Type;Z)V

    return-void
.end method

.method public start(Lcom/jme3/system/JmeContext$Type;Z)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/jme3/system/JmeContext;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Lcom/jme3/app/LegacyApplication;->logger:Ljava/util/logging/Logger;

    const-string p2, "start() called when application already created!"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/jme3/system/AppSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    iput-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    .line 8
    :cond_1
    sget-object v0, Lcom/jme3/app/LegacyApplication;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Starting application: {0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->settings:Lcom/jme3/system/AppSettings;

    invoke-static {v0, p1}, Lcom/jme3/system/JmeSystem;->newContext(Lcom/jme3/system/AppSettings;Lcom/jme3/system/JmeContext$Type;)Lcom/jme3/system/JmeContext;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    .line 10
    invoke-interface {p1, p0}, Lcom/jme3/system/JmeContext;->setSystemListener(Lcom/jme3/system/SystemListener;)V

    .line 11
    iget-object p1, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {p1, p2}, Lcom/jme3/system/JmeContext;->create(Z)V

    return-void
.end method

.method public start(Z)V
    .locals 1

    .line 2
    sget-object v0, Lcom/jme3/system/JmeContext$Type;->Display:Lcom/jme3/system/JmeContext$Type;

    invoke-virtual {p0, v0, p1}, Lcom/jme3/app/LegacyApplication;->start(Lcom/jme3/system/JmeContext$Type;Z)V

    return-void
.end method

.method public startCanvas()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/app/LegacyApplication;->startCanvas(Z)V

    return-void
.end method

.method public startCanvas(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0, p1}, Lcom/jme3/system/JmeContext;->create(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/app/LegacyApplication;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 4

    .line 2
    sget-object v0, Lcom/jme3/app/LegacyApplication;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Closing application: {0}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->context:Lcom/jme3/system/JmeContext;

    invoke-interface {v0, p1}, Lcom/jme3/system/JmeContext;->destroy(Z)V

    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    invoke-static {v0}, Lcom/jme3/audio/AudioContext;->setAudioRenderer(Lcom/jme3/audio/AudioRenderer;)V

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/jme3/profile/AppStep;->QueuedTasks:Lcom/jme3/profile/AppStep;

    invoke-interface {v0, v1}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/app/LegacyApplication;->runQueuedTasks()V

    iget v0, p0, Lcom/jme3/app/LegacyApplication;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/jme3/app/LegacyApplication;->paused:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v0}, Lcom/jme3/system/Timer;->update()V

    iget-boolean v0, p0, Lcom/jme3/app/LegacyApplication;->inputEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/jme3/profile/AppStep;->ProcessInput:Lcom/jme3/profile/AppStep;

    invoke-interface {v0, v1}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v1}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->update(F)V

    :cond_3
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->prof:Lcom/jme3/profile/AppProfiler;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/jme3/profile/AppStep;->ProcessAudio:Lcom/jme3/profile/AppStep;

    invoke-interface {v0, v1}, Lcom/jme3/profile/AppProfiler;->appStep(Lcom/jme3/profile/AppStep;)V

    :cond_4
    iget-object v0, p0, Lcom/jme3/app/LegacyApplication;->audioRenderer:Lcom/jme3/audio/AudioRenderer;

    iget-object v1, p0, Lcom/jme3/app/LegacyApplication;->timer:Lcom/jme3/system/Timer;

    invoke-virtual {v1}, Lcom/jme3/system/Timer;->getTimePerFrame()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/jme3/audio/AudioRenderer;->update(F)V

    :cond_5
    :goto_0
    return-void
.end method
