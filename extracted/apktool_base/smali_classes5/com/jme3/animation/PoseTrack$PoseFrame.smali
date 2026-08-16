.class public Lcom/jme3/animation/PoseTrack$PoseFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/animation/PoseTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoseFrame"
.end annotation


# instance fields
.field poses:[Lcom/jme3/animation/Pose;

.field weights:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/jme3/animation/Pose;[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->poses:[Lcom/jme3/animation/Pose;

    .line 3
    iput-object p2, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->weights:[F

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/animation/PoseTrack$PoseFrame;
    .locals 4

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/PoseTrack$PoseFrame;

    .line 3
    iget-object v1, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->weights:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/jme3/animation/PoseTrack$PoseFrame;->weights:[F

    .line 4
    iget-object v1, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->poses:[Lcom/jme3/animation/Pose;

    if-eqz v1, :cond_0

    .line 5
    array-length v1, v1

    new-array v1, v1, [Lcom/jme3/animation/Pose;

    iput-object v1, v0, Lcom/jme3/animation/PoseTrack$PoseFrame;->poses:[Lcom/jme3/animation/Pose;

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->poses:[Lcom/jme3/animation/Pose;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, v0, Lcom/jme3/animation/PoseTrack$PoseFrame;->poses:[Lcom/jme3/animation/Pose;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jme3/animation/Pose;->clone()Lcom/jme3/animation/Pose;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 8
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/PoseTrack$PoseFrame;->clone()Lcom/jme3/animation/PoseTrack$PoseFrame;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "weights"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->weights:[F

    const-string v0, "poses"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/animation/Pose;

    iput-object v0, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->poses:[Lcom/jme3/animation/Pose;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    iget-object v0, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->poses:[Lcom/jme3/animation/Pose;

    const-string v1, "poses"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/PoseTrack$PoseFrame;->weights:[F

    const-string v1, "weights"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    return-void
.end method
