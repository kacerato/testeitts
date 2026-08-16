.class public Lcom/jme3/cinematic/TimeLine;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/jme3/cinematic/KeyFrame;",
        ">;",
        "Lcom/jme3/export/Savable;"
    }
.end annotation


# instance fields
.field protected keyFramesPerSeconds:I

.field protected lastKeyFrameIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/jme3/cinematic/TimeLine;->keyFramesPerSeconds:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/cinematic/TimeLine;->lastKeyFrameIndex:I

    return-void
.end method


# virtual methods
.method public addKeyFrameAtIndex(ILcom/jme3/cinematic/KeyFrame;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/jme3/cinematic/KeyFrame;->setIndex(I)V

    iget p2, p0, Lcom/jme3/cinematic/TimeLine;->lastKeyFrameIndex:I

    if-ge p2, p1, :cond_0

    iput p1, p0, Lcom/jme3/cinematic/TimeLine;->lastKeyFrameIndex:I

    :cond_0
    return-void
.end method

.method public addKeyFrameAtTime(FLcom/jme3/cinematic/KeyFrame;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameIndexFromTime(F)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/cinematic/TimeLine;->addKeyFrameAtIndex(ILcom/jme3/cinematic/KeyFrame;)V

    return-void
.end method

.method public getAllKeyFrames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/cinematic/KeyFrame;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getKeyFrameAtIndex(I)Lcom/jme3/cinematic/KeyFrame;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/cinematic/KeyFrame;

    return-object p1
.end method

.method public getKeyFrameAtTime(F)Lcom/jme3/cinematic/KeyFrame;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameIndexFromTime(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/cinematic/KeyFrame;

    return-object p1
.end method

.method public getKeyFrameIndexFromTime(F)I
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/TimeLine;->keyFramesPerSeconds:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getKeyFrameTime(Lcom/jme3/cinematic/KeyFrame;)F
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/cinematic/KeyFrame;->getIndex()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/jme3/cinematic/TimeLine;->keyFramesPerSeconds:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public getLastKeyFrameIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/cinematic/TimeLine;->lastKeyFrameIndex:I

    return v0
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

    const-string v0, "keyFrames"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/cinematic/KeyFrame;

    invoke-virtual {v0}, Lcom/jme3/cinematic/KeyFrame;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/jme3/cinematic/TimeLine;->addKeyFrameAtIndex(ILcom/jme3/cinematic/KeyFrame;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeKeyFrame(F)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameIndexFromTime(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/TimeLine;->removeKeyFrame(I)V

    return-void
.end method

.method public removeKeyFrame(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/jme3/cinematic/TimeLine;->lastKeyFrameIndex:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/TimeLine;->getKeyFrameAtIndex(I)Lcom/jme3/cinematic/KeyFrame;

    move-result-object v0

    .line 4
    iput p1, p0, Lcom/jme3/cinematic/TimeLine;->lastKeyFrameIndex:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "keyFrames"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
