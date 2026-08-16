.class public final Lcom/jme3/animation/PoseTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/animation/Track;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/animation/PoseTrack$PoseFrame;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private frames:[Lcom/jme3/animation/PoseTrack$PoseFrame;

.field private targetMeshIndex:I

.field private times:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[F[Lcom/jme3/animation/PoseTrack$PoseFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/jme3/animation/PoseTrack;->targetMeshIndex:I

    .line 3
    iput-object p2, p0, Lcom/jme3/animation/PoseTrack;->times:[F

    .line 4
    iput-object p3, p0, Lcom/jme3/animation/PoseTrack;->frames:[Lcom/jme3/animation/PoseTrack$PoseFrame;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/animation/PoseTrack;
    .locals 4

    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/PoseTrack;

    .line 4
    iget-object v1, p0, Lcom/jme3/animation/PoseTrack;->times:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/jme3/animation/PoseTrack;->times:[F

    .line 5
    iget-object v1, p0, Lcom/jme3/animation/PoseTrack;->frames:[Lcom/jme3/animation/PoseTrack$PoseFrame;

    if-eqz v1, :cond_0

    .line 6
    array-length v1, v1

    new-array v1, v1, [Lcom/jme3/animation/PoseTrack$PoseFrame;

    iput-object v1, v0, Lcom/jme3/animation/PoseTrack;->frames:[Lcom/jme3/animation/PoseTrack$PoseFrame;

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/jme3/animation/PoseTrack;->frames:[Lcom/jme3/animation/PoseTrack$PoseFrame;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 8
    iget-object v3, v0, Lcom/jme3/animation/PoseTrack;->frames:[Lcom/jme3/animation/PoseTrack$PoseFrame;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jme3/animation/PoseTrack$PoseFrame;->clone()Lcom/jme3/animation/PoseTrack$PoseFrame;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 9
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/jme3/animation/Track;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/animation/PoseTrack;->clone()Lcom/jme3/animation/PoseTrack;

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
    invoke-virtual {p0}, Lcom/jme3/animation/PoseTrack;->clone()Lcom/jme3/animation/PoseTrack;

    move-result-object v0

    return-object v0
.end method

.method public getKeyFrameTimes()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/animation/PoseTrack;->times:[F

    return-object v0
.end method

.method public getLength()F
    .locals 3

    iget-object v0, p0, Lcom/jme3/animation/PoseTrack;->times:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-float v0, v1, v0

    :goto_0
    return v0
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

    const-string v0, "meshIndex"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/animation/PoseTrack;->targetMeshIndex:I

    const-string v0, "times"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/PoseTrack;->times:[F

    const-string v0, "frames"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/animation/PoseTrack$PoseFrame;

    iput-object v0, p0, Lcom/jme3/animation/PoseTrack;->frames:[Lcom/jme3/animation/PoseTrack$PoseFrame;

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setTime(FFLcom/jme3/animation/AnimControl;Lcom/jme3/animation/AnimChannel;Lcom/jme3/util/TempVars;)V
    .locals 0

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

    iget v0, p0, Lcom/jme3/animation/PoseTrack;->targetMeshIndex:I

    const-string v1, "meshIndex"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/animation/PoseTrack;->frames:[Lcom/jme3/animation/PoseTrack$PoseFrame;

    const-string v1, "frames"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/PoseTrack;->times:[F

    const-string v1, "times"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    return-void
.end method
