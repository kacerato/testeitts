.class public Lcom/ardor3d/math/functions/VoroniFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/math/functions/VoroniFunction3D$Key;
    }
.end annotation


# static fields
.field private static final SEARCH_RADIUS:I = 0x2


# instance fields
.field private _displacement:D

.field private _frequency:D

.field private final _points:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ardor3d/math/functions/VoroniFunction3D$Key;",
            "Lcom/ardor3d/math/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field private _seed:I

.field private _useDistance:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    iput-wide v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_frequency:D

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_useDistance:Z

    .line 4
    iput-wide v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_displacement:D

    .line 5
    iput v2, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_seed:I

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_points:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(DDZI)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 8
    iput-wide v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_frequency:D

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_useDistance:Z

    .line 10
    iput-wide v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_displacement:D

    .line 11
    iput v2, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_seed:I

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_points:Ljava/util/Map;

    .line 13
    iput-wide p1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_frequency:D

    .line 14
    iput-wide p3, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_displacement:D

    .line 15
    iput-boolean p5, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_useDistance:Z

    .line 16
    iput p6, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_seed:I

    return-void
.end method

.method private point(IIII)D
    .locals 0

    mul-int/lit16 p1, p1, 0x1091

    mul-int/lit16 p2, p2, 0x1e89

    add-int/2addr p1, p2

    const p2, 0x9575

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    mul-int/lit16 p4, p4, 0x7bb

    add-int/2addr p1, p4

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    shr-int/lit8 p3, p1, 0xd

    xor-int/2addr p1, p3

    mul-int p3, p1, p1

    mul-int/lit16 p3, p3, 0x3d73

    const p4, 0xc0ae5

    add-int/2addr p3, p4

    mul-int/2addr p1, p3

    const p3, 0x5208dd0d

    add-int/2addr p1, p3

    and-int/2addr p1, p2

    int-to-double p1, p1

    const-wide/high16 p3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, p1

    return-wide p3
.end method


# virtual methods
.method public eval(DDD)D
    .locals 25

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_frequency:D

    mul-double v3, p1, v1

    mul-double v5, p3, v1

    mul-double v1, v1, p5

    invoke-static {v3, v4}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v5, v6}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v1, v2}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v9

    long-to-int v9, v9

    new-instance v10, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;

    invoke-direct {v10}, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;-><init>()V

    new-instance v11, Lcom/ardor3d/math/Vector3;

    invoke-direct {v11}, Lcom/ardor3d/math/Vector3;-><init>()V

    add-int/lit8 v12, v7, -0x2

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    add-int/lit8 v15, v7, 0x2

    if-gt v12, v15, :cond_4

    iput v12, v10, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->x:I

    add-int/lit8 v15, v8, -0x2

    :goto_1
    move/from16 p1, v7

    add-int/lit8 v7, v8, 0x2

    if-gt v15, v7, :cond_3

    iput v15, v10, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->y:I

    add-int/lit8 v7, v9, -0x2

    :goto_2
    move/from16 p2, v8

    add-int/lit8 v8, v9, 0x2

    if-gt v7, v8, :cond_2

    iput v7, v10, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;->z:I

    iget-object v8, v0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_points:Ljava/util/Map;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ardor3d/math/Vector3;

    move/from16 p3, v9

    if-nez v8, :cond_0

    int-to-double v8, v12

    move-object/from16 p4, v11

    iget v11, v0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_seed:I

    invoke-direct {v0, v12, v15, v7, v11}, Lcom/ardor3d/math/functions/VoroniFunction3D;->point(IIII)D

    move-result-wide v16

    add-double v19, v8, v16

    int-to-double v8, v15

    iget v11, v0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_seed:I

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v0, v12, v15, v7, v11}, Lcom/ardor3d/math/functions/VoroniFunction3D;->point(IIII)D

    move-result-wide v16

    add-double v21, v8, v16

    int-to-double v8, v7

    iget v11, v0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_seed:I

    add-int/lit8 v11, v11, 0x2

    invoke-direct {v0, v12, v15, v7, v11}, Lcom/ardor3d/math/functions/VoroniFunction3D;->point(IIII)D

    move-result-wide v16

    add-double v23, v8, v16

    new-instance v8, Lcom/ardor3d/math/Vector3;

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v24}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iget-object v9, v0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_points:Ljava/util/Map;

    new-instance v11, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;

    invoke-direct {v11, v10}, Lcom/ardor3d/math/functions/VoroniFunction3D$Key;-><init>(Lcom/ardor3d/math/functions/VoroniFunction3D$Key;)V

    invoke-interface {v9, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_0
    move-object/from16 p4, v11

    :goto_3
    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v16

    sub-double v16, v16, v3

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v18

    sub-double v18, v18, v5

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v20

    sub-double v20, v20, v1

    mul-double v16, v16, v16

    mul-double v18, v18, v18

    add-double v16, v16, v18

    mul-double v20, v20, v20

    add-double v16, v16, v20

    cmpg-double v9, v16, v13

    if-gez v9, :cond_1

    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-wide/from16 v13, v16

    goto :goto_4

    :cond_1
    move-object/from16 v9, p4

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, p2

    move-object v11, v9

    move/from16 v9, p3

    goto :goto_2

    :cond_2
    move/from16 p3, v9

    move-object v9, v11

    add-int/lit8 v15, v15, 0x1

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    goto/16 :goto_1

    :cond_3
    move/from16 p2, v8

    move/from16 p3, v9

    move-object v9, v11

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p1

    move/from16 v9, p3

    goto/16 :goto_0

    :cond_4
    move-object v9, v11

    iget-boolean v1, v0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_useDistance:Z

    if-eqz v1, :cond_5

    invoke-static {v13, v14}, Lcom/ardor3d/math/MathUtils;->sqrt(D)D

    move-result-wide v1

    goto :goto_5

    :cond_5
    const-wide/16 v1, 0x0

    :goto_5
    iget-wide v3, v0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_displacement:D

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getXf()F

    move-result v5

    invoke-static {v5}, Lcom/ardor3d/math/MathUtils;->floor(F)I

    move-result v5

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getYf()F

    move-result v6

    invoke-static {v6}, Lcom/ardor3d/math/MathUtils;->floor(F)I

    move-result v6

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector3;->getZf()F

    move-result v7

    invoke-static {v7}, Lcom/ardor3d/math/MathUtils;->floor(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/ardor3d/math/functions/VoroniFunction3D;->point(IIII)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    return-wide v1
.end method

.method public getDisplacement()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_displacement:D

    return-wide v0
.end method

.method public getFrequency()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_frequency:D

    return-wide v0
.end method

.method public getSeed()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_seed:I

    return v0
.end method

.method public isUseDistance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_useDistance:Z

    return v0
.end method

.method public setDisplacement(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_displacement:D

    return-void
.end method

.method public setFrequency(D)V
    .locals 0

    iput-wide p1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_frequency:D

    return-void
.end method

.method public setSeed(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_seed:I

    return-void
.end method

.method public setUseDistance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/math/functions/VoroniFunction3D;->_useDistance:Z

    return-void
.end method
