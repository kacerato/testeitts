.class public Lcom/jme3/app/FlyCamAppState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"


# instance fields
.field private app:Lcom/jme3/app/Application;

.field private flyCam:Lcom/jme3/input/FlyByCamera;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->cleanup()V

    iget-object v0, p0, Lcom/jme3/app/FlyCamAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {v0}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/app/FlyCamAppState;->flyCam:Lcom/jme3/input/FlyByCamera;

    invoke-virtual {v0}, Lcom/jme3/input/FlyByCamera;->unregisterInput()V

    :cond_0
    return-void
.end method

.method public getCamera()Lcom/jme3/input/FlyByCamera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/FlyCamAppState;->flyCam:Lcom/jme3/input/FlyByCamera;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    iput-object p2, p0, Lcom/jme3/app/FlyCamAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/app/FlyCamAppState;->flyCam:Lcom/jme3/input/FlyByCamera;

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/input/FlyByCamera;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/jme3/input/FlyByCamera;-><init>(Lcom/jme3/renderer/Camera;)V

    iput-object p1, p0, Lcom/jme3/app/FlyCamAppState;->flyCam:Lcom/jme3/input/FlyByCamera;

    :cond_0
    iget-object p1, p0, Lcom/jme3/app/FlyCamAppState;->flyCam:Lcom/jme3/input/FlyByCamera;

    invoke-interface {p2}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/input/FlyByCamera;->registerWithInput(Lcom/jme3/input/InputManager;)V

    :cond_1
    return-void
.end method

.method public setCamera(Lcom/jme3/input/FlyByCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/FlyCamAppState;->flyCam:Lcom/jme3/input/FlyByCamera;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/app/FlyCamAppState;->flyCam:Lcom/jme3/input/FlyByCamera;

    invoke-virtual {v0, p1}, Lcom/jme3/input/FlyByCamera;->setEnabled(Z)V

    return-void
.end method
