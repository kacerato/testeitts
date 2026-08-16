.class public Lvhacd4/Vhacd4Parameters;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lvhacd4/Vhacd4Parameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lvhacd4/Vhacd4Parameters;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    invoke-static {}, Lvhacd4/Vhacd4Parameters;->create()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lvhacd4/Vhacd4Parameters;->setMaxNumVerticesPerCH(JI)V

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lvhacd4/Vhacd4Parameters;->setMaxRecursion(I)V

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, Lvhacd4/Vhacd4Parameters;->setResolution(JI)V

    return-void
.end method

.method private static native create()J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lvhacd4/Vhacd4Parameters;->finalizeNative(J)V

    return-void
.end method

.method private static native getFillMode(J)I
.end method

.method private static native getMaxHulls(J)I
.end method

.method private static native getMaxNumVerticesPerCH(J)I
.end method

.method private static native getMaxRecursion(J)I
.end method

.method private static native getMinEdgeLength(J)I
.end method

.method private static native getResolution(J)I
.end method

.method private static native getVolumePercentError(J)D
.end method

.method private static native isAsync(J)Z
.end method

.method private static native isFindBestPlane(J)Z
.end method

.method private static native isShrinkWrap(J)Z
.end method

.method private static native setAsync(JZ)V
.end method

.method private static native setFillMode(JI)V
.end method

.method private static native setFindBestPlane(JZ)V
.end method

.method private static native setMaxHulls(JI)V
.end method

.method private static native setMaxNumVerticesPerCH(JI)V
.end method

.method private static native setMaxRecursion(JI)V
.end method

.method private static native setMinEdgeLength(JI)V
.end method

.method private static native setResolution(JI)V
.end method

.method private static native setShrinkWrap(JZ)V
.end method

.method private static native setVolumePercentError(JD)V
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->clone()Lvhacd4/Vhacd4Parameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lvhacd4/Vhacd4Parameters;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvhacd4/Vhacd4Parameters;

    .line 3
    invoke-static {}, Lvhacd4/Vhacd4Parameters;->create()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/jme3/bullet/NativePhysicsObject;->reassignNativeId(J)V

    .line 5
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isAsync()Z

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setAsync(Z)V

    .line 6
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getFillMode()Lcom/jme3/bullet/FillMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setFillMode(Lcom/jme3/bullet/FillMode;)V

    .line 7
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isFindBestPlane()Z

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setFindBestPlane(Z)V

    .line 8
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxHulls()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setMaxHulls(I)V

    .line 9
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxRecursion()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setMaxRecursion(I)V

    .line 10
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxVerticesPerHull()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setMaxVerticesPerHull(I)V

    .line 11
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMinEdgeLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setMinEdgeLength(I)V

    .line 12
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isShrinkWrap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setShrinkWrap(Z)V

    .line 13
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVolumePercentError()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lvhacd4/Vhacd4Parameters;->setVolumePercentError(D)V

    .line 14
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVoxelResolution()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd4/Vhacd4Parameters;->setVoxelResolution(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    check-cast p1, Lvhacd4/Vhacd4Parameters;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isAsync()Z

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->isAsync()Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getDebugEnabled()Z

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->getDebugEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getFillMode()Lcom/jme3/bullet/FillMode;

    move-result-object v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->getFillMode()Lcom/jme3/bullet/FillMode;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isFindBestPlane()Z

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->isFindBestPlane()Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxHulls()I

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->getMaxHulls()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxRecursion()I

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->getMaxRecursion()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxVerticesPerHull()I

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->getMaxVerticesPerHull()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMinEdgeLength()I

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->getMinEdgeLength()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isShrinkWrap()Z

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->isShrinkWrap()Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVolumePercentError()D

    move-result-wide v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->getVolumePercentError()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVoxelResolution()I

    move-result v2

    invoke-virtual {p1}, Lvhacd4/Vhacd4Parameters;->getVoxelResolution()I

    move-result p1

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public fromInputStream(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setAsync(Z)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setDebugEnabled(Z)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-static {}, Lcom/jme3/bullet/FillMode;->values()[Lcom/jme3/bullet/FillMode;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setFillMode(Lcom/jme3/bullet/FillMode;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setFindBestPlane(Z)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setMaxHulls(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setMaxRecursion(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setMaxVerticesPerHull(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setMinEdgeLength(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setShrinkWrap(Z)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lvhacd4/Vhacd4Parameters;->setVolumePercentError(D)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd4/Vhacd4Parameters;->setVoxelResolution(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public getDebugEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lvhacd4/Vhacd4Parameters;->debug:Z

    return v0
.end method

.method public getFillMode()Lcom/jme3/bullet/FillMode;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->getFillMode(J)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/jme3/bullet/FillMode;->values()[Lcom/jme3/bullet/FillMode;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getMaxHulls()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->getMaxHulls(J)I

    move-result v0

    return v0
.end method

.method public getMaxRecursion()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->getMaxRecursion(J)I

    move-result v0

    return v0
.end method

.method public getMaxVerticesPerHull()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->getMaxNumVerticesPerCH(J)I

    move-result v0

    return v0
.end method

.method public getMinEdgeLength()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->getMinEdgeLength(J)I

    move-result v0

    return v0
.end method

.method public getVolumePercentError()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->getVolumePercentError(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVoxelResolution()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->getResolution(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isAsync()Z

    move-result v0

    const/16 v1, 0xa

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getDebugEnabled()Z

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getFillMode()Lcom/jme3/bullet/FillMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isFindBestPlane()Z

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxHulls()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxRecursion()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxVerticesPerHull()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMinEdgeLength()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isShrinkWrap()Z

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVolumePercentError()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVoxelResolution()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isAsync()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->isAsync(J)Z

    move-result v0

    return v0
.end method

.method public isFindBestPlane()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->isFindBestPlane(J)Z

    move-result v0

    return v0
.end method

.method public isShrinkWrap()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd4/Vhacd4Parameters;->isShrinkWrap(J)Z

    move-result v0

    return v0
.end method

.method public nextFillMode()V
    .locals 4

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getFillMode()Lcom/jme3/bullet/FillMode;

    move-result-object v0

    sget-object v1, Lvhacd4/Vhacd4Parameters$1;->$SwitchMap$com$jme3$bullet$FillMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/jme3/bullet/FillMode;->FloodFill:Lcom/jme3/bullet/FillMode;

    invoke-virtual {p0, v0}, Lvhacd4/Vhacd4Parameters;->setFillMode(Lcom/jme3/bullet/FillMode;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v0, Lcom/jme3/bullet/FillMode;->SurfaceOnly:Lcom/jme3/bullet/FillMode;

    invoke-virtual {p0, v0}, Lvhacd4/Vhacd4Parameters;->setFillMode(Lcom/jme3/bullet/FillMode;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jme3/bullet/FillMode;->RaycastFill:Lcom/jme3/bullet/FillMode;

    invoke-virtual {p0, v0}, Lvhacd4/Vhacd4Parameters;->setFillMode(Lcom/jme3/bullet/FillMode;)V

    :goto_0
    return-void
.end method

.method public setAsync(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setAsync(JZ)V

    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lvhacd4/Vhacd4Parameters;->debug:Z

    return-void
.end method

.method public setFillMode(Lcom/jme3/bullet/FillMode;)V
    .locals 2

    .line 1
    const-string v0, "mode"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 4
    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setFillMode(JI)V

    return-void
.end method

.method public setFindBestPlane(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setFindBestPlane(JZ)V

    return-void
.end method

.method public setMaxHulls(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x400

    .line 1
    const-string v2, "limit"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setMaxHulls(JI)V

    return-void
.end method

.method public setMaxRecursion(I)V
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x40

    .line 1
    const-string v2, "depth"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setMaxRecursion(JI)V

    return-void
.end method

.method public setMaxVerticesPerHull(I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x800

    const-string v2, "limit"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setMaxNumVerticesPerCH(JI)V

    return-void
.end method

.method public setMinEdgeLength(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    .line 1
    const-string v2, "length"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setMinEdgeLength(JI)V

    return-void
.end method

.method public setShrinkWrap(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setShrinkWrap(JZ)V

    return-void
.end method

.method public setVolumePercentError(D)V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 1
    const-string v2, "percentage"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lif/E;->g(DLjava/lang/String;DD)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lvhacd4/Vhacd4Parameters;->setVolumePercentError(JD)V

    return-void
.end method

.method public setVoxelResolution(I)V
    .locals 3

    const/16 v0, 0x2710

    const v1, 0x3d09000

    const-string v2, "maxVoxels"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lvhacd4/Vhacd4Parameters;->setResolution(JI)V

    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isAsync()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "async"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lvhacd4/Vhacd4Parameters;->debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fillMode"

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getFillMode()Lcom/jme3/bullet/FillMode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isFindBestPlane()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "findBest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxHulls()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxHulls"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxRecursion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxRecursion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxVerticesPerHull()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxVerticesPH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMinEdgeLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minEdge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVoxelResolution()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resolution"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isShrinkWrap()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "shrink"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVolumePercentError()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "volumeErr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toOutputStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isAsync()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getDebugEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getFillMode()Lcom/jme3/bullet/FillMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isFindBestPlane()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxHulls()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxRecursion()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxVerticesPerHull()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMinEdgeLength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isShrinkWrap()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVolumePercentError()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVoxelResolution()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isAsync()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getDebugEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getFillMode()Lcom/jme3/bullet/FillMode;

    move-result-object v3

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isFindBestPlane()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxHulls()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxRecursion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMaxVerticesPerHull()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getMinEdgeLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVoxelResolution()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->isShrinkWrap()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0}, Lvhacd4/Vhacd4Parameters;->getVolumePercentError()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Vhacd4Parameters[%n async=%s  debug=%s  %s  findBest=%s%n maxHulls=%s  maxRecursion=%s  maxVerticesPH=%s  minEdge=%s%n resolution=%s  shrink=%s  volumeErr=%s%%%n]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
