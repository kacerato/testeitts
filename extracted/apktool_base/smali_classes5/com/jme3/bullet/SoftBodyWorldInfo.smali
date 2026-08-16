.class public Lcom/jme3/bullet/SoftBodyWorldInfo;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagAirDensity:Ljava/lang/String; = "airDensity"

.field private static final tagGravity:Ljava/lang/String; = "gravity"

.field private static final tagMaxDisplacement:Ljava/lang/String; = "maxDisplacement"

.field private static final tagWaterDensity:Ljava/lang/String; = "waterDensity"

.field private static final tagWaterNormal:Ljava/lang/String; = "waterNormal"

.field private static final tagWaterOffset:Ljava/lang/String; = "waterOffset"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/SoftBodyWorldInfo;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 2
    invoke-static {}, Lcom/jme3/bullet/SoftBodyWorldInfo;->createSoftBodyWorldInfo()J

    move-result-wide v0

    .line 3
    invoke-super {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 5
    const-string v0, "native ID"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    .line 6
    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    return-void
.end method

.method private static native createSoftBodyWorldInfo()J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->finalizeNative(J)V

    return-void
.end method

.method private static native getAirDensity(J)F
.end method

.method private static native getGravity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getMaxDisplacement(J)F
.end method

.method private static native getWaterDensity(J)F
.end method

.method private static native getWaterNormal(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getWaterOffset(J)F
.end method

.method private static native setAirDensity(JF)V
.end method

.method private static native setGravity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setMaxDisplacement(JF)V
.end method

.method private static native setSoftBodyWorldInfo(JJ)V
.end method

.method private static native setWaterDensity(JF)V
.end method

.method private static native setWaterNormal(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setWaterOffset(JF)V
.end method


# virtual methods
.method public airDensity()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->getAirDensity(J)F

    move-result v0

    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/jme3/bullet/SoftBodyWorldInfo;->createSoftBodyWorldInfo()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->reassignNativeId(J)V

    check-cast p2, Lcom/jme3/bullet/SoftBodyWorldInfo;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/SoftBodyWorldInfo;->copyAll(Lcom/jme3/bullet/SoftBodyWorldInfo;)V

    return-void
.end method

.method public copyAll(Lcom/jme3/bullet/SoftBodyWorldInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setSoftBodyWorldInfo(JJ)V

    return-void
.end method

.method public copyGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->getGravity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public copyWaterNormal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->getWaterNormal(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public jmeClone()Lcom/jme3/bullet/SoftBodyWorldInfo;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/SoftBodyWorldInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->jmeClone()Lcom/jme3/bullet/SoftBodyWorldInfo;

    move-result-object v0

    return-object v0
.end method

.method public maxDisplacement()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->getMaxDisplacement(J)F

    move-result v0

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

    const-string v0, "airDensity"

    const v1, 0x3f99999a    # 1.2f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setAirDensity(F)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x3ee00000    # -10.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "gravity"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setGravity(Lcom/jme3/math/Vector3f;)V

    const-string v0, "maxDisplacement"

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setMaxDisplacement(F)V

    const-string v0, "waterDensity"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setWaterDensity(F)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "waterNormal"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setWaterNormal(Lcom/jme3/math/Vector3f;)V

    const-string v0, "waterOffset"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setWaterOffset(F)V

    return-void
.end method

.method public setAirDensity(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setAirDensity(JF)V

    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setGravity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setMaxDisplacement(F)V
    .locals 2

    .line 1
    const-string v0, "max displacement"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setMaxDisplacement(JF)V

    return-void
.end method

.method public setWaterDensity(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setWaterDensity(JF)V

    return-void
.end method

.method public setWaterNormal(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setWaterNormal(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setWaterOffset(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->setWaterOffset(JF)V

    return-void
.end method

.method public waterDensity()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->getWaterDensity(J)F

    move-result v0

    return v0
.end method

.method public waterOffset()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/SoftBodyWorldInfo;->getWaterOffset(J)F

    move-result v0

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->airDensity()F

    move-result v0

    const-string v1, "airDensity"

    const v2, 0x3f99999a    # 1.2f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->copyGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "gravity"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->maxDisplacement()F

    move-result v1

    const-string v2, "maxDisplacement"

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->waterDensity()F

    move-result v1

    const-string v2, "waterDensity"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->copyWaterNormal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "waterNormal"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/SoftBodyWorldInfo;->waterOffset()F

    move-result v0

    const-string v1, "waterOffset"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
