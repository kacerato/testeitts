.class public abstract Lcom/jme3/bullet/collision/shapes/CollisionShape;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static defaultMargin:F = 0.0f

.field public static final logger:Ljava/util/logging/Logger;

.field private static final rotateIdentity:Lcom/jme3/math/Quaternion;

.field private static final tagEnableContactFilter:Ljava/lang/String; = "enableContactFilter"

.field private static final tagMargin:Ljava/lang/String; = "margin"

.field private static final tagScale:Ljava/lang/String; = "scale"

.field private static final tagUserIndex:Ljava/lang/String; = "userIndex"

.field private static final tagUserIndex2:Ljava/lang/String; = "userIndex2"

.field private static final transformIdentity:Lcom/jme3/math/Transform;

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field protected enableContactFilter:Z

.field protected margin:F

.field protected scale:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->rotateIdentity:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->transformIdentity:Lcom/jme3/math/Transform;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->translateIdentity:Lcom/jme3/math/Vector3f;

    const v0, 0x3d23d70a    # 0.04f

    sput v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->defaultMargin:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    sget v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->defaultMargin:F

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private checkScale(Lcom/jme3/math/Vector3f;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getLocalScaling(JLcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/jme3/bullet/collision/shapes/CollisionShape;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    filled-new-array {p0, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "mismatch detected: shape={0} copy={1} native={2}"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/util/DebugShapeFactory;->removeShapeFromCache(J)V

    invoke-static {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->finalizeNative(J)V

    return-void
.end method

.method private static native getAabb(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
.end method

.method public static getDefaultMargin()F
    .locals 1

    sget v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->defaultMargin:F

    return v0
.end method

.method private static native getLocalScaling(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getLocalScalingDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native getMargin(J)F
.end method

.method public static final native getShapeType(J)I
.end method

.method private static native getUserIndex(J)I
.end method

.method private static native getUserIndex2(J)I
.end method

.method private static native isConcave(J)Z
.end method

.method private static native isContactFilterEnabled(J)Z
.end method

.method private static native isConvex(J)Z
.end method

.method private static native isInfinite(J)Z
.end method

.method private static native isNonMoving(J)Z
.end method

.method private static native isPolyhedral(J)Z
.end method

.method private static native setContactFilterEnabled(JZ)V
.end method

.method public static setDefaultMargin(F)V
    .locals 1

    const-string v0, "margin"

    invoke-static {p0, v0}, Lif/E;->E(FLjava/lang/String;)Z

    sput p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->defaultMargin:F

    return-void
.end method

.method private static native setLocalScaling(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setMargin(JF)V
.end method

.method private static native setUserIndex(JI)V
.end method

.method private static native setUserIndex2(JI)V
.end method


# virtual methods
.method public aabbCenter(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    sget-object v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->translateIdentity:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/bullet/collision/shapes/CollisionShape;->rotateIdentity:Lcom/jme3/math/Quaternion;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->boundingBox(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public aabbScaledVolume()F
    .locals 3

    sget-object v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->translateIdentity:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/bullet/collision/shapes/CollisionShape;->rotateIdentity:Lcom/jme3/math/Quaternion;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->boundingBox(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jme3/bounding/BoundingBox;->getExtent(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, v0

    return v1
.end method

.method public boundingBox(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;
    .locals 8

    .line 1
    const-string v0, "translation"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    const-string v0, "rotation"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p3}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->recalculateAabb()V

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 7
    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7}, Lcom/jme3/math/Vector3f;-><init>()V

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v6

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getAabb(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 9
    invoke-virtual {p3, v7, v6}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-object p3
.end method

.method public boundingBox(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;
    .locals 7

    .line 10
    const-string v0, "translation"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 11
    const-string v0, "rotation"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p3, :cond_0

    .line 12
    new-instance p3, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p3}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->recalculateAabb()V

    .line 14
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 15
    new-instance v2, Lcom/jme3/math/Matrix3f;

    invoke-direct {v2}, Lcom/jme3/math/Matrix3f;-><init>()V

    invoke-virtual {v2, p2}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Matrix3f;

    move-result-object v3

    .line 16
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 17
    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6}, Lcom/jme3/math/Vector3f;-><init>()V

    move-object v2, p1

    move-object v4, v6

    move-object v5, p2

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getAabb(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 19
    invoke-virtual {p3, v6, p2}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-object p3
.end method

.method public canScale(Lcom/jme3/math/Vector3f;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljf/h;->z(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public canSplit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    return-void
.end method

.method public final copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex2()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex2(I)V

    return-void
.end method

.method public getMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    return v0
.end method

.method public getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getScaleDp(Lcom/simsilica/mathd/Vec3d;)Lcom/simsilica/mathd/Vec3d;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    if-nez p1, :cond_0

    new-instance p1, Lcom/simsilica/mathd/Vec3d;

    invoke-direct {p1}, Lcom/simsilica/mathd/Vec3d;-><init>()V

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getLocalScalingDp(JLcom/simsilica/mathd/Vec3d;)V

    return-object p1
.end method

.method public getShapeType()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getShapeType(J)I

    move-result v0

    return v0
.end method

.method public isConcave()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isConcave(J)Z

    move-result v0

    return v0
.end method

.method public isContactFilterEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    return v0
.end method

.method public isConvex()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isConvex(J)Z

    move-result v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isInfinite(J)Z

    move-result v0

    return v0
.end method

.method public isNonMoving()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isNonMoving(J)Z

    move-result v0

    return v0
.end method

.method public isPolyhedral()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->isPolyhedral(J)Z

    move-result v0

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;
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
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->jmeClone()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v0

    return-object v0
.end method

.method public maxRadius()F
    .locals 2

    sget-object v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->transformIdentity:Lcom/jme3/math/Transform;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jme3/bullet/util/DebugShapeFactory;->maxDistance(Lcom/jme3/bullet/collision/shapes/CollisionShape;Lcom/jme3/math/Transform;I)F

    move-result v0

    return v0
.end method

.method public final nativeMargin()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin(J)F

    move-result v0

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

    const-string v0, "enableContactFilter"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "scale"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const-string v0, "margin"

    const v1, 0x3d23d70a    # 0.04f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    return-void
.end method

.method public final readShapeProperties(Lcom/jme3/export/InputCapsule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "userIndex"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(I)V

    const-string v0, "userIndex2"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex2(I)V

    return-void
.end method

.method public recalculateAabb()V
    .locals 0

    return-void
.end method

.method public scaledVolume()F
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContactFilterEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(JZ)V

    .line 3
    iput-boolean p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    return-void
.end method

.method public setMargin(F)V
    .locals 3

    .line 1
    const-string v0, "margin"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(JF)V

    .line 4
    sget-object v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Margining {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    return-void
.end method

.method public setNativeId(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object p1, Lcom/jme3/bullet/collision/shapes/CollisionShape;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v0, "Created {0}."

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p1, p1, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)V
    .locals 3

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setLocalScaling(JLcom/jme3/math/Vector3f;)V

    .line 7
    sget-object p1, Lcom/jme3/bullet/collision/shapes/CollisionShape;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Scaling {0}."

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 10
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v0, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 11
    const-string v0, "%s cannot be scaled to (%s,%s,%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserIndex(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex(JI)V

    return-void
.end method

.method public setUserIndex2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setUserIndex2(JI)V

    return-void
.end method

.method public toSplittableShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lmf/j;->a(Lcom/jme3/bullet/collision/shapes/CollisionShape;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateScale()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getLocalScaling(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public userIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getUserIndex(J)I

    move-result v0

    return v0
.end method

.method public userIndex2()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getUserIndex2(J)I

    move-result v0

    return v0
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

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    const-string v1, "enableContactFilter"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    const-string v1, "scale"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    const-string v1, "margin"

    const v2, 0x3d23d70a    # 0.04f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex()I

    move-result v0

    const-string v1, "userIndex"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->userIndex2()I

    move-result v0

    const-string v1, "userIndex2"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
