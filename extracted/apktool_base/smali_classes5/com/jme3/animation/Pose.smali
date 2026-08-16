.class public final Lcom/jme3/animation/Pose;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private indices:[I

.field private name:Ljava/lang/String;

.field private offsets:[Lcom/jme3/math/Vector3f;

.field private targetMeshIndex:I

.field private final transient tempVec:Lcom/jme3/math/Vector3f;

.field private final transient tempVec2:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Pose;->tempVec:Lcom/jme3/math/Vector3f;

    .line 10
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Pose;->tempVec2:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Lcom/jme3/math/Vector3f;[I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Pose;->tempVec:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/animation/Pose;->tempVec2:Lcom/jme3/math/Vector3f;

    .line 4
    iput-object p1, p0, Lcom/jme3/animation/Pose;->name:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/jme3/animation/Pose;->targetMeshIndex:I

    .line 6
    iput-object p3, p0, Lcom/jme3/animation/Pose;->offsets:[Lcom/jme3/math/Vector3f;

    .line 7
    iput-object p4, p0, Lcom/jme3/animation/Pose;->indices:[I

    return-void
.end method


# virtual methods
.method public apply(FLjava/nio/FloatBuffer;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/animation/Pose;->indices:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/animation/Pose;->offsets:[Lcom/jme3/math/Vector3f;

    aget-object v2, v2, v0

    aget v1, v1, v0

    iget-object v3, p0, Lcom/jme3/animation/Pose;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Pose;->tempVec2:Lcom/jme3/math/Vector3f;

    invoke-static {v2, p2, v1}, Lcom/jme3/util/BufferUtils;->populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    iget-object v2, p0, Lcom/jme3/animation/Pose;->tempVec2:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/animation/Pose;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/animation/Pose;->tempVec2:Lcom/jme3/math/Vector3f;

    invoke-static {v2, p2, v1}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Lcom/jme3/animation/Pose;
    .locals 4

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/Pose;

    .line 3
    iget-object v1, p0, Lcom/jme3/animation/Pose;->indices:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/jme3/animation/Pose;->indices:[I

    .line 4
    iget-object v1, p0, Lcom/jme3/animation/Pose;->offsets:[Lcom/jme3/math/Vector3f;

    if-eqz v1, :cond_0

    .line 5
    array-length v1, v1

    new-array v1, v1, [Lcom/jme3/math/Vector3f;

    iput-object v1, v0, Lcom/jme3/animation/Pose;->offsets:[Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/jme3/animation/Pose;->offsets:[Lcom/jme3/math/Vector3f;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, v0, Lcom/jme3/animation/Pose;->offsets:[Lcom/jme3/math/Vector3f;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

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
    invoke-virtual {p0}, Lcom/jme3/animation/Pose;->clone()Lcom/jme3/animation/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getTargetMeshIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/animation/Pose;->targetMeshIndex:I

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

    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/Pose;->name:Ljava/lang/String;

    const-string v0, "meshIndex"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/animation/Pose;->targetMeshIndex:I

    const-string v0, "indices"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/animation/Pose;->indices:[I

    const-string v0, "offsets"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/animation/Pose;->offsets:[Lcom/jme3/math/Vector3f;

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

    iget-object v0, p0, Lcom/jme3/animation/Pose;->name:Ljava/lang/String;

    const-string v1, "name"

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/jme3/animation/Pose;->targetMeshIndex:I

    const-string v1, "meshIndex"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/animation/Pose;->offsets:[Lcom/jme3/math/Vector3f;

    const-string v1, "offsets"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/animation/Pose;->indices:[I

    const-string v1, "indices"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    return-void
.end method
