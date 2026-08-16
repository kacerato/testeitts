.class public Lcom/jme3/app/DebugKeysAppState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/DebugKeysAppState$DebugKeyListener;
    }
.end annotation


# static fields
.field public static final INPUT_MAPPING_CAMERA_POS:Ljava/lang/String; = "SIMPLEAPP_CameraPos"

.field public static final INPUT_MAPPING_MEMORY:Ljava/lang/String; = "SIMPLEAPP_Memory"


# instance fields
.field private app:Lcom/jme3/app/Application;

.field private inputManager:Lcom/jme3/input/InputManager;

.field private final keyListener:Lcom/jme3/app/DebugKeysAppState$DebugKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    new-instance v0, Lcom/jme3/app/DebugKeysAppState$DebugKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jme3/app/DebugKeysAppState$DebugKeyListener;-><init>(Lcom/jme3/app/DebugKeysAppState;Lcom/jme3/app/DebugKeysAppState$1;)V

    iput-object v0, p0, Lcom/jme3/app/DebugKeysAppState;->keyListener:Lcom/jme3/app/DebugKeysAppState$DebugKeyListener;

    return-void
.end method

.method public static synthetic access$100(Lcom/jme3/app/DebugKeysAppState;)Lcom/jme3/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/jme3/app/DebugKeysAppState;->app:Lcom/jme3/app/Application;

    return-object p0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->cleanup()V

    iget-object v0, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "SIMPLEAPP_CameraPos"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->hasMapping(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    const-string v1, "SIMPLEAPP_Memory"

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->hasMapping(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->deleteMapping(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/app/DebugKeysAppState;->keyListener:Lcom/jme3/app/DebugKeysAppState$DebugKeyListener;

    invoke-virtual {v0, v1}, Lcom/jme3/input/InputManager;->removeListener(Lcom/jme3/input/controls/InputListener;)V

    return-void
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    iput-object p2, p0, Lcom/jme3/app/DebugKeysAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance p2, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v2, 0x2e

    invoke-direct {p2, v2}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v2, v1, [Lcom/jme3/input/controls/Trigger;

    aput-object p2, v2, v0

    const-string p2, "SIMPLEAPP_CameraPos"

    invoke-virtual {p1, p2, v2}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    new-instance v2, Lcom/jme3/input/controls/KeyTrigger;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/jme3/input/controls/KeyTrigger;-><init>(I)V

    new-array v1, v1, [Lcom/jme3/input/controls/Trigger;

    aput-object v2, v1, v0

    const-string v0, "SIMPLEAPP_Memory"

    invoke-virtual {p1, v0, v1}, Lcom/jme3/input/InputManager;->addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V

    iget-object p1, p0, Lcom/jme3/app/DebugKeysAppState;->inputManager:Lcom/jme3/input/InputManager;

    iget-object v1, p0, Lcom/jme3/app/DebugKeysAppState;->keyListener:Lcom/jme3/app/DebugKeysAppState$DebugKeyListener;

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/jme3/input/InputManager;->addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
