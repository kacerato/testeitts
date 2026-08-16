.class public Lcom/jme3/animation/AudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/animation/ClonableTrack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/animation/AudioTrack$OnEndListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private audio:Lcom/jme3/audio/AudioNode;

.field private initialized:Z

.field private length:F

.field private played:Z

.field private startOffset:F

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/animation/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/animation/AudioTrack;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    .line 3
    iput v0, p0, Lcom/jme3/animation/AudioTrack;->length:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jme3/animation/AudioTrack;->initialized:Z

    .line 5
    iput-boolean v0, p0, Lcom/jme3/animation/AudioTrack;->started:Z

    .line 6
    iput-boolean v0, p0, Lcom/jme3/animation/AudioTrack;->played:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/audio/AudioNode;F)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/jme3/animation/AudioTrack;->initialized:Z

    .line 10
    iput-boolean v0, p0, Lcom/jme3/animation/AudioTrack;->started:Z

    .line 11
    iput-boolean v0, p0, Lcom/jme3/animation/AudioTrack;->played:Z

    .line 12
    iput-object p1, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    .line 13
    iput p2, p0, Lcom/jme3/animation/AudioTrack;->length:F

    .line 14
    invoke-direct {p0, p0}, Lcom/jme3/animation/AudioTrack;->setUserData(Lcom/jme3/animation/AudioTrack;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/audio/AudioNode;FF)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/jme3/animation/AudioTrack;-><init>(Lcom/jme3/audio/AudioNode;F)V

    .line 16
    iput p3, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/animation/AudioTrack;)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/animation/AudioTrack;->stop()V

    return-void
.end method

.method private findAudio(Lcom/jme3/scene/Spatial;)Lcom/jme3/audio/AudioNode;
    .locals 2

    instance-of v0, p1, Lcom/jme3/audio/AudioNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/audio/AudioNode;

    const-string v0, "TrackInfo"

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v0}, Lcom/jme3/animation/AudioTrack;->findAudio(Lcom/jme3/scene/Spatial;)Lcom/jme3/audio/AudioNode;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method private setUserData(Lcom/jme3/animation/AudioTrack;)V
    .locals 3

    iget-object v0, p1, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    const-string v1, "TrackInfo"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/animation/TrackInfo;

    invoke-direct {v0}, Lcom/jme3/animation/TrackInfo;-><init>()V

    iget-object v2, p1, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    invoke-virtual {v2, v1, v0}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jme3/animation/TrackInfo;->addTrack(Lcom/jme3/animation/Track;)V

    return-void
.end method

.method private stop()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    invoke-virtual {v0}, Lcom/jme3/audio/AudioNode;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/animation/AudioTrack;->started:Z

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    const-string v1, "TrackInfo"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/scene/Spatial;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clone()Lcom/jme3/animation/AudioTrack;
    .locals 4

    .line 3
    new-instance v0, Lcom/jme3/animation/AudioTrack;

    iget-object v1, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    iget v2, p0, Lcom/jme3/animation/AudioTrack;->length:F

    iget v3, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/animation/AudioTrack;-><init>(Lcom/jme3/audio/AudioNode;FF)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/animation/Track;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/AudioTrack;->clone()Lcom/jme3/animation/AudioTrack;

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

    .line 2
    invoke-virtual {p0}, Lcom/jme3/animation/AudioTrack;->clone()Lcom/jme3/animation/AudioTrack;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/jme3/animation/AudioTrack;->initialized:Z

    iput-boolean p2, p0, Lcom/jme3/animation/AudioTrack;->started:Z

    iput-boolean p2, p0, Lcom/jme3/animation/AudioTrack;->played:Z

    iget-object p2, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/audio/AudioNode;

    iput-object p1, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    return-void
.end method

.method public cloneForSpatial(Lcom/jme3/scene/Spatial;)Lcom/jme3/animation/Track;
    .locals 4

    new-instance v0, Lcom/jme3/animation/AudioTrack;

    invoke-direct {v0}, Lcom/jme3/animation/AudioTrack;-><init>()V

    iget v1, p0, Lcom/jme3/animation/AudioTrack;->length:F

    iput v1, v0, Lcom/jme3/animation/AudioTrack;->length:F

    iget v1, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    iput v1, v0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    invoke-direct {p0, p1}, Lcom/jme3/animation/AudioTrack;->findAudio(Lcom/jme3/scene/Spatial;)Lcom/jme3/audio/AudioNode;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    if-nez v1, :cond_0

    sget-object v1, Lcom/jme3/animation/AudioTrack;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "{0} was not found in {1} or is not bound to this track"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    iput-object p1, v0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    :cond_0
    invoke-direct {p0, v0}, Lcom/jme3/animation/AudioTrack;->setUserData(Lcom/jme3/animation/AudioTrack;)V

    return-object v0
.end method

.method public getAudio()Lcom/jme3/audio/AudioNode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    return-object v0
.end method

.method public getKeyFrameTimes()[F
    .locals 3

    iget v0, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AudioTrack;->length:F

    return v0
.end method

.method public getStartOffset()F
    .locals 1

    iget v0, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error cloning"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "audio"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioNode;

    iput-object v0, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    const-string v0, "length"

    iget v1, p0, Lcom/jme3/animation/AudioTrack;->length:F

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/animation/AudioTrack;->length:F

    const-string v0, "startOffset"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    return-void
.end method

.method public setAudio(Lcom/jme3/audio/AudioNode;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    if-eqz v0, :cond_0

    const-string v0, "TrackInfo"

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/TrackInfo;

    invoke-virtual {v0}, Lcom/jme3/animation/TrackInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    invoke-direct {p0, p0}, Lcom/jme3/animation/AudioTrack;->setUserData(Lcom/jme3/animation/AudioTrack;)V

    return-void
.end method

.method public setStartOffset(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    return-void
.end method

.method public setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V
    .locals 0

    iget p2, p0, Lcom/jme3/animation/AudioTrack;->length:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/jme3/animation/AudioTrack;->initialized:Z

    const/4 p4, 0x1

    if-nez p2, :cond_1

    new-instance p2, Lcom/jme3/animation/AudioTrack$OnEndListener;

    const/4 p5, 0x0

    invoke-direct {p2, p0, p5}, Lcom/jme3/animation/AudioTrack$OnEndListener;-><init>(Lcom/jme3/animation/AudioTrack;Lcom/jme3/animation/AudioTrack$1;)V

    invoke-virtual {p3, p2}, Lcom/jme3/animation/AnimControl;->addListener(Lcom/jme3/animation/AnimEventListener;)V

    iput-boolean p4, p0, Lcom/jme3/animation/AudioTrack;->initialized:Z

    :cond_1
    iget-boolean p2, p0, Lcom/jme3/animation/AudioTrack;->started:Z

    if-nez p2, :cond_2

    iget p2, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    iput-boolean p4, p0, Lcom/jme3/animation/AudioTrack;->started:Z

    iget-object p1, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    invoke-virtual {p1}, Lcom/jme3/audio/AudioNode;->playInstance()V

    :cond_2
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/animation/AudioTrack;->audio:Lcom/jme3/audio/AudioNode;

    const-string v1, "audio"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/animation/AudioTrack;->length:F

    const-string v1, "length"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/animation/AudioTrack;->startOffset:F

    const-string v1, "startOffset"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
