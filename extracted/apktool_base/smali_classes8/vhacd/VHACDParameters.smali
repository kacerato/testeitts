.class public Lvhacd/VHACDParameters;
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

    const-class v0, Lvhacd/VHACDParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lvhacd/VHACDParameters;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    invoke-static {}, Lvhacd/VHACDParameters;->create()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    const-wide v2, 0x3f647ae147ae147bL    # 0.0025

    invoke-static {v0, v1, v2, v3}, Lvhacd/VHACDParameters;->setConcavity(JD)V

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lvhacd/VHACDParameters;->setMaxNumVerticesPerCH(JI)V

    return-void
.end method

.method private static native create()J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lvhacd/VHACDParameters;->finalizeNative(J)V

    return-void
.end method

.method private static native getAlpha(J)D
.end method

.method private static native getBeta(J)D
.end method

.method private static native getConcavity(J)D
.end method

.method private getConvexHullApproximation()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getConvexhullApproximation(J)I

    move-result v0

    return v0
.end method

.method private static native getConvexhullApproximation(J)I
.end method

.method private static native getConvexhullDownsampling(J)I
.end method

.method private static native getMaxNumVerticesPerCH(J)I
.end method

.method private static native getMinVolumePerCH(J)D
.end method

.method private static native getMode(J)I
.end method

.method private getOclAcceleration()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getOclAcceleration(J)I

    move-result v0

    return v0
.end method

.method private static native getOclAcceleration(J)I
.end method

.method private static native getPca(J)Z
.end method

.method private static native getPlaneDownsampling(J)I
.end method

.method private static native getResolution(J)I
.end method

.method private static native setAlpha(JD)V
.end method

.method private static native setBeta(JD)V
.end method

.method private static native setConcavity(JD)V
.end method

.method private setConvexHullApproximation(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lvhacd/VHACDParameters;->setConvexhullApproximation(JI)V

    return-void
.end method

.method private static native setConvexhullApproximation(JI)V
.end method

.method private static native setConvexhullDownsampling(JI)V
.end method

.method private static native setMaxNumVerticesPerCH(JI)V
.end method

.method private static native setMinVolumePerCH(JD)V
.end method

.method private static native setMode(JI)V
.end method

.method private setOclAcceleration(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lvhacd/VHACDParameters;->setOclAcceleration(JI)V

    return-void
.end method

.method private static native setOclAcceleration(JI)V
.end method

.method private static native setPca(JZ)V
.end method

.method private static native setPlaneDownsampling(JI)V
.end method

.method private static native setResolution(JI)V
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
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->clone()Lvhacd/VHACDParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lvhacd/VHACDParameters;
    .locals 3

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvhacd/VHACDParameters;

    .line 3
    invoke-static {}, Lvhacd/VHACDParameters;->create()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/jme3/bullet/NativePhysicsObject;->reassignNativeId(J)V

    .line 5
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getACDMode()Lvhacd/ACDMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvhacd/VHACDParameters;->setACDMode(Lvhacd/ACDMode;)V

    .line 6
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getAlpha()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lvhacd/VHACDParameters;->setAlpha(D)V

    .line 7
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getBeta()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lvhacd/VHACDParameters;->setBeta(D)V

    .line 8
    invoke-direct {p0}, Lvhacd/VHACDParameters;->getConvexHullApproximation()I

    move-result v1

    invoke-direct {v0, v1}, Lvhacd/VHACDParameters;->setConvexHullApproximation(I)V

    .line 9
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getConvexHullDownSampling()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd/VHACDParameters;->setConvexHullDownSampling(I)V

    .line 10
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxConcavity()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lvhacd/VHACDParameters;->setMaxConcavity(D)V

    .line 11
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxVerticesPerHull()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd/VHACDParameters;->setMaxVerticesPerHull(I)V

    .line 12
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMinVolumePerHull()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lvhacd/VHACDParameters;->setMinVolumePerHull(D)V

    .line 13
    invoke-direct {p0}, Lvhacd/VHACDParameters;->getOclAcceleration()I

    move-result v1

    invoke-direct {v0, v1}, Lvhacd/VHACDParameters;->setOclAcceleration(I)V

    .line 14
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd/VHACDParameters;->setPCA(Z)V

    .line 15
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPlaneDownSampling()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd/VHACDParameters;->setPlaneDownSampling(I)V

    .line 16
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getVoxelResolution()I

    move-result v1

    invoke-virtual {v0, v1}, Lvhacd/VHACDParameters;->setVoxelResolution(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12

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

    check-cast p1, Lvhacd/VHACDParameters;

    invoke-direct {p1}, Lvhacd/VHACDParameters;->getConvexHullApproximation()I

    move-result v2

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getConvexHullDownSampling()I

    move-result v3

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getMaxConcavity()D

    move-result-wide v4

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getMinVolumePerHull()D

    move-result-wide v6

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getACDMode()Lvhacd/ACDMode;

    move-result-object v8

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getACDMode()Lvhacd/ACDMode;

    move-result-object v9

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getAlpha()D

    move-result-wide v8

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getAlpha()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getBeta()D

    move-result-wide v8

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getBeta()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0}, Lvhacd/VHACDParameters;->getConvexHullApproximation()I

    move-result v8

    if-ne v8, v2, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getConvexHullDownSampling()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getDebugEnabled()Z

    move-result v2

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getDebugEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxConcavity()D

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxVerticesPerHull()I

    move-result v2

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getMaxVerticesPerHull()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMinVolumePerHull()D

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lvhacd/VHACDParameters;->getOclAcceleration()I

    move-result v2

    invoke-direct {p1}, Lvhacd/VHACDParameters;->getOclAcceleration()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPCA()Z

    move-result v2

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getPCA()Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPlaneDownSampling()I

    move-result v2

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getPlaneDownSampling()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getVoxelResolution()I

    move-result v2

    invoke-virtual {p1}, Lvhacd/VHACDParameters;->getVoxelResolution()I

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
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lvhacd/VHACDParameters;->setMaxConcavity(D)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lvhacd/VHACDParameters;->setAlpha(D)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lvhacd/VHACDParameters;->setBeta(D)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lvhacd/VHACDParameters;->setMinVolumePerHull(D)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd/VHACDParameters;->setVoxelResolution(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd/VHACDParameters;->setMaxVerticesPerHull(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd/VHACDParameters;->setPlaneDownSampling(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lvhacd/VHACDParameters;->setConvexHullDownSampling(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lvhacd/VHACDParameters;->setPCA(Z)V

    invoke-static {}, Lvhacd/ACDMode;->values()[Lvhacd/ACDMode;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lvhacd/VHACDParameters;->setACDMode(Lvhacd/ACDMode;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lvhacd/VHACDParameters;->setConvexHullApproximation(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lvhacd/VHACDParameters;->setOclAcceleration(I)V
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

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public getACDMode()Lvhacd/ACDMode;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getMode(J)I

    move-result v0

    invoke-static {}, Lvhacd/ACDMode;->values()[Lvhacd/ACDMode;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getAlpha()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getAlpha(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBeta()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getBeta(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getConvexHullDownSampling()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getConvexhullDownsampling(J)I

    move-result v0

    return v0
.end method

.method public getDebugEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lvhacd/VHACDParameters;->debug:Z

    return v0
.end method

.method public getMaxConcavity()D
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getConcavity(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxVerticesPerHull()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getMaxNumVerticesPerCH(J)I

    move-result v0

    return v0
.end method

.method public getMinVolumePerHull()D
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getMinVolumePerCH(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPCA()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getPca(J)Z

    move-result v0

    return v0
.end method

.method public getPlaneDownSampling()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getPlaneDownsampling(J)I

    move-result v0

    return v0
.end method

.method public getVoxelResolution()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvhacd/VHACDParameters;->getResolution(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lvhacd/VHACDParameters;->debug:Z

    const/16 v1, 0x19f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getACDMode()Lvhacd/ACDMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getAlpha()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getBeta()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-direct {p0}, Lvhacd/VHACDParameters;->getConvexHullApproximation()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getConvexHullDownSampling()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxConcavity()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxVerticesPerHull()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMinVolumePerHull()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-direct {p0}, Lvhacd/VHACDParameters;->getOclAcceleration()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPCA()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPlaneDownSampling()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x53

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getVoxelResolution()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public setACDMode(Lvhacd/ACDMode;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lvhacd/VHACDParameters;->setMode(JI)V

    return-void
.end method

.method public setAlpha(D)V
    .locals 2

    .line 1
    const-string v0, "alpha"

    invoke-static {p1, p2, v0}, Lif/E;->e(DLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lvhacd/VHACDParameters;->setAlpha(JD)V

    return-void
.end method

.method public setBeta(D)V
    .locals 2

    .line 1
    const-string v0, "beta"

    invoke-static {p1, p2, v0}, Lif/E;->e(DLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lvhacd/VHACDParameters;->setBeta(JD)V

    return-void
.end method

.method public setConvexHullDownSampling(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    const-string v2, "precision"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lvhacd/VHACDParameters;->setConvexhullDownsampling(JI)V

    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lvhacd/VHACDParameters;->debug:Z

    return-void
.end method

.method public setMaxConcavity(D)V
    .locals 2

    const-string v0, "concavity"

    invoke-static {p1, p2, v0}, Lif/E;->e(DLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lvhacd/VHACDParameters;->setConcavity(JD)V

    return-void
.end method

.method public setMaxVerticesPerHull(I)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x400

    const-string v2, "limit"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lvhacd/VHACDParameters;->setMaxNumVerticesPerCH(JI)V

    return-void
.end method

.method public setMinVolumePerHull(D)V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    const-string v2, "min volume"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lif/E;->g(DLjava/lang/String;DD)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lvhacd/VHACDParameters;->setMinVolumePerCH(JD)V

    return-void
.end method

.method public setPCA(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lvhacd/VHACDParameters;->setPca(JZ)V

    return-void
.end method

.method public setPlaneDownSampling(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    const-string v2, "granularity"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lvhacd/VHACDParameters;->setPlaneDownsampling(JI)V

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

    invoke-static {v0, v1, p1}, Lvhacd/VHACDParameters;->setResolution(JI)V

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

    const-string v1, "ACDMode"

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getACDMode()Lvhacd/ACDMode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getAlpha()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "alpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getBeta()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "beta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lvhacd/VHACDParameters;->debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getConvexHullDownSampling()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hullDS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxConcavity()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "maxConcavity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxVerticesPerHull()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxVerticesPH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMinVolumePerHull()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "minVolumePH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getVoxelResolution()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resolution"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPCA()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PCA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPlaneDownSampling()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "planeDS"

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
    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxConcavity()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getAlpha()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getBeta()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMinVolumePerHull()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getVoxelResolution()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxVerticesPerHull()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPlaneDownSampling()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getConvexHullDownSampling()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPCA()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getACDMode()Lvhacd/ACDMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0}, Lvhacd/VHACDParameters;->getConvexHullApproximation()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-direct {p0}, Lvhacd/VHACDParameters;->getOclAcceleration()I

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
    .locals 11

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getACDMode()Lvhacd/ACDMode;

    move-result-object v0

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getAlpha()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getBeta()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getDebugEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getConvexHullDownSampling()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxConcavity()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMaxVerticesPerHull()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getMinVolumePerHull()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getVoxelResolution()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPCA()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0}, Lvhacd/VHACDParameters;->getPlaneDownSampling()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VHACDParameters[%n %s  alpha=%s  beta=%s  debug=%s  hullDS=%s%n maxConcavity=%s  maxVerticesPH=%s  minVolumePH=%s%n resolution=%s  PCA=%s  planeDS=%s%n]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
