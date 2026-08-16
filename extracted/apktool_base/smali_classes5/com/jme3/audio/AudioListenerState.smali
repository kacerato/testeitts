.class public Lcom/jme3/audio/AudioListenerState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# instance fields
.field private camera:Lcom/jme3/renderer/Camera;

.field private lastTpf:F

.field private listener:Lcom/jme3/audio/Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 1

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/audio/AudioListenerState;->camera:Lcom/jme3/renderer/Camera;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getListener()Lcom/jme3/audio/Listener;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/audio/AudioListenerState;->listener:Lcom/jme3/audio/Listener;

    return-void
.end method

.method public onDisable()V
    .locals 0

    return-void
.end method

.method public onEnable()V
    .locals 0

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jme3/audio/AudioListenerState;->listener:Lcom/jme3/audio/Listener;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/audio/Listener;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/audio/AudioListenerState;->camera:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/audio/AudioListenerState;->listener:Lcom/jme3/audio/Listener;

    invoke-virtual {v1}, Lcom/jme3/audio/Listener;->getVelocity()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 p1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/jme3/audio/AudioListenerState;->lastTpf:F

    div-float/2addr p1, v2

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/audio/AudioListenerState;->listener:Lcom/jme3/audio/Listener;

    invoke-virtual {p1, v0}, Lcom/jme3/audio/Listener;->setLocation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/audio/AudioListenerState;->listener:Lcom/jme3/audio/Listener;

    invoke-virtual {p1, v1}, Lcom/jme3/audio/Listener;->setVelocity(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/audio/AudioListenerState;->listener:Lcom/jme3/audio/Listener;

    invoke-virtual {v0, p1}, Lcom/jme3/audio/Listener;->setVelocity(Lcom/jme3/math/Vector3f;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jme3/audio/AudioListenerState;->listener:Lcom/jme3/audio/Listener;

    invoke-virtual {p1}, Lcom/jme3/audio/Listener;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/audio/AudioListenerState;->camera:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/jme3/audio/AudioListenerState;->listener:Lcom/jme3/audio/Listener;

    invoke-virtual {p1, v0}, Lcom/jme3/audio/Listener;->setRotation(Lcom/jme3/math/Quaternion;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public update(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/AudioListenerState;->lastTpf:F

    return-void
.end method
