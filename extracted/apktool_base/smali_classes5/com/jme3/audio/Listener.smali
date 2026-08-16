.class public Lcom/jme3/audio/Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final location:Lcom/jme3/math/Vector3f;

.field private renderer:Lcom/jme3/audio/AudioRenderer;

.field private final rotation:Lcom/jme3/math/Quaternion;

.field private final velocity:Lcom/jme3/math/Vector3f;

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/jme3/audio/Listener;->volume:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/audio/Listener;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    .line 8
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    .line 9
    new-instance v2, Lcom/jme3/math/Quaternion;

    invoke-direct {v2}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v2, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    iput v3, p0, Lcom/jme3/audio/Listener;->volume:F

    .line 11
    iget-object v3, p1, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 12
    iget-object v0, p1, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 13
    iget-object v0, p1, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 14
    iget v0, p1, Lcom/jme3/audio/Listener;->volume:F

    iput v0, p0, Lcom/jme3/audio/Listener;->volume:F

    .line 15
    iget-object p1, p1, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    iput-object p1, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    return-void
.end method

.method private updateListenerParam(Lcom/jme3/audio/ListenerParam;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/jme3/audio/AudioRenderer;->updateListenerParam(Lcom/jme3/audio/Listener;Lcom/jme3/audio/ListenerParam;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/audio/Listener;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getLeft()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/audio/Listener;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getLocation()Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getUp()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/audio/Listener;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Listener;->volume:F

    return v0
.end method

.method public setLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    sget-object p1, Lcom/jme3/audio/ListenerParam;->Position:Lcom/jme3/audio/ListenerParam;

    invoke-direct {p0, p1}, Lcom/jme3/audio/Listener;->updateListenerParam(Lcom/jme3/audio/ListenerParam;)V

    return-void
.end method

.method public setRenderer(Lcom/jme3/audio/AudioRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    return-void
.end method

.method public setRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    sget-object p1, Lcom/jme3/audio/ListenerParam;->Rotation:Lcom/jme3/audio/ListenerParam;

    invoke-direct {p0, p1}, Lcom/jme3/audio/Listener;->updateListenerParam(Lcom/jme3/audio/ListenerParam;)V

    return-void
.end method

.method public setVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    sget-object p1, Lcom/jme3/audio/ListenerParam;->Velocity:Lcom/jme3/audio/ListenerParam;

    invoke-direct {p0, p1}, Lcom/jme3/audio/Listener;->updateListenerParam(Lcom/jme3/audio/ListenerParam;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Listener;->volume:F

    sget-object p1, Lcom/jme3/audio/ListenerParam;->Volume:Lcom/jme3/audio/ListenerParam;

    invoke-direct {p0, p1}, Lcom/jme3/audio/Listener;->updateListenerParam(Lcom/jme3/audio/ListenerParam;)V

    return-void
.end method
