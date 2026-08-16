.class public Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/CollisionShape;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final n:F = 0.001f

.field public static final o:Lcom/jme3/math/Vector3f;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:F

.field public g:F

.field public h:F

.field public i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "bulletjme"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->o:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->b:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->c:Z

    .line 4
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->d:Z

    .line 5
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->e:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    iput v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->f:F

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->l:I

    return-void
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stickLength",
            "stickWidth",
            "heightfieldData",
            "scale"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;-><init>(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;Z)V

    return-void
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;IZZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stickLength",
            "stickWidth",
            "heightfieldData",
            "scale",
            "upAxis",
            "flipQuadEdges",
            "flipTriangleWinding",
            "useDiamond",
            "useZigzag"
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 22
    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;-><init>(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;IZZZZZ)V

    return-void
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;IZZZZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stickLength",
            "stickWidth",
            "heightfieldData",
            "scale",
            "upAxis",
            "flipQuadEdges",
            "flipTriangleWinding",
            "useDiamond",
            "useZigzag",
            "skipValidations"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->b:Z

    const/4 v1, 0x0

    .line 25
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->c:Z

    .line 26
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->d:Z

    .line 27
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->e:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    iput v2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->f:F

    .line 29
    iput v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->l:I

    .line 30
    const-string v2, "stick length"

    const/4 v3, 0x2

    const v4, 0x7fffffff

    invoke-static {p1, v2, v3, v4}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 31
    const-string v2, "stick width"

    invoke-static {p2, v2, v3, v4}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 32
    const-string v2, "heightfield data"

    invoke-static {p3, v2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 33
    const-string v2, "scale"

    invoke-static {p4, v2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 34
    invoke-static {p4, v2}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 35
    const-string v2, "up axis"

    invoke-static {p5, v2}, Lif/E;->a(ILjava/lang/String;)Z

    .line 36
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "heightfield data must not be empty"

    invoke-static {v2, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 37
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    mul-int v3, p1, p2

    if-lt v2, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "heightfield data must contain at least stickLength*stickWidth samples"

    invoke-static {v2, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 38
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v1, "heightfield data must use FLOAT32 precision"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 39
    iput p1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->j:I

    .line 40
    iput p2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->k:I

    .line 41
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 42
    iput-boolean p10, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->m:Z

    .line 43
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 44
    iput p5, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->l:I

    .line 45
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->b:Z

    .line 46
    iput-boolean p7, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->c:Z

    .line 47
    iput-boolean p8, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->d:Z

    .line 48
    iput-boolean p9, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->e:Z

    .line 49
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->calculateMinAndMax()V

    .line 50
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stickLength",
            "stickWidth",
            "heightfieldData",
            "scale",
            "skipValidations"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v10, p5

    .line 21
    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;-><init>(IILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;IZZZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightfieldData"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->o:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "heightfieldData",
            "scale"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightfieldData",
            "scale",
            "skipValidations"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->b:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->c:Z

    .line 13
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->d:Z

    .line 14
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->e:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    iput v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->f:F

    .line 16
    iput v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->l:I

    .line 17
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;)V

    .line 18
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->m:Z

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private createShape()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    const-wide/16 v14, 0x0

    cmp-long v1, v2, v14

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v1, :cond_1

    move/from16 v1, v17

    goto :goto_0

    :cond_1
    move/from16 v1, v16

    :goto_0
    const-string v4, "native heightfield allocation must exist"

    invoke-static {v1, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    iget v4, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->k:I

    iget v5, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->j:I

    iget v6, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->f:F

    iget v7, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->h:F

    iget v8, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->g:F

    iget v9, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->l:I

    iget-boolean v10, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->b:Z

    iget-boolean v11, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->c:Z

    iget-boolean v12, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->d:Z

    iget-boolean v13, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->e:Z

    invoke-static/range {v2 .. v13}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->nativeCreateShape(JIIFFFIZZZZ)J

    move-result-wide v1

    cmp-long v3, v1, v14

    if-eqz v3, :cond_2

    move/from16 v3, v17

    goto :goto_1

    :cond_2
    move/from16 v3, v16

    :goto_1
    const-string v4, "failed to create heightfield collision shape"

    invoke-static {v3, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {v0, v1, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    iget-boolean v1, v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget-object v1, v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget v1, v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private static native finalizeNative(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapeId"
        }
    .end annotation
.end method

.method public static freeNativeObject(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shapeId"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->finalizeNative(J)V

    return-void
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "heightfieldData",
            "scale"
        }
    .end annotation

    const-string v0, "heightfield data"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p0, "scale"

    invoke-static {p1, p0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {p1, p0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    return-void
.end method

.method private static native nativeCreateShape(JIIFFFIZZZZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "allocationPointer",
            "stickWidth",
            "stickLength",
            "heightScale",
            "minHeight",
            "maxHeight",
            "upAxis",
            "flipQuadEdges",
            "flipTriangleWinding",
            "useDiamond",
            "useZigzag"
        }
    .end annotation
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "heightfieldData",
            "scale"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "heightfield data must contain at least 4 samples"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v1, "heightfield data must use FLOAT32 precision"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    int-to-float v1, v0

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v1

    float-to-int v1, v1

    mul-int v4, v1, v1

    if-ne v4, v0, :cond_2

    move v2, v3

    :cond_2
    const-string v0, "heightfield data length must be a perfect square"

    invoke-static {v2, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    iput v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->k:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->j:I

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->calculateMinAndMax()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->createShape()V

    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public final calculateMinAndMax()V
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->countMeshVertices()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "heightfield data must contain at least stickLength*stickWidth samples"

    invoke-static {v1, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->m:Z

    xor-int/2addr v4, v3

    invoke-virtual {v1, v0, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getMinMax(IZ)[F

    move-result-object v0

    aget v1, v0, v2

    aget v0, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    :cond_1
    neg-float v1, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->h:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->g:F

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->a()Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;

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

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    check-cast p2, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->createShape()V

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    :cond_0
    return-void
.end method

.method public countColumns()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->k:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "heightStickWidth"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    iget v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->k:I

    return v0
.end method

.method public countMeshVertices()I
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->j:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->k:I

    mul-int/2addr v0, v1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "heightfield data must contain at least 4 samples"

    invoke-static {v1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    return v0
.end method

.method public countRows()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->j:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "heightStickLength"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    iget v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->j:I

    return v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->m:Z

    return v0
.end method

.method public upAxis()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->l:I

    const-string v1, "up axis"

    invoke-static {v0, v1}, Lif/E;->a(ILjava/lang/String;)Z

    iget v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeHeightfieldCollisionShape;->l:I

    return v0
.end method
