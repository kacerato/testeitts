.class public final Lcom/jme3/math/Matrix4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Lcom/jme3/math/Matrix4f;

.field public static final ZERO:Lcom/jme3/math/Matrix4f;

.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public m00:F

.field public m01:F

.field public m02:F

.field public m03:F

.field public m10:F

.field public m11:F

.field public m12:F

.field public m13:F

.field public m20:F

.field public m21:F

.field public m22:F

.field public m23:F

.field public m30:F

.field public m31:F

.field public m32:F

.field public m33:F


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-class v0, Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    move-object v1, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/jme3/math/Matrix4f;-><init>(FFFFFFFFFFFFFFFF)V

    sput-object v0, Lcom/jme3/math/Matrix4f;->ZERO:Lcom/jme3/math/Matrix4f;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    sput-object v0, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 4
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move v1, p2

    .line 5
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move v1, p3

    .line 6
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move v1, p4

    .line 7
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move v1, p5

    .line 8
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move v1, p6

    .line 9
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move v1, p7

    .line 10
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move v1, p8

    .line 11
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move v1, p9

    .line 12
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move v1, p10

    .line 13
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move v1, p11

    .line 14
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move v1, p12

    .line 15
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move v1, p13

    .line 16
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v1, p14

    .line 17
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v1, p15

    .line 18
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v1, p16

    .line 19
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Matrix4f;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/jme3/math/Matrix4f;->copy(Lcom/jme3/math/Matrix4f;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    return-void
.end method

.method public static equalIdentity(Lcom/jme3/math/Matrix4f;)Z
    .locals 8

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v2, v4

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    cmpl-double v0, v6, v4

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    cmpl-double v0, v6, v4

    if-lez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_4

    return v2

    :cond_4
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_6

    return v2

    :cond_6
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    return v2

    :cond_7
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_8

    return v2

    :cond_8
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_9

    return v2

    :cond_9
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_b

    return v2

    :cond_b
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_c

    return v2

    :cond_c
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_d

    return v2

    :cond_d
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_e

    return v2

    :cond_e
    iget p0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    cmpl-double p0, v0, v4

    if-lez p0, :cond_f

    return v2

    :cond_f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public add(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 3

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m00:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m01:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m02:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m10:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m11:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m12:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m20:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m21:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m22:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m23:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m23:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m30:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m31:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m32:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m32:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    iget p1, p1, Lcom/jme3/math/Matrix4f;->m33:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    return-object v0
.end method

.method public addLocal(Lcom/jme3/math/Matrix4f;)V
    .locals 2

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m00:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m01:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m02:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m10:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m11:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m12:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m20:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m21:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m22:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m23:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m30:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m31:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iget v1, p1, Lcom/jme3/math/Matrix4f;->m32:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    iget p1, p1, Lcom/jme3/math/Matrix4f;->m33:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    return-void
.end method

.method public adjoint()Lcom/jme3/math/Matrix4f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Matrix4f;->adjoint(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public adjoint(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 25

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 2
    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 3
    :goto_0
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v3, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    .line 4
    iget v7, v0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v8, v2, v7

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v10, v9, v6

    sub-float/2addr v8, v10

    .line 5
    iget v10, v0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v2, v10

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float v12, v11, v6

    sub-float/2addr v2, v12

    mul-float v12, v5, v7

    mul-float v13, v9, v3

    sub-float/2addr v12, v13

    mul-float v13, v5, v10

    mul-float v14, v11, v3

    sub-float/2addr v13, v14

    mul-float v14, v9, v10

    mul-float v15, v11, v7

    sub-float/2addr v14, v15

    .line 6
    iget v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 p1, v4

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v16, v15, v4

    move/from16 v17, v8

    iget v8, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v18, v2

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float v19, v8, v2

    sub-float v16, v16, v19

    move/from16 v19, v12

    .line 7
    iget v12, v0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float v20, v15, v12

    move/from16 v21, v13

    iget v13, v0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v22, v13, v2

    sub-float v20, v20, v22

    move/from16 v22, v14

    .line 8
    iget v14, v0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v15, v14

    move/from16 v23, v11

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v2, v11

    sub-float/2addr v15, v2

    mul-float v2, v8, v12

    mul-float v24, v13, v4

    sub-float v2, v2, v24

    mul-float/2addr v8, v14

    mul-float/2addr v4, v11

    sub-float/2addr v8, v4

    mul-float/2addr v13, v14

    mul-float v4, v11, v12

    sub-float/2addr v13, v4

    mul-float v4, v3, v13

    mul-float v24, v7, v8

    sub-float v4, v4, v24

    mul-float v24, v10, v2

    add-float v4, v4, v24

    .line 9
    iput v4, v1, Lcom/jme3/math/Matrix4f;->m00:F

    neg-float v4, v6

    mul-float/2addr v4, v13

    mul-float v6, v7, v15

    add-float/2addr v4, v6

    mul-float v6, v10, v20

    sub-float/2addr v4, v6

    .line 10
    iput v4, v1, Lcom/jme3/math/Matrix4f;->m10:F

    .line 11
    iget v4, v0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v6, v4, v8

    mul-float v24, v3, v15

    sub-float v6, v6, v24

    mul-float v10, v10, v16

    add-float/2addr v6, v10

    iput v6, v1, Lcom/jme3/math/Matrix4f;->m20:F

    neg-float v4, v4

    mul-float/2addr v4, v2

    mul-float v3, v3, v20

    add-float/2addr v4, v3

    mul-float v7, v7, v16

    sub-float/2addr v4, v7

    .line 12
    iput v4, v1, Lcom/jme3/math/Matrix4f;->m30:F

    neg-float v3, v5

    mul-float/2addr v3, v13

    mul-float v4, v9, v8

    add-float/2addr v3, v4

    mul-float v4, v23, v2

    sub-float/2addr v3, v4

    .line 13
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m01:F

    .line 14
    iget v3, v0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v13, v3

    mul-float v4, v9, v15

    sub-float/2addr v13, v4

    mul-float v4, v23, v20

    add-float/2addr v13, v4

    iput v13, v1, Lcom/jme3/math/Matrix4f;->m11:F

    neg-float v4, v3

    mul-float/2addr v4, v8

    .line 15
    iget v5, v0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v15, v5

    add-float/2addr v4, v15

    mul-float v6, v23, v16

    sub-float/2addr v4, v6

    iput v4, v1, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v3, v2

    mul-float v5, v5, v20

    sub-float/2addr v3, v5

    mul-float v9, v9, v16

    add-float/2addr v3, v9

    .line 16
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m31:F

    .line 17
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v3, v2, v22

    mul-float v13, v12, v21

    sub-float/2addr v3, v13

    mul-float v4, v14, v19

    add-float/2addr v3, v4

    iput v3, v1, Lcom/jme3/math/Matrix4f;->m02:F

    .line 18
    iget v3, v0, Lcom/jme3/math/Matrix4f;->m30:F

    neg-float v4, v3

    mul-float v4, v4, v22

    mul-float v5, v12, v18

    add-float/2addr v4, v5

    mul-float v8, v14, v17

    sub-float/2addr v4, v8

    iput v4, v1, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v13, v3, v21

    mul-float v4, v2, v18

    sub-float/2addr v13, v4

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    .line 19
    iput v13, v1, Lcom/jme3/math/Matrix4f;->m22:F

    neg-float v3, v3

    mul-float v3, v3, v19

    mul-float v2, v2, v17

    add-float/2addr v3, v2

    mul-float v12, v12, p1

    sub-float/2addr v3, v12

    .line 20
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m32:F

    .line 21
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m21:F

    neg-float v3, v2

    mul-float v3, v3, v22

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v13, v4, v21

    add-float/2addr v3, v13

    mul-float v12, v11, v19

    sub-float/2addr v3, v12

    iput v3, v1, Lcom/jme3/math/Matrix4f;->m03:F

    .line 22
    iget v3, v0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float v14, v3, v22

    mul-float v5, v4, v18

    sub-float/2addr v14, v5

    mul-float v8, v11, v17

    add-float/2addr v14, v8

    iput v14, v1, Lcom/jme3/math/Matrix4f;->m13:F

    neg-float v5, v3

    mul-float v5, v5, v21

    mul-float v6, v2, v18

    add-float/2addr v5, v6

    mul-float v11, v11, p1

    sub-float/2addr v5, v11

    .line 23
    iput v5, v1, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float v3, v3, v19

    mul-float v2, v2, v17

    sub-float/2addr v3, v2

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    .line 24
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m33:F

    return-object v1
.end method

.method public angleRotation(Lcom/jme3/math/Vector3f;)V
    .locals 9

    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v4

    invoke-static {v3}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v3

    iget p1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr p1, v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p1

    mul-float v5, v3, v0

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float v5, v3, v2

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m10:F

    neg-float v5, v4

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float v5, v1, v4

    mul-float v6, v5, v0

    neg-float v7, v2

    mul-float v8, p1, v7

    add-float/2addr v6, v8

    iput v6, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v5, v2

    mul-float v6, p1, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v5, v1, v3

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v4, p1

    mul-float v5, v4, v0

    neg-float v1, v1

    mul-float/2addr v7, v1

    add-float/2addr v5, v7

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    mul-float/2addr v1, v0

    add-float/2addr v4, v1

    iput v4, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr p1, v3

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    return-void
.end method

.method public clone()Lcom/jme3/math/Matrix4f;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix4f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
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
    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public copy(Lcom/jme3/math/Matrix4f;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m00:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m30:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v0, p1, Lcom/jme3/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iget p1, p1, Lcom/jme3/math/Matrix4f;->m33:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    :goto_0
    return-void
.end method

.method public determinant()F
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v3, v1, v2

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v5, v0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v7, v1, v6

    iget v8, v0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v9, v8, v5

    sub-float/2addr v7, v9

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v1, v9

    iget v10, v0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v5, v10

    sub-float/2addr v1, v5

    mul-float v5, v4, v6

    mul-float v11, v8, v2

    sub-float/2addr v5, v11

    mul-float/2addr v4, v9

    mul-float/2addr v2, v10

    sub-float/2addr v4, v2

    mul-float/2addr v8, v9

    mul-float/2addr v10, v6

    sub-float/2addr v8, v10

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v9, v2, v6

    iget v10, v0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float v12, v10, v11

    sub-float/2addr v9, v12

    iget v12, v0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float v13, v2, v12

    iget v14, v0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v15, v14, v11

    sub-float/2addr v13, v15

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v2, v15

    move/from16 v16, v8

    iget v8, v0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v11, v8

    sub-float/2addr v2, v11

    mul-float v11, v10, v12

    mul-float v17, v14, v6

    sub-float v11, v11, v17

    mul-float/2addr v10, v15

    mul-float/2addr v6, v8

    sub-float/2addr v10, v6

    mul-float/2addr v14, v15

    mul-float/2addr v8, v12

    sub-float/2addr v14, v8

    mul-float/2addr v3, v14

    mul-float/2addr v7, v10

    sub-float/2addr v3, v7

    mul-float/2addr v1, v11

    add-float/2addr v3, v1

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    mul-float/2addr v4, v13

    sub-float/2addr v3, v4

    mul-float v8, v16, v9

    add-float/2addr v3, v8

    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jme3/math/Matrix4f;

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/jme3/math/Matrix4f;

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m03:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v0

    :cond_5
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :cond_6
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v0

    :cond_7
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    return v0

    :cond_8
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m13:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_9

    return v0

    :cond_9
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a

    return v0

    :cond_a
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_b

    return v0

    :cond_b
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_c

    return v0

    :cond_c
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_d

    return v0

    :cond_d
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_e

    return v0

    :cond_e
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_f

    return v0

    :cond_f
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_10

    return v0

    :cond_10
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m33:F

    iget p1, p1, Lcom/jme3/math/Matrix4f;->m33:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_11

    return v0

    :cond_11
    return v1

    :cond_12
    :goto_0
    return v0
.end method

.method public fillFloatArray([FZ)V
    .locals 17

    move-object/from16 v0, p0

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz p2, :cond_0

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    aput v1, p1, v16

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m10:F

    aput v1, p1, v15

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m20:F

    aput v1, p1, v14

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m30:F

    aput v1, p1, v13

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m01:F

    aput v1, p1, v12

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m11:F

    aput v1, p1, v11

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m21:F

    aput v1, p1, v10

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m31:F

    aput v1, p1, v9

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m02:F

    aput v1, p1, v8

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m12:F

    aput v1, p1, v7

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m22:F

    aput v1, p1, v6

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m32:F

    aput v1, p1, v5

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m03:F

    aput v1, p1, v4

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m13:F

    aput v1, p1, v3

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m23:F

    aput v1, p1, v2

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    const/16 v2, 0xf

    aput v1, p1, v2

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    aput v1, p1, v16

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m01:F

    aput v1, p1, v15

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m02:F

    aput v1, p1, v14

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m03:F

    aput v1, p1, v13

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m10:F

    aput v1, p1, v12

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m11:F

    aput v1, p1, v11

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m12:F

    aput v1, p1, v10

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m13:F

    aput v1, p1, v9

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m20:F

    aput v1, p1, v8

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m21:F

    aput v1, p1, v7

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m22:F

    aput v1, p1, v6

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m23:F

    aput v1, p1, v5

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m30:F

    aput v1, p1, v4

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m31:F

    aput v1, p1, v3

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m32:F

    aput v1, p1, v2

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    const/16 v2, 0xf

    aput v1, p1, v2

    :goto_0
    return-void
.end method

.method public fillFloatBuffer(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method public fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
    .locals 3

    .line 2
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    invoke-virtual {p0, v1, p2}, Lcom/jme3/math/Matrix4f;->fillFloatArray([FZ)V

    .line 4
    iget-object p2, v0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p1, p2, v1, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 5
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p1
.end method

.method public fromAngleAxis(FLcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/math/Matrix4f;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)V
    .locals 10

    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->zero()Lcom/jme3/math/Matrix4f;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    sub-float/2addr v0, v1

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float v3, v2, v2

    iget v4, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float v5, v4, v4

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float v6, p2, p2

    mul-float v7, v2, v4

    mul-float/2addr v7, v0

    mul-float v8, v2, p2

    mul-float/2addr v8, v0

    mul-float v9, v4, p2

    mul-float/2addr v9, v0

    mul-float/2addr v2, p1

    mul-float/2addr v4, p1

    mul-float/2addr p2, p1

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    iput v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    sub-float p1, v7, p2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    add-float p1, v8, v4

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    add-float/2addr v7, p2

    iput v7, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v5, v0

    add-float/2addr v5, v1

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m11:F

    sub-float p1, v9, v2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    sub-float/2addr v8, v4

    iput v8, p0, Lcom/jme3/math/Matrix4f;->m20:F

    add-float/2addr v9, v2

    iput v9, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v6, v0

    add-float/2addr v6, v1

    iput v6, p0, Lcom/jme3/math/Matrix4f;->m22:F

    return-void
.end method

.method public fromFrame(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object p4

    :try_start_0
    iget-object v0, p4, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v0, p4, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    iget-object v0, p4, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p3, Lcom/jme3/math/Vector3f;->x:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v1, p3, Lcom/jme3/math/Vector3f;->y:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v1, p3, Lcom/jme3/math/Vector3f;->z:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p3

    neg-float p3, p3

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget p3, v0, Lcom/jme3/math/Vector3f;->x:F

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget p3, v0, Lcom/jme3/math/Vector3f;->y:F

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget p3, v0, Lcom/jme3/math/Vector3f;->z:F

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p3

    neg-float p3, p3

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget p3, p2, Lcom/jme3/math/Vector3f;->x:F

    neg-float p3, p3

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget p3, p2, Lcom/jme3/math/Vector3f;->y:F

    neg-float p3, p3

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget p3, p2, Lcom/jme3/math/Vector3f;->z:F

    neg-float p3, p3

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p4}, Lcom/jme3/util/TempVars;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Lcom/jme3/util/TempVars;->release()V

    throw p1
.end method

.method public fromFrustum(FFFFFFZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p7, :cond_0

    sub-float p7, p4, p3

    div-float v1, v0, p7

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    sub-float v0, p2, p1

    const/high16 v2, -0x40000000    # -2.0f

    div-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m33:F

    add-float/2addr p4, p3

    neg-float p3, p4

    div-float/2addr p3, p7

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr p5, p6

    neg-float p3, p5

    div-float/2addr p3, v1

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    goto :goto_0

    :cond_0
    mul-float p7, p1, v0

    sub-float v1, p4, p3

    div-float v2, p7, v1

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    sub-float v2, p5, p6

    div-float/2addr p7, v2

    iput p7, p0, Lcom/jme3/math/Matrix4f;->m11:F

    const/high16 p7, -0x40800000    # -1.0f

    iput p7, p0, Lcom/jme3/math/Matrix4f;->m32:F

    const/high16 p7, -0x80000000

    iput p7, p0, Lcom/jme3/math/Matrix4f;->m33:F

    add-float/2addr p4, p3

    div-float/2addr p4, v1

    iput p4, p0, Lcom/jme3/math/Matrix4f;->m02:F

    add-float/2addr p5, p6

    div-float/2addr p5, v2

    iput p5, p0, Lcom/jme3/math/Matrix4f;->m12:F

    add-float p3, p2, p1

    neg-float p3, p3

    sub-float p4, p2, p1

    div-float/2addr p3, p4

    iput p3, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr p2, v0

    mul-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, p4

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    :goto_0
    return-void
.end method

.method public get(II)F
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_12

    if-eq p2, v2, :cond_11

    if-eq p2, v1, :cond_10

    if-eq p2, v0, :cond_f

    :cond_1
    if-eqz p2, :cond_e

    if-eq p2, v2, :cond_d

    if-eq p2, v1, :cond_c

    if-eq p2, v0, :cond_b

    :cond_2
    if-eqz p2, :cond_a

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    if-eq p2, v0, :cond_7

    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_3

    .line 36
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    return p1

    .line 37
    :cond_3
    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Invalid matrix index."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid indices into matrix."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_4
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    return p1

    .line 40
    :cond_5
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    return p1

    .line 41
    :cond_6
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    return p1

    .line 42
    :cond_7
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    return p1

    .line 43
    :cond_8
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    return p1

    .line 44
    :cond_9
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    return p1

    .line 45
    :cond_a
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    return p1

    .line 46
    :cond_b
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    return p1

    .line 47
    :cond_c
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    return p1

    .line 48
    :cond_d
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    return p1

    .line 49
    :cond_e
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    return p1

    .line 50
    :cond_f
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    return p1

    .line 51
    :cond_10
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    return p1

    .line 52
    :cond_11
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    return p1

    .line 53
    :cond_12
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    return p1
.end method

.method public get([F)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->get([FZ)V

    return-void
.end method

.method public get([FZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m00:F

    aput v2, v1, v17

    .line 4
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m01:F

    aput v2, v1, v16

    .line 5
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m02:F

    aput v2, v1, v15

    .line 6
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m03:F

    aput v2, v1, v14

    .line 7
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m10:F

    aput v2, v1, v13

    .line 8
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m11:F

    aput v2, v1, v12

    .line 9
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m12:F

    aput v2, v1, v11

    .line 10
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m13:F

    aput v2, v1, v10

    .line 11
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m20:F

    aput v2, v1, v9

    .line 12
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m21:F

    aput v2, v1, v8

    .line 13
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m22:F

    aput v2, v1, v7

    .line 14
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m23:F

    aput v2, v1, v6

    .line 15
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m30:F

    aput v2, v1, v5

    .line 16
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m31:F

    aput v2, v1, v4

    .line 17
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m32:F

    aput v2, v1, v3

    .line 18
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m33:F

    const/16 v3, 0xf

    aput v2, v1, v3

    goto :goto_0

    .line 19
    :cond_0
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m00:F

    aput v2, v1, v17

    .line 20
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m01:F

    aput v2, v1, v13

    .line 21
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m02:F

    aput v2, v1, v9

    .line 22
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m03:F

    aput v2, v1, v5

    .line 23
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m10:F

    aput v2, v1, v16

    .line 24
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m11:F

    aput v2, v1, v12

    .line 25
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m12:F

    aput v2, v1, v8

    .line 26
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m13:F

    aput v2, v1, v4

    .line 27
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m20:F

    aput v2, v1, v15

    .line 28
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m21:F

    aput v2, v1, v11

    .line 29
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m22:F

    aput v2, v1, v7

    .line 30
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m23:F

    aput v2, v1, v3

    .line 31
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m30:F

    aput v2, v1, v14

    .line 32
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m31:F

    aput v2, v1, v10

    .line 33
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m32:F

    aput v2, v1, v6

    .line 34
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m33:F

    const/16 v3, 0xf

    aput v2, v1, v3

    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array must be of size 16."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumn(I)[F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->getColumn(I[F)[F

    move-result-object p1

    return-object p1
.end method

.method public getColumn(I[F)[F
    .locals 4

    if-nez p2, :cond_0

    const/4 p2, 0x4

    .line 2
    new-array p2, p2, [F

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    aput p1, p2, v0

    .line 4
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    aput p1, p2, v3

    .line 5
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    aput p1, p2, v2

    .line 6
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    aput p1, p2, v1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p2, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Invalid column index."

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid column index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_2
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    aput p1, p2, v0

    .line 10
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    aput p1, p2, v3

    .line 11
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    aput p1, p2, v2

    .line 12
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    aput p1, p2, v1

    goto :goto_0

    .line 13
    :cond_3
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    aput p1, p2, v0

    .line 14
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    aput p1, p2, v3

    .line 15
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    aput p1, p2, v2

    .line 16
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    aput p1, p2, v1

    goto :goto_0

    .line 17
    :cond_4
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    aput p1, p2, v0

    .line 18
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    aput p1, p2, v3

    .line 19
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    aput p1, p2, v2

    .line 20
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    aput p1, p2, v1

    :goto_0
    return-object p2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public inverseRotateVect(Lcom/jme3/math/Vector3f;)V
    .locals 5

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public inverseTranslateVect(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 6
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 7
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 8
    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public inverseTranslateVect([F)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m03:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 3
    aget v1, p1, v0

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 4
    aget v1, p1, v0

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "vec must be of size 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public invert()Lcom/jme3/math/Matrix4f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Matrix4f;->invert(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 20

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 2
    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 3
    :goto_0
    iget v2, v0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v3, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    .line 4
    iget v7, v0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v8, v2, v7

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v10, v9, v6

    sub-float/2addr v8, v10

    .line 5
    iget v10, v0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v2, v10

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v6, v11

    sub-float/2addr v2, v6

    mul-float v6, v5, v7

    mul-float v12, v9, v3

    sub-float/2addr v6, v12

    mul-float/2addr v5, v10

    mul-float/2addr v3, v11

    sub-float/2addr v5, v3

    mul-float/2addr v9, v10

    mul-float/2addr v11, v7

    sub-float/2addr v9, v11

    .line 6
    iget v3, v0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v7, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v10, v3, v7

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v12, v0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float v13, v11, v12

    sub-float/2addr v10, v13

    .line 7
    iget v13, v0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float v14, v3, v13

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v16, v15, v12

    sub-float v14, v14, v16

    move-object/from16 v16, v1

    .line 8
    iget v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v3, v1

    move/from16 p1, v9

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v12, v9

    sub-float/2addr v3, v12

    mul-float v12, v11, v13

    mul-float v17, v15, v7

    sub-float v12, v12, v17

    mul-float/2addr v11, v1

    mul-float/2addr v7, v9

    sub-float/2addr v11, v7

    mul-float/2addr v15, v1

    mul-float/2addr v9, v13

    sub-float/2addr v15, v9

    mul-float v1, v4, v15

    mul-float v7, v8, v11

    sub-float/2addr v1, v7

    mul-float v7, v2, v12

    add-float/2addr v1, v7

    mul-float v7, v6, v3

    add-float/2addr v1, v7

    mul-float v7, v5, v14

    sub-float/2addr v1, v7

    mul-float v9, p1, v10

    add-float/2addr v1, v9

    .line 9
    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v7

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-lez v7, :cond_1

    .line 10
    iget v7, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v9, v7, v15

    iget v13, v0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v17, v13, v11

    sub-float v9, v9, v17

    move/from16 v17, v1

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float v18, v1, v12

    add-float v9, v9, v18

    move/from16 v18, v4

    move-object/from16 v4, v16

    iput v9, v4, Lcom/jme3/math/Matrix4f;->m00:F

    .line 11
    iget v9, v0, Lcom/jme3/math/Matrix4f;->m10:F

    neg-float v9, v9

    mul-float/2addr v9, v15

    mul-float v16, v13, v3

    add-float v9, v9, v16

    mul-float v16, v1, v14

    sub-float v9, v9, v16

    iput v9, v4, Lcom/jme3/math/Matrix4f;->m10:F

    .line 12
    iget v9, v0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v16, v9, v11

    mul-float v19, v7, v3

    sub-float v16, v16, v19

    mul-float/2addr v1, v10

    add-float v1, v16, v1

    iput v1, v4, Lcom/jme3/math/Matrix4f;->m20:F

    neg-float v1, v9

    mul-float/2addr v1, v12

    mul-float/2addr v7, v14

    add-float/2addr v1, v7

    mul-float/2addr v13, v10

    sub-float/2addr v1, v13

    .line 13
    iput v1, v4, Lcom/jme3/math/Matrix4f;->m30:F

    .line 14
    iget v1, v0, Lcom/jme3/math/Matrix4f;->m01:F

    neg-float v1, v1

    mul-float/2addr v1, v15

    iget v7, v0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v9, v7, v11

    add-float/2addr v1, v9

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float v13, v9, v12

    sub-float/2addr v1, v13

    iput v1, v4, Lcom/jme3/math/Matrix4f;->m01:F

    .line 15
    iget v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v15, v1

    mul-float v13, v7, v3

    sub-float/2addr v15, v13

    mul-float v13, v9, v14

    add-float/2addr v15, v13

    iput v15, v4, Lcom/jme3/math/Matrix4f;->m11:F

    neg-float v13, v1

    mul-float/2addr v13, v11

    .line 16
    iget v11, v0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v3, v11

    add-float/2addr v13, v3

    mul-float/2addr v9, v10

    sub-float/2addr v13, v9

    iput v13, v4, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v1, v12

    mul-float/2addr v11, v14

    sub-float/2addr v1, v11

    mul-float/2addr v7, v10

    add-float/2addr v1, v7

    .line 17
    iput v1, v4, Lcom/jme3/math/Matrix4f;->m31:F

    .line 18
    iget v1, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v9, v1, p1

    iget v3, v0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float v7, v3, v5

    sub-float/2addr v9, v7

    iget v7, v0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float v10, v7, v6

    add-float/2addr v9, v10

    iput v9, v4, Lcom/jme3/math/Matrix4f;->m02:F

    .line 19
    iget v9, v0, Lcom/jme3/math/Matrix4f;->m30:F

    neg-float v10, v9

    mul-float v10, v10, p1

    mul-float v11, v3, v2

    add-float/2addr v10, v11

    mul-float v11, v7, v8

    sub-float/2addr v10, v11

    iput v10, v4, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v10, v9, v5

    mul-float v11, v1, v2

    sub-float/2addr v10, v11

    mul-float v7, v7, v18

    add-float/2addr v10, v7

    .line 20
    iput v10, v4, Lcom/jme3/math/Matrix4f;->m22:F

    neg-float v7, v9

    mul-float/2addr v7, v6

    mul-float/2addr v1, v8

    add-float/2addr v7, v1

    mul-float v3, v3, v18

    sub-float/2addr v7, v3

    .line 21
    iput v7, v4, Lcom/jme3/math/Matrix4f;->m32:F

    .line 22
    iget v1, v0, Lcom/jme3/math/Matrix4f;->m21:F

    neg-float v3, v1

    mul-float v3, v3, p1

    iget v7, v0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v9, v7, v5

    add-float/2addr v3, v9

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float v10, v9, v6

    sub-float/2addr v3, v10

    iput v3, v4, Lcom/jme3/math/Matrix4f;->m03:F

    .line 23
    iget v3, v0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float v10, v3, p1

    mul-float v11, v7, v2

    sub-float/2addr v10, v11

    mul-float v11, v9, v8

    add-float/2addr v10, v11

    iput v10, v4, Lcom/jme3/math/Matrix4f;->m13:F

    neg-float v10, v3

    mul-float/2addr v10, v5

    mul-float/2addr v2, v1

    add-float/2addr v10, v2

    mul-float v9, v9, v18

    sub-float/2addr v10, v9

    .line 24
    iput v10, v4, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v3, v6

    mul-float/2addr v1, v8

    sub-float/2addr v3, v1

    mul-float v7, v7, v18

    add-float/2addr v3, v7

    .line 25
    iput v3, v4, Lcom/jme3/math/Matrix4f;->m33:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v1, v1, v17

    .line 26
    invoke-virtual {v4, v1}, Lcom/jme3/math/Matrix4f;->multLocal(F)V

    return-object v4

    .line 27
    :cond_1
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "This matrix cannot be inverted"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public invertLocal()Lcom/jme3/math/Matrix4f;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v3, v1, v2

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v5, v0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v7, v1, v6

    iget v8, v0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v9, v8, v5

    sub-float/2addr v7, v9

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v1, v9

    iget v10, v0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v5, v10

    sub-float/2addr v1, v5

    mul-float v5, v4, v6

    mul-float v11, v8, v2

    sub-float/2addr v5, v11

    mul-float/2addr v4, v9

    mul-float/2addr v2, v10

    sub-float/2addr v4, v2

    mul-float/2addr v8, v9

    mul-float/2addr v10, v6

    sub-float/2addr v8, v10

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v9, v2, v6

    iget v10, v0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float v12, v10, v11

    sub-float/2addr v9, v12

    iget v12, v0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float v13, v2, v12

    iget v14, v0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v15, v14, v11

    sub-float/2addr v13, v15

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v2, v15

    move/from16 v16, v8

    iget v8, v0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v11, v8

    sub-float/2addr v2, v11

    mul-float v11, v10, v12

    mul-float v17, v14, v6

    sub-float v11, v11, v17

    mul-float/2addr v10, v15

    mul-float/2addr v6, v8

    sub-float/2addr v10, v6

    mul-float/2addr v14, v15

    mul-float/2addr v8, v12

    sub-float/2addr v14, v8

    mul-float v6, v3, v14

    mul-float v8, v7, v10

    sub-float/2addr v6, v8

    mul-float v8, v1, v11

    add-float/2addr v6, v8

    mul-float v8, v5, v2

    add-float/2addr v6, v8

    mul-float v8, v4, v13

    sub-float/2addr v6, v8

    mul-float v8, v16, v9

    add-float/2addr v6, v8

    invoke-static {v6}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v8

    const/4 v12, 0x0

    cmpg-float v8, v8, v12

    if-gtz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Matrix4f;->zero()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    return-object v1

    :cond_0
    iget v8, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v12, v8, v14

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v17, v15, v10

    sub-float v12, v12, v17

    move/from16 v17, v6

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float v18, v6, v11

    add-float v12, v12, v18

    move/from16 v18, v12

    iget v12, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v19, v3

    neg-float v3, v12

    mul-float/2addr v3, v14

    mul-float v20, v15, v2

    add-float v3, v3, v20

    mul-float v20, v6, v13

    sub-float v3, v3, v20

    mul-float v20, v12, v10

    mul-float v21, v8, v2

    sub-float v20, v20, v21

    mul-float/2addr v6, v9

    add-float v6, v20, v6

    neg-float v12, v12

    mul-float/2addr v12, v11

    mul-float/2addr v8, v13

    add-float/2addr v12, v8

    mul-float/2addr v15, v9

    sub-float/2addr v12, v15

    iget v8, v0, Lcom/jme3/math/Matrix4f;->m01:F

    neg-float v15, v8

    mul-float/2addr v15, v14

    move/from16 v20, v12

    iget v12, v0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v21, v12, v10

    add-float v15, v15, v21

    move/from16 v21, v6

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float v22, v6, v11

    sub-float v15, v15, v22

    move/from16 v22, v3

    iget v3, v0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v14, v3

    mul-float v23, v12, v2

    sub-float v14, v14, v23

    mul-float v23, v6, v13

    add-float v14, v14, v23

    move/from16 v23, v14

    neg-float v14, v3

    mul-float/2addr v14, v10

    mul-float/2addr v2, v8

    add-float/2addr v14, v2

    mul-float/2addr v6, v9

    sub-float/2addr v14, v6

    mul-float/2addr v3, v11

    mul-float/2addr v8, v13

    sub-float/2addr v3, v8

    mul-float/2addr v12, v9

    add-float/2addr v3, v12

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v8, v2, v16

    iget v6, v0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float v9, v6, v4

    sub-float/2addr v8, v9

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float v10, v9, v5

    add-float/2addr v8, v10

    iget v10, v0, Lcom/jme3/math/Matrix4f;->m30:F

    neg-float v11, v10

    mul-float v11, v11, v16

    mul-float v12, v6, v1

    add-float/2addr v11, v12

    mul-float v12, v9, v7

    sub-float/2addr v11, v12

    mul-float v12, v10, v4

    mul-float v13, v2, v1

    sub-float/2addr v12, v13

    mul-float v9, v9, v19

    add-float/2addr v12, v9

    neg-float v9, v10

    mul-float/2addr v9, v5

    mul-float/2addr v2, v7

    add-float/2addr v9, v2

    mul-float v6, v6, v19

    sub-float/2addr v9, v6

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m21:F

    neg-float v6, v2

    mul-float v6, v6, v16

    iget v10, v0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v13, v10, v4

    add-float/2addr v6, v13

    iget v13, v0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float v24, v13, v5

    sub-float v6, v6, v24

    move/from16 v24, v9

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float v16, v16, v9

    mul-float v25, v10, v1

    sub-float v16, v16, v25

    mul-float v25, v13, v7

    move/from16 v26, v3

    add-float v3, v16, v25

    move/from16 v16, v12

    neg-float v12, v9

    mul-float/2addr v12, v4

    mul-float/2addr v1, v2

    add-float/2addr v12, v1

    mul-float v13, v13, v19

    sub-float/2addr v12, v13

    mul-float/2addr v9, v5

    mul-float/2addr v2, v7

    sub-float/2addr v9, v2

    mul-float v10, v10, v19

    add-float/2addr v9, v10

    move/from16 v1, v18

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m01:F

    iput v8, v0, Lcom/jme3/math/Matrix4f;->m02:F

    iput v6, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v1, v22

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v1, v23

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m11:F

    iput v11, v0, Lcom/jme3/math/Matrix4f;->m12:F

    iput v3, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v1, v21

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m20:F

    iput v14, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v1, v16

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m22:F

    iput v12, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v12, v20

    iput v12, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v3, v26

    iput v3, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v1, v24

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m32:F

    iput v9, v0, Lcom/jme3/math/Matrix4f;->m33:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->multLocal(F)V

    return-object v0
.end method

.method public isIdentity()Z
    .locals 3

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimilar(Lcom/jme3/math/Matrix4f;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m00:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m01:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m02:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_3

    return v0

    :cond_3
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m03:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m03:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_4

    return v0

    :cond_4
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m10:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_5

    return v0

    :cond_5
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m11:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m11:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_6

    return v0

    :cond_6
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m12:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m12:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_7

    return v0

    :cond_7
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m13:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_8

    return v0

    :cond_8
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m20:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_9

    return v0

    :cond_9
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m21:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m21:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_a

    return v0

    :cond_a
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m22:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_b

    return v0

    :cond_b
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m23:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_c

    return v0

    :cond_c
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m30:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m30:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_d

    return v0

    :cond_d
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m31:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m31:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_e

    return v0

    :cond_e
    iget v1, p1, Lcom/jme3/math/Matrix4f;->m32:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m32:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_f

    return v0

    :cond_f
    iget p1, p1, Lcom/jme3/math/Matrix4f;->m33:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_10

    return v0

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method public loadIdentity()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    return-void
.end method

.method public mult(F)Lcom/jme3/math/Matrix4f;
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 3
    invoke-virtual {v0, p1}, Lcom/jme3/math/Matrix4f;->multLocal(F)V

    return-object v0
.end method

.method public mult(FLcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 0

    .line 4
    invoke-virtual {p2, p0}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 5
    invoke-virtual {p2, p1}, Lcom/jme3/math/Matrix4f;->multLocal(F)V

    return-object p2
.end method

.method public mult(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object p1

    return-object p1
.end method

.method public mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    .line 7
    new-instance v2, Lcom/jme3/math/Matrix4f;

    invoke-direct {v2}, Lcom/jme3/math/Matrix4f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 8
    :goto_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    .line 9
    iget-object v4, v3, Lcom/jme3/util/TempVars;->matrixWrite:[F

    .line 10
    iget v5, v0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v6, v1, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float v7, v5, v6

    iget v8, v0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v9, v1, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v10, v8, v9

    add-float/2addr v7, v10

    iget v10, v0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v11, v1, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float v12, v10, v11

    add-float/2addr v7, v12

    iget v12, v0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v13, v1, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float v14, v12, v13

    add-float/2addr v7, v14

    const/4 v14, 0x0

    aput v7, v4, v14

    .line 11
    iget v14, v1, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float v15, v5, v14

    move-object/from16 p2, v3

    iget v3, v1, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v16, v8, v3

    add-float v15, v15, v16

    move-object/from16 v16, v2

    iget v2, v1, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float v17, v10, v2

    add-float v15, v15, v17

    move/from16 v17, v7

    iget v7, v1, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v18, v12, v7

    add-float v15, v15, v18

    const/16 v18, 0x1

    aput v15, v4, v18

    move/from16 v18, v15

    .line 12
    iget v15, v1, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float v19, v5, v15

    move/from16 v20, v15

    iget v15, v1, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v21, v8, v15

    add-float v19, v19, v21

    move/from16 v21, v15

    iget v15, v1, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v22, v10, v15

    add-float v19, v19, v22

    move/from16 v22, v15

    iget v15, v1, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float v23, v12, v15

    move/from16 v24, v15

    add-float v15, v19, v23

    const/16 v19, 0x2

    aput v15, v4, v19

    move/from16 v19, v15

    .line 13
    iget v15, v1, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v5, v15

    move/from16 v23, v15

    iget v15, v1, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v8, v15

    add-float/2addr v5, v8

    iget v8, v1, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v10, v8

    add-float/2addr v5, v10

    iget v1, v1, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v12, v1

    add-float/2addr v5, v12

    const/4 v10, 0x3

    aput v5, v4, v10

    .line 14
    iget v10, v0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float v12, v10, v6

    move/from16 p1, v5

    iget v5, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float v25, v5, v9

    add-float v12, v12, v25

    move/from16 v25, v9

    iget v9, v0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float v26, v9, v11

    add-float v12, v12, v26

    move/from16 v26, v11

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float v27, v11, v13

    add-float v12, v12, v27

    const/16 v27, 0x4

    aput v12, v4, v27

    mul-float v27, v10, v14

    mul-float v28, v5, v3

    add-float v27, v27, v28

    mul-float v28, v9, v2

    add-float v27, v27, v28

    mul-float v28, v11, v7

    move/from16 v29, v12

    add-float v12, v27, v28

    const/16 v27, 0x5

    .line 15
    aput v12, v4, v27

    mul-float v27, v10, v20

    mul-float v28, v5, v21

    add-float v27, v27, v28

    mul-float v28, v9, v22

    add-float v27, v27, v28

    mul-float v28, v11, v24

    move/from16 v30, v12

    add-float v12, v27, v28

    const/16 v27, 0x6

    .line 16
    aput v12, v4, v27

    mul-float v10, v10, v23

    mul-float/2addr v5, v15

    add-float/2addr v10, v5

    mul-float/2addr v9, v8

    add-float/2addr v10, v9

    mul-float/2addr v11, v1

    add-float/2addr v10, v11

    const/4 v5, 0x7

    .line 17
    aput v10, v4, v5

    .line 18
    iget v5, v0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float v9, v5, v6

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float v27, v11, v25

    add-float v9, v9, v27

    move/from16 v27, v10

    iget v10, v0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float v28, v10, v26

    add-float v9, v9, v28

    move/from16 v28, v12

    iget v12, v0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float v31, v12, v13

    add-float v9, v9, v31

    const/16 v31, 0x8

    aput v9, v4, v31

    mul-float v31, v5, v14

    mul-float v32, v11, v3

    add-float v31, v31, v32

    mul-float v32, v10, v2

    add-float v31, v31, v32

    mul-float v32, v12, v7

    move/from16 v33, v9

    add-float v9, v31, v32

    const/16 v31, 0x9

    .line 19
    aput v9, v4, v31

    mul-float v31, v5, v20

    mul-float v32, v11, v21

    add-float v31, v31, v32

    mul-float v32, v10, v22

    add-float v31, v31, v32

    mul-float v32, v12, v24

    move/from16 v34, v9

    add-float v9, v31, v32

    const/16 v31, 0xa

    .line 20
    aput v9, v4, v31

    mul-float v5, v5, v23

    mul-float/2addr v11, v15

    add-float/2addr v5, v11

    mul-float/2addr v10, v8

    add-float/2addr v5, v10

    mul-float/2addr v12, v1

    add-float/2addr v5, v12

    const/16 v10, 0xb

    .line 21
    aput v5, v4, v10

    .line 22
    iget v10, v0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v6, v10

    iget v11, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float v12, v11, v25

    add-float/2addr v6, v12

    iget v12, v0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float v25, v12, v26

    add-float v6, v6, v25

    move/from16 v25, v5

    iget v5, v0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v13, v5

    add-float/2addr v6, v13

    const/16 v13, 0xc

    aput v6, v4, v13

    mul-float/2addr v14, v10

    mul-float/2addr v3, v11

    add-float/2addr v14, v3

    mul-float/2addr v2, v12

    add-float/2addr v14, v2

    mul-float/2addr v7, v5

    add-float/2addr v14, v7

    const/16 v2, 0xd

    .line 23
    aput v14, v4, v2

    mul-float v2, v10, v20

    mul-float v3, v11, v21

    add-float/2addr v2, v3

    mul-float v3, v12, v22

    add-float/2addr v2, v3

    mul-float v3, v5, v24

    add-float/2addr v2, v3

    const/16 v3, 0xe

    .line 24
    aput v2, v4, v3

    mul-float v10, v10, v23

    mul-float/2addr v11, v15

    add-float/2addr v10, v11

    mul-float/2addr v12, v8

    add-float/2addr v10, v12

    mul-float/2addr v5, v1

    add-float/2addr v10, v5

    const/16 v1, 0xf

    .line 25
    aput v10, v4, v1

    move-object/from16 v1, v16

    move/from16 v7, v17

    .line 26
    iput v7, v1, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v15, v18

    .line 27
    iput v15, v1, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v3, v19

    .line 28
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v5, p1

    .line 29
    iput v5, v1, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v12, v29

    .line 30
    iput v12, v1, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v3, v30

    .line 31
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v3, v28

    .line 32
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v3, v27

    .line 33
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v3, v33

    .line 34
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v3, v34

    .line 35
    iput v3, v1, Lcom/jme3/math/Matrix4f;->m21:F

    .line 36
    iput v9, v1, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v5, v25

    .line 37
    iput v5, v1, Lcom/jme3/math/Matrix4f;->m23:F

    .line 38
    iput v6, v1, Lcom/jme3/math/Matrix4f;->m30:F

    .line 39
    iput v14, v1, Lcom/jme3/math/Matrix4f;->m31:F

    .line 40
    iput v2, v1, Lcom/jme3/math/Matrix4f;->m32:F

    .line 41
    iput v10, v1, Lcom/jme3/math/Matrix4f;->m33:F

    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/util/TempVars;->release()V

    return-object v1
.end method

.method public mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 7

    if-nez p1, :cond_0

    .line 57
    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Source vector is null, null result returned."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance p2, Lcom/jme3/math/Quaternion;

    invoke-direct {p2}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 59
    :cond_1
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v4, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    .line 60
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v2, v1

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v5, p1

    add-float/2addr v2, v5

    .line 61
    iget v5, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v6, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    .line 62
    iget v6, p0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v6, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v1, v3

    add-float/2addr v6, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v1, v4

    add-float/2addr v6, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v1, p1

    add-float/2addr v6, v1

    .line 63
    iput v0, p2, Lcom/jme3/math/Quaternion;->x:F

    .line 64
    iput v2, p2, Lcom/jme3/math/Quaternion;->y:F

    .line 65
    iput v5, p2, Lcom/jme3/math/Quaternion;->z:F

    .line 66
    iput v6, p2, Lcom/jme3/math/Quaternion;->w:F

    return-object p2
.end method

.method public mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p2, :cond_0

    .line 44
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 45
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 46
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 47
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 48
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iget p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    add-float/2addr v2, p1

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    return-object p2
.end method

.method public mult(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    move-result-object p1

    return-object p1
.end method

.method public mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 5

    if-nez p1, :cond_0

    .line 50
    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Source vector is null, null result returned."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 51
    new-instance p2, Lcom/jme3/math/Vector4f;

    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    .line 52
    :cond_1
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    .line 53
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->x:F

    .line 54
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->y:F

    .line 55
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->z:F

    .line 56
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    iput v3, p2, Lcom/jme3/math/Vector4f;->w:F

    return-object p2
.end method

.method public mult([F)[F
    .locals 10

    if-eqz p1, :cond_1

    .line 67
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    .line 69
    iget v8, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p1, v0

    .line 70
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v0, v1

    iget v8, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v8, v3

    add-float/2addr v0, v8

    iget v8, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v8, v5

    add-float/2addr v0, v8

    iget v8, p0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v8, v7

    add-float/2addr v0, v8

    aput v0, p1, v2

    .line 71
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    aput v0, p1, v4

    .line 72
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    aput v0, p1, v6

    return-object p1

    .line 73
    :cond_1
    :goto_0
    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "invalid array given, must be nonnull and length 4"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public multAcross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5

    if-nez p1, :cond_0

    .line 9
    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Source vector is null, null result returned."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 10
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 11
    :cond_1
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 12
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m30:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 13
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 14
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iget p1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr p1, v4

    add-float/2addr v2, p1

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    return-object p2
.end method

.method public multAcross(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->multAcross(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    move-result-object p1

    return-object p1
.end method

.method public multAcross(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 5

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Source vector is null, null result returned."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 3
    new-instance p2, Lcom/jme3/math/Vector4f;

    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    .line 4
    :cond_1
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    .line 5
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->x:F

    .line 6
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->y:F

    .line 7
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->z:F

    .line 8
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    iput v3, p2, Lcom/jme3/math/Vector4f;->w:F

    return-object p2
.end method

.method public multAcross([F)[F
    .locals 10

    if-eqz p1, :cond_1

    .line 15
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    .line 17
    iget v8, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget v9, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p1, v0

    .line 18
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v0, v1

    iget v8, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v8, v3

    add-float/2addr v0, v8

    iget v8, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v8, v5

    add-float/2addr v0, v8

    iget v8, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v8, v7

    add-float/2addr v0, v8

    aput v0, p1, v2

    .line 19
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    aput v0, p1, v4

    .line 20
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    aput v0, p1, v6

    return-object p1

    .line 21
    :cond_1
    :goto_0
    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "invalid array given, must be nonnull and length 4"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p0}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object p1

    return-object p1
.end method

.method public multLocal(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 2
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 7
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 8
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 9
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 10
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 11
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 12
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 13
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 14
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 15
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 16
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    return-void
.end method

.method public multLocal(Lcom/jme3/math/Quaternion;)V
    .locals 2

    .line 18
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 19
    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->toAngleAxis(Lcom/jme3/math/Vector3f;)F

    move-result p1

    .line 20
    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    .line 21
    invoke-virtual {v1, p1, v0}, Lcom/jme3/math/Matrix4f;->fromAngleAxis(FLcom/jme3/math/Vector3f;)V

    .line 22
    invoke-virtual {p0, v1}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    return-object p2
.end method

.method public multNormalAcross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    return-object p2
.end method

.method public multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .locals 4

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m23:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    iget p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    add-float/2addr p2, p1

    return p2
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

    const-string v0, "m00"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    const-string v0, "m01"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    const-string v0, "m02"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    const-string v0, "m03"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    const-string v0, "m10"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    const-string v0, "m11"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    const-string v0, "m12"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    const-string v0, "m13"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    const-string v0, "m20"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    const-string v0, "m21"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    const-string v0, "m22"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    const-string v0, "m23"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    const-string v0, "m30"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    const-string v0, "m31"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    const-string v0, "m32"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    const-string v0, "m33"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    return-void
.end method

.method public readFloatBuffer(Ljava/nio/FloatBuffer;)Lcom/jme3/math/Matrix4f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->readFloatBuffer(Ljava/nio/FloatBuffer;Z)Lcom/jme3/math/Matrix4f;

    move-result-object p1

    return-object p1
.end method

.method public readFloatBuffer(Ljava/nio/FloatBuffer;Z)Lcom/jme3/math/Matrix4f;
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 3
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 4
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 5
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 6
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 7
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 8
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 9
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 10
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 11
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 12
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 13
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 14
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 15
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 16
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 17
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 19
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 20
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 21
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 22
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 23
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 24
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 25
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 26
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 27
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 28
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 29
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 30
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 31
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 32
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p2

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 33
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->get()F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    :goto_0
    return-object p0
.end method

.method public rotateVect(Lcom/jme3/math/Vector3f;)V
    .locals 5

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public scale(Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    return-void
.end method

.method public set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 1

    .line 53
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m00:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 54
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 55
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 56
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 57
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 58
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 59
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 60
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 61
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 62
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 63
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 64
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 65
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m30:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 66
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 67
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 68
    iget p1, p1, Lcom/jme3/math/Matrix4f;->m33:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    return-object p0
.end method

.method public set(FFFFFFFFFFFFFFFF)V
    .locals 2

    move-object v0, p0

    move v1, p1

    .line 37
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move v1, p2

    .line 38
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move v1, p3

    .line 39
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move v1, p4

    .line 40
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move v1, p5

    .line 41
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move v1, p6

    .line 42
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move v1, p7

    .line 43
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move v1, p8

    .line 44
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move v1, p9

    .line 45
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move v1, p10

    .line 46
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move v1, p11

    .line 47
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move v1, p12

    .line 48
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move v1, p13

    .line 49
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v1, p14

    .line 50
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v1, p15

    .line 51
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v1, p16

    .line 52
    iput v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    return-void
.end method

.method public set(IIF)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_12

    if-eq p2, v2, :cond_11

    if-eq p2, v1, :cond_10

    if-eq p2, v0, :cond_f

    :cond_1
    if-eqz p2, :cond_e

    if-eq p2, v2, :cond_d

    if-eq p2, v1, :cond_c

    if-eq p2, v0, :cond_b

    :cond_2
    if-eqz p2, :cond_a

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    if-eq p2, v0, :cond_7

    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_3

    .line 1
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m33:F

    return-void

    .line 2
    :cond_3
    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Invalid matrix index."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid indices into matrix."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_4
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m32:F

    return-void

    .line 5
    :cond_5
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m31:F

    return-void

    .line 6
    :cond_6
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m30:F

    return-void

    .line 7
    :cond_7
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m23:F

    return-void

    .line 8
    :cond_8
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m22:F

    return-void

    .line 9
    :cond_9
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m21:F

    return-void

    .line 10
    :cond_a
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    return-void

    .line 11
    :cond_b
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m13:F

    return-void

    .line 12
    :cond_c
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m12:F

    return-void

    .line 13
    :cond_d
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m11:F

    return-void

    .line 14
    :cond_e
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    return-void

    .line 15
    :cond_f
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m03:F

    return-void

    .line 16
    :cond_10
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    return-void

    .line 17
    :cond_11
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    return-void

    .line 18
    :cond_12
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    return-void
.end method

.method public set([F)V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    return-void
.end method

.method public set([FZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 70
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz p2, :cond_0

    .line 71
    aget v2, v1, v17

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 72
    aget v2, v1, v16

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 73
    aget v2, v1, v15

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 74
    aget v2, v1, v14

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 75
    aget v2, v1, v13

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 76
    aget v2, v1, v12

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 77
    aget v2, v1, v11

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 78
    aget v2, v1, v10

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 79
    aget v2, v1, v9

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 80
    aget v2, v1, v8

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 81
    aget v2, v1, v7

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 82
    aget v2, v1, v6

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 83
    aget v2, v1, v5

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 84
    aget v2, v1, v4

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 85
    aget v2, v1, v3

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m32:F

    const/16 v2, 0xf

    .line 86
    aget v1, v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    goto :goto_0

    .line 87
    :cond_0
    aget v2, v1, v17

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 88
    aget v2, v1, v13

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 89
    aget v2, v1, v9

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 90
    aget v2, v1, v5

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 91
    aget v2, v1, v16

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 92
    aget v2, v1, v12

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 93
    aget v2, v1, v8

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 94
    aget v2, v1, v4

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 95
    aget v2, v1, v15

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 96
    aget v2, v1, v11

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 97
    aget v2, v1, v7

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 98
    aget v2, v1, v3

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 99
    aget v2, v1, v14

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 100
    aget v2, v1, v10

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 101
    aget v2, v1, v6

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m32:F

    const/16 v2, 0xf

    .line 102
    aget v1, v1, v2

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array must be of size 16."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set([[F)V
    .locals 6

    .line 19
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v2, p1, v0

    array-length v3, v2

    if-ne v3, v1, :cond_0

    .line 20
    aget v1, v2, v0

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    const/4 v1, 0x1

    .line 21
    aget v3, v2, v1

    iput v3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    const/4 v3, 0x2

    .line 22
    aget v4, v2, v3

    iput v4, p0, Lcom/jme3/math/Matrix4f;->m02:F

    const/4 v4, 0x3

    .line 23
    aget v2, v2, v4

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 24
    aget-object v2, p1, v1

    aget v5, v2, v0

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 25
    aget v5, v2, v1

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 26
    aget v5, v2, v3

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 27
    aget v2, v2, v4

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 28
    aget-object v2, p1, v3

    aget v5, v2, v0

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 29
    aget v5, v2, v1

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 30
    aget v5, v2, v3

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 31
    aget v2, v2, v4

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 32
    aget-object p1, p1, v4

    aget v0, p1, v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 33
    aget v0, p1, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 34
    aget v0, p1, v3

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 35
    aget p1, p1, v4

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must be of size 16."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColumn(I[F)V
    .locals 4

    if-nez p2, :cond_0

    sget-object p1, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Column is null. Ignoring."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    aget p1, p2, v0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    aget p1, p2, v3

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    aget p1, p2, v2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    aget p1, p2, v1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Invalid column index."

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid column index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    aget p1, p2, v0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    aget p1, p2, v3

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    aget p1, p2, v2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    aget p1, p2, v1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    goto :goto_0

    :cond_3
    aget p1, p2, v0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    aget p1, p2, v3

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    aget p1, p2, v2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    aget p1, p2, v1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    goto :goto_0

    :cond_4
    aget p1, p2, v0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    aget p1, p2, v3

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    aget p1, p2, v2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    aget p1, p2, v1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    :goto_0
    return-void
.end method

.method public setInverseRotationDegrees([F)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    aget v3, p1, v2

    const v5, 0x42652ee0

    mul-float/2addr v3, v5

    aget v6, p1, v1

    mul-float/2addr v6, v5

    aget p1, p1, v0

    mul-float/2addr p1, v5

    new-array v4, v4, [F

    aput v3, v4, v2

    aput v6, v4, v1

    aput p1, v4, v0

    invoke-virtual {p0, v4}, Lcom/jme3/math/Matrix4f;->setInverseRotationRadians([F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Angles must be of size 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInverseRotationRadians([F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-static {v3}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v3

    float-to-double v3, v3

    aget v2, v1, v2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    float-to-double v5, v2

    const/4 v2, 0x1

    aget v7, v1, v2

    invoke-static {v7}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v7

    float-to-double v7, v7

    aget v2, v1, v2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    float-to-double v9, v2

    const/4 v2, 0x2

    aget v11, v1, v2

    invoke-static {v11}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v11

    float-to-double v11, v11

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    float-to-double v1, v1

    mul-double v13, v7, v11

    double-to-float v13, v13

    iput v13, v0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-double v13, v7, v1

    double-to-float v13, v13

    iput v13, v0, Lcom/jme3/math/Matrix4f;->m10:F

    neg-double v13, v9

    double-to-float v13, v13

    iput v13, v0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-double v13, v5, v9

    mul-double/2addr v9, v3

    mul-double v15, v13, v11

    mul-double v17, v3, v1

    move-wide/from16 v19, v9

    sub-double v9, v15, v17

    double-to-float v9, v9

    iput v9, v0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-double/2addr v13, v1

    mul-double v9, v3, v11

    add-double/2addr v13, v9

    double-to-float v9, v13

    iput v9, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-double v9, v5, v7

    double-to-float v9, v9

    iput v9, v0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-double v9, v19, v11

    mul-double v13, v5, v1

    add-double/2addr v9, v13

    double-to-float v9, v9

    iput v9, v0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-double v9, v19, v1

    mul-double/2addr v5, v11

    sub-double/2addr v9, v5

    double-to-float v1, v9

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-double/2addr v3, v7

    double-to-float v1, v3

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m22:F

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Angles must be of size 3."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInverseTranslation([F)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    const/4 v0, 0x1

    aget v0, p1, v0

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    const/4 v0, 0x2

    aget p1, p1, v0

    neg-float p1, p1

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Translation size must be 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotationQuaternion(Lcom/jme3/math/Quaternion;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public setScale(FFF)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v3

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr p1, v0

    .line 3
    :goto_0
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 6
    :cond_1
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr p1, p1

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_3

    cmpl-float v0, p1, v3

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    div-float/2addr p2, p1

    .line 8
    :goto_1
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 9
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 10
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 11
    :cond_3
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr p1, p1

    iget p2, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    iget p2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    cmpl-float p2, p1, v1

    if-eqz p2, :cond_5

    cmpl-float p2, p1, v3

    if-nez p2, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    div-float/2addr p3, p1

    .line 13
    :goto_2
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 14
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 15
    iget p1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    :cond_5
    return-void
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 16
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/math/Matrix4f;->setScale(FFF)V

    return-void
.end method

.method public setTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
    .locals 3

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p3, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p3, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v2, p2

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v2, p3, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v2, p3, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v2, p3, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v2, p2

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v2, p3, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v0, p3, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget p3, p3, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 7
    iput p2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 8
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m23:F

    return-void
.end method

.method public setTranslation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 9
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 10
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 11
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    return-void
.end method

.method public setTranslation([F)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    const/4 v0, 0x1

    .line 3
    aget v0, p1, v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    const/4 v0, 0x2

    .line 4
    aget p1, p1, v0

    iput p1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Translation size must be 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Matrix4f;->toFloatBuffer(Z)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toFloatBuffer(Z)Ljava/nio/FloatBuffer;
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/jme3/math/Matrix4f;->fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public toRotationMatrix()Lcom/jme3/math/Matrix3f;
    .locals 11

    .line 1
    new-instance v10, Lcom/jme3/math/Matrix3f;

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v6, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v7, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v8, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v9, p0, Lcom/jme3/math/Matrix4f;->m22:F

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/jme3/math/Matrix3f;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method public toRotationMatrix(Lcom/jme3/math/Matrix3f;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m00:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m01:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m02:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m10:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m11:F

    .line 7
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m12:F

    .line 8
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m20:F

    .line 9
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m21:F

    .line 10
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m22:F

    return-void
.end method

.method public toRotationQuat()Lcom/jme3/math/Quaternion;
    .locals 2

    .line 1
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public toRotationQuat(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 10

    .line 3
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v6, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v7, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v8, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v9, p0, Lcom/jme3/math/Matrix4f;->m22:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(FFFFFFFFF)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public toScaleVector()Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/jme3/math/Matrix4f;->toScaleVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public toScaleVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    .line 3
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v1, v1

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 5
    iget v2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v2, v2

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix4f\n[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m03:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m13:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTranslationVector()Lcom/jme3/math/Vector3f;
    .locals 4

    .line 1
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v3, p0, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public toTranslationVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    .line 2
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public translateVect(Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public transpose()Lcom/jme3/math/Matrix4f;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jme3/math/Matrix4f;->get([FZ)V

    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1, v0}, Lcom/jme3/math/Matrix4f;-><init>([F)V

    return-object v1
.end method

.method public transposeLocal()Lcom/jme3/math/Matrix4f;
    .locals 2

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    return-object p0
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

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    const-string v1, "m00"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    const-string v1, "m01"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    const-string v1, "m02"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    const-string v1, "m03"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    const-string v1, "m10"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    const-string v1, "m11"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    const-string v1, "m12"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    const-string v1, "m13"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    const-string v1, "m20"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    const-string v1, "m21"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    const-string v1, "m22"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    const-string v1, "m23"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    const-string v1, "m30"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    const-string v1, "m31"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    const-string v1, "m32"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    const-string v1, "m33"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method

.method public zero()Lcom/jme3/math/Matrix4f;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    return-object p0
.end method
