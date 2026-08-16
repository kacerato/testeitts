.class public Lcom/jme3/audio/AudioNode;
.super Lcom/jme3/scene/Node;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/audio/AudioSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/audio/AudioNode$Status;
    }
.end annotation


# static fields
.field public static final SAVABLE_VERSION:I = 0x1


# instance fields
.field protected audioKey:Lcom/jme3/audio/AudioKey;

.field protected volatile transient channel:I

.field protected transient data:Lcom/jme3/audio/AudioData;

.field protected direction:Lcom/jme3/math/Vector3f;

.field private directional:Z

.field protected dryFilter:Lcom/jme3/audio/Filter;

.field protected innerAngle:F

.field protected lastTpf:F

.field protected loop:Z

.field protected maxDistance:F

.field protected outerAngle:F

.field protected pitch:F

.field protected positional:Z

.field protected previousWorldTranslation:Lcom/jme3/math/Vector3f;

.field protected refDistance:F

.field protected reverbEnabled:Z

.field protected reverbFilter:Lcom/jme3/audio/Filter;

.field protected volatile transient status:Lcom/jme3/audio/AudioSource$Status;

.field protected timeOffset:F

.field protected velocity:Lcom/jme3/math/Vector3f;

.field protected velocityFromTranslation:Z

.field protected volume:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/jme3/audio/AudioNode;->volume:F

    .line 4
    iput v1, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    .line 7
    sget-object v3, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioSource$Status;

    const/4 v3, -0x1

    .line 8
    iput v3, p0, Lcom/jme3/audio/AudioNode;->channel:I

    .line 9
    sget-object v3, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->previousWorldTranslation:Lcom/jme3/math/Vector3f;

    .line 10
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    .line 11
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    const/high16 v3, 0x43480000    # 200.0f

    .line 12
    iput v3, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    const/high16 v3, 0x41200000    # 10.0f

    .line 13
    iput v3, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    .line 14
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    .line 15
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v2, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x43b40000    # 360.0f

    .line 16
    iput v1, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    .line 17
    iput v1, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    .line 19
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    sget-object v0, Lcom/jme3/audio/AudioData$DataType;->Buffer:Lcom/jme3/audio/AudioData$DataType;

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/audio/AudioNode;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Lcom/jme3/audio/AudioData$DataType;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Lcom/jme3/audio/AudioData$DataType;)V
    .locals 2

    .line 40
    sget-object v0, Lcom/jme3/audio/AudioData$DataType;->Stream:Lcom/jme3/audio/AudioData$DataType;

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/jme3/audio/AudioNode;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/audio/AudioNode;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;ZZ)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lcom/jme3/audio/AudioNode;->volume:F

    .line 44
    iput v1, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    const/4 v2, 0x0

    .line 45
    iput v2, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    const/4 v3, 0x0

    .line 46
    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    .line 47
    sget-object v3, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioSource$Status;

    const/4 v3, -0x1

    .line 48
    iput v3, p0, Lcom/jme3/audio/AudioNode;->channel:I

    .line 49
    sget-object v3, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->previousWorldTranslation:Lcom/jme3/math/Vector3f;

    .line 50
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    .line 51
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    const/high16 v3, 0x43480000    # 200.0f

    .line 52
    iput v3, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    const/high16 v3, 0x41200000    # 10.0f

    .line 53
    iput v3, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    .line 54
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    .line 55
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v2, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x43b40000    # 360.0f

    .line 56
    iput v1, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    .line 57
    iput v1, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    .line 59
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    .line 60
    new-instance v0, Lcom/jme3/audio/AudioKey;

    invoke-direct {v0, p2, p3, p4}, Lcom/jme3/audio/AudioKey;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    .line 61
    invoke-interface {p1, v0}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/audio/AudioData;

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/audio/AudioData;Lcom/jme3/audio/AudioKey;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    iput v1, p0, Lcom/jme3/audio/AudioNode;->volume:F

    .line 23
    iput v1, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    const/4 v2, 0x0

    .line 24
    iput v2, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    const/4 v3, 0x0

    .line 25
    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    .line 26
    sget-object v3, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioSource$Status;

    const/4 v3, -0x1

    .line 27
    iput v3, p0, Lcom/jme3/audio/AudioNode;->channel:I

    .line 28
    sget-object v3, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->previousWorldTranslation:Lcom/jme3/math/Vector3f;

    .line 29
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    .line 30
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    const/high16 v3, 0x43480000    # 200.0f

    .line 31
    iput v3, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    const/high16 v3, 0x41200000    # 10.0f

    .line 32
    iput v3, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    .line 33
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    .line 34
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v2, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v3, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x43b40000    # 360.0f

    .line 35
    iput v1, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    .line 36
    iput v1, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    .line 38
    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/jme3/audio/AudioNode;->setAudioData(Lcom/jme3/audio/AudioData;Lcom/jme3/audio/AudioKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/audio/AudioRenderer;Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    sget-object p1, Lcom/jme3/audio/AudioData$DataType;->Buffer:Lcom/jme3/audio/AudioData$DataType;

    invoke-direct {p0, p2, p3, p1}, Lcom/jme3/audio/AudioNode;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Lcom/jme3/audio/AudioData$DataType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->clone()Lcom/jme3/audio/AudioNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/audio/AudioNode;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/jme3/scene/Spatial;->clone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioNode;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->clone()Lcom/jme3/audio/AudioNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->clone()Lcom/jme3/audio/AudioNode;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Node;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    iget-boolean p2, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    :goto_0
    iput-object p2, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    sget-object p2, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/audio/AudioNode;->previousWorldTranslation:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/audio/AudioNode;->dryFilter:Lcom/jme3/audio/Filter;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/audio/Filter;

    iput-object p2, p0, Lcom/jme3/audio/AudioNode;->dryFilter:Lcom/jme3/audio/Filter;

    iget-object p2, p0, Lcom/jme3/audio/AudioNode;->reverbFilter:Lcom/jme3/audio/Filter;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/audio/Filter;

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->reverbFilter:Lcom/jme3/audio/Filter;

    return-void
.end method

.method public getAudioData()Lcom/jme3/audio/AudioData;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    return-object v0
.end method

.method public getAudioKey()Lcom/jme3/audio/AudioKey;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    return-object v0
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->channel:I

    return v0
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getDryFilter()Lcom/jme3/audio/Filter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->dryFilter:Lcom/jme3/audio/Filter;

    return-object v0
.end method

.method public getInnerAngle()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    return v0
.end method

.method public getMaxDistance()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    return v0
.end method

.method public getOuterAngle()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    return v0
.end method

.method public getPitch()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    return v0
.end method

.method public getPlaybackTime()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/jme3/audio/AudioRenderer;->getSourcePlaybackTime(Lcom/jme3/audio/AudioSource;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getRefDistance()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    return v0
.end method

.method public getRenderer()Lcom/jme3/audio/AudioRenderer;
    .locals 2

    invoke-static {}, Lcom/jme3/audio/AudioContext;->getAudioRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No audio renderer available, make sure call is being performed on render thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReverbFilter()Lcom/jme3/audio/Filter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->reverbFilter:Lcom/jme3/audio/Filter;

    return-object v0
.end method

.method public getStatus()Lcom/jme3/audio/AudioSource$Status;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioSource$Status;

    return-object v0
.end method

.method public getTimeOffset()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    return v0
.end method

.method public getType()Lcom/jme3/audio/AudioData$DataType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/audio/AudioData;->getDataType()Lcom/jme3/audio/AudioData$DataType;

    move-result-object v0

    return-object v0
.end method

.method public getVelocity()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/AudioNode;->volume:F

    return v0
.end method

.method public isDirectional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    return v0
.end method

.method public isPositional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    return v0
.end method

.method public isReverbEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    return v0
.end method

.method public isVelocityFromTranslation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    return v0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/jme3/audio/AudioRenderer;->pauseSource(Lcom/jme3/audio/AudioSource;)V

    return-void
.end method

.method public play()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    invoke-virtual {v0}, Lcom/jme3/audio/AudioData;->getChannels()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only mono audio is supported for positional audio nodes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/jme3/audio/AudioRenderer;->playSource(Lcom/jme3/audio/AudioSource;)V

    return-void
.end method

.method public playInstance()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    invoke-virtual {v0}, Lcom/jme3/audio/AudioData;->getChannels()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only mono audio is supported for positional audio nodes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/jme3/audio/AudioRenderer;->playSourceInstance(Lcom/jme3/audio/AudioSource;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-class v1, Lcom/jme3/audio/AudioNode;

    invoke-interface {v0, v1}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "key"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/audio/AudioKey;

    iput-object v2, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    goto :goto_0

    :cond_0
    const-string v2, "audio_key"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/audio/AudioKey;

    iput-object v2, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    :goto_0
    const-string v2, "looping"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    const-string v2, "volume"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jme3/audio/AudioNode;->volume:F

    const-string v2, "pitch"

    invoke-interface {v0, v2, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    const-string v2, "time_offset"

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    const-string v2, "dry_filter"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/audio/Filter;

    iput-object v2, p0, Lcom/jme3/audio/AudioNode;->dryFilter:Lcom/jme3/audio/Filter;

    const-string v2, "velocity"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iput-object v2, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    const-string v2, "reverb_enabled"

    invoke-interface {v0, v2, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    const-string v2, "reverb_filter"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/audio/Filter;

    iput-object v2, p0, Lcom/jme3/audio/AudioNode;->reverbFilter:Lcom/jme3/audio/Filter;

    const-string v2, "max_distance"

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-interface {v0, v2, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    const-string v2, "ref_distance"

    const/high16 v5, 0x41200000    # 10.0f

    invoke-interface {v0, v2, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    const-string v2, "directional"

    invoke-interface {v0, v2, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    const-string v2, "direction"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    iput-object v2, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    const-string v2, "inner_angle"

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    const-string v2, "outer_angle"

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    const-string v2, "positional"

    invoke-interface {v0, v2, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    const-string v2, "velocity_from_translation"

    invoke-interface {v0, v2, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    invoke-interface {p1, v0}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/audio/AudioData;

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->key:Lcom/jme3/asset/AssetKey;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot locate {0} for audio node {1}"

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderAudio()Lcom/jme3/audio/AudioData;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    :cond_1
    :goto_1
    return-void
.end method

.method public setAudioData(Lcom/jme3/audio/AudioData;Lcom/jme3/audio/AudioKey;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    iput-object p2, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change data once it\'s set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setChannel(I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioSource$Status;

    sget-object v1, Lcom/jme3/audio/AudioSource$Status;->Stopped:Lcom/jme3/audio/AudioSource$Status;

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can only set source id when stopped"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->Direction:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setDirectional(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->IsDirectional:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setDryFilter(Lcom/jme3/audio/Filter;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->dryFilter:Lcom/jme3/audio/Filter;

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->DryFilter:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setInnerAngle(F)V
    .locals 1

    iput p1, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->InnerAngle:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->Looping:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setMaxDistance(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iput p1, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->MaxDistance:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max distance cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOuterAngle(F)V
    .locals 1

    iput p1, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->OuterAngle:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setPitch(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iput p1, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->Pitch:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pitch must be between 0.5 and 2.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPositional(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->IsPositional:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setRefDistance(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iput p1, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->RefDistance:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Reference distance cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReverbEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->ReverbEnabled:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setReverbFilter(Lcom/jme3/audio/Filter;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->reverbFilter:Lcom/jme3/audio/Filter;

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->ReverbFilter:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public final setStatus(Lcom/jme3/audio/AudioSource$Status;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioSource$Status;

    return-void
.end method

.method public setTimeOffset(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    iput p1, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->data:Lcom/jme3/audio/AudioData;

    instance-of v1, v0, Lcom/jme3/audio/AudioStream;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/audio/AudioStream;

    invoke-virtual {v0, p1}, Lcom/jme3/audio/AudioStream;->setTime(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioSource$Status;

    sget-object v0, Lcom/jme3/audio/AudioSource$Status;->Playing:Lcom/jme3/audio/AudioSource$Status;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->stop()V

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->play()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Time offset cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->Velocity:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void
.end method

.method public setVelocityFromTranslation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iput p1, p0, Lcom/jme3/audio/AudioNode;->volume:F

    iget p1, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object p1

    sget-object v0, Lcom/jme3/audio/AudioParam;->Volume:Lcom/jme3/audio/AudioParam;

    invoke-interface {p1, p0, v0}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Volume cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/jme3/audio/AudioRenderer;->stopSource(Lcom/jme3/audio/AudioSource;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->status:Lcom/jme3/audio/AudioSource$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/jme3/audio/AudioNode;->volume:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", vol="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jme3/audio/AudioNode;->volume:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pitch="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateGeometricState()V
    .locals 4

    invoke-super {p0}, Lcom/jme3/scene/Node;->updateGeometricState()V

    iget v0, p0, Lcom/jme3/audio/AudioNode;->channel:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->previousWorldTranslation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v1

    sget-object v2, Lcom/jme3/audio/AudioParam;->Position:Lcom/jme3/audio/AudioParam;

    invoke-interface {v1, p0, v2}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    iget-boolean v1, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->previousWorldTranslation:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/audio/AudioNode;->previousWorldTranslation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/jme3/audio/AudioNode;->lastTpf:F

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/audio/AudioNode;->getRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v1

    sget-object v2, Lcom/jme3/audio/AudioParam;->Velocity:Lcom/jme3/audio/AudioParam;

    invoke-interface {v1, p0, v2}, Lcom/jme3/audio/AudioRenderer;->updateSourceParam(Lcom/jme3/audio/AudioSource;Lcom/jme3/audio/AudioParam;)V

    :cond_1
    iget-object v1, p0, Lcom/jme3/audio/AudioNode;->previousWorldTranslation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_2
    return-void
.end method

.method public updateLogicalState(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iput p1, p0, Lcom/jme3/audio/AudioNode;->lastTpf:F

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->audioKey:Lcom/jme3/audio/AudioKey;

    const-string v1, "audio_key"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->loop:Z

    const-string v1, "looping"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/jme3/audio/AudioNode;->volume:F

    const-string v1, "volume"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/audio/AudioNode;->pitch:F

    const-string v1, "pitch"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/audio/AudioNode;->timeOffset:F

    const-string v1, "time_offset"

    const/4 v4, 0x0

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->dryFilter:Lcom/jme3/audio/Filter;

    const-string v1, "dry_filter"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->velocity:Lcom/jme3/math/Vector3f;

    const-string v1, "velocity"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->reverbEnabled:Z

    const-string v1, "reverb_enabled"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->reverbFilter:Lcom/jme3/audio/Filter;

    const-string v1, "reverb_filter"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/audio/AudioNode;->maxDistance:F

    const-string v1, "max_distance"

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/audio/AudioNode;->refDistance:F

    const-string v1, "ref_distance"

    const/high16 v4, 0x41200000    # 10.0f

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->directional:Z

    const-string v1, "directional"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/audio/AudioNode;->direction:Lcom/jme3/math/Vector3f;

    const-string v1, "direction"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/audio/AudioNode;->innerAngle:F

    const-string v1, "inner_angle"

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/audio/AudioNode;->outerAngle:F

    const-string v1, "outer_angle"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->positional:Z

    const-string v1, "positional"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/audio/AudioNode;->velocityFromTranslation:Z

    const-string v1, "velocity_from_translation"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
