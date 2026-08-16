.class public Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bulletjme"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "points"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>()V

    .line 3
    const-string v0, "points"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "points must not be empty"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "points capacity must be a multiple of 3"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "points must use FLOAT32 precision"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 8
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->createShape()V

    return-void
.end method

.method private createShape()V
    .locals 10

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    const-string v7, "native point allocation must exist"

    invoke-static {v4, v7}, Lif/E;->H(ZLjava/lang/String;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v4

    rem-int/lit8 v7, v4, 0x3

    if-nez v7, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    const-string v8, "points capacity must be a multiple of 3"

    invoke-static {v7, v8}, Lif/E;->H(ZLjava/lang/String;)Z

    move v7, v5

    :goto_2
    if-ge v7, v4, :cond_4

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->isFinite(F)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal coordinate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    div-int/lit8 v4, v4, 0x3

    invoke-static {v0, v1, v4}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->nativeCreateShape(JI)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    move v5, v6

    :cond_5
    const-string v2, "failed to create hull collision shape"

    invoke-static {v5, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private static native nativeCreateShape(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allocationPointer",
            "numVertices"
        }
    .end annotation
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public aabbVolume()F
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v6

    iget v7, v1, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    iput v4, v1, Lcom/jme3/math/Vector3f;->x:F

    :cond_1
    iget v7, v1, Lcom/jme3/math/Vector3f;->y:F

    cmpg-float v7, v5, v7

    if-gez v7, :cond_2

    iput v5, v1, Lcom/jme3/math/Vector3f;->y:F

    :cond_2
    iget v7, v1, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    iput v6, v1, Lcom/jme3/math/Vector3f;->z:F

    :cond_3
    iget v7, v0, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    iput v4, v0, Lcom/jme3/math/Vector3f;->x:F

    :cond_4
    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_5

    iput v5, v0, Lcom/jme3/math/Vector3f;->y:F

    :cond_5
    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_6

    iput v6, v0, Lcom/jme3/math/Vector3f;->z:F

    :cond_6
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_7
    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v3, v4

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    return v2

    :cond_8
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->a()Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cloner",
            "original"
        }
    .end annotation

    check-cast p2, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->createShape()V

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    :cond_0
    return-void
.end method

.method public countMeshVertices()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeResult"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHullCollisionShape;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    iput v2, p1, Lcom/jme3/math/Vector3f;->x:F

    :cond_2
    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    iput v3, p1, Lcom/jme3/math/Vector3f;->y:F

    :cond_3
    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v2, v4, v2

    if-lez v2, :cond_4

    iput v4, p1, Lcom/jme3/math/Vector3f;->z:F

    :cond_4
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    return-object p1
.end method
