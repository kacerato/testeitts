.class public Lcom/ardor3d/math/functions/BrickGridFunction3D;
.super Lcom/ardor3d/math/functions/GridPatternFunction3D;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BRICK_HEIGHT:I = 0x6

.field private static final DEFAULT_BRICK_LENGTH:I = 0xc

.field private static final DEFAULT_BRICK_VALUE:D = 0.0

.field private static final DEFAULT_BRICK_VARIATION:D = 0.1

.field private static final DEFAULT_MORTAR_THICKNESS:I = 0x1

.field private static final DEFAULT_MORTAR_VALUE:D = 0.9

.field private static final DEFAULT_MORTAR_VARIATION:D = 0.05


# direct methods
.method public constructor <init>()V
    .locals 12

    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fa999999999999aL    # 0.05

    const/16 v1, 0xc

    const/4 v2, 0x6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/ardor3d/math/functions/BrickGridFunction3D;-><init>(IIIDDDD)V

    return-void
.end method

.method public constructor <init>(IIIDDDD)V
    .locals 0

    .line 2
    invoke-static/range {p1 .. p11}, Lcom/ardor3d/math/functions/BrickGridFunction3D;->createBrickGrid(IIIDDDD)[[D

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ardor3d/math/functions/GridPatternFunction3D;-><init>([[D)V

    return-void
.end method

.method private static createBrickGrid(IIIDDDD)[[D
    .locals 17

    move/from16 v0, p1

    move-wide/from16 v1, p5

    move-wide/from16 v3, p9

    add-int v5, p0, p2

    mul-int/lit8 v6, v0, 0x2

    mul-int/lit8 v7, p2, 0x2

    add-int/2addr v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v9, 0x0

    aput v5, v7, v9

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    move v10, v9

    :goto_0
    if-ge v10, v5, :cond_1

    move v11, v9

    :goto_1
    if-ge v11, v6, :cond_0

    aget-object v12, v7, v10

    move-wide/from16 v13, p3

    move-wide/from16 v8, p7

    invoke-static {v13, v14, v8, v9}, Lcom/ardor3d/math/functions/BrickGridFunction3D;->createGridValue(DD)D

    move-result-wide v15

    aput-wide v15, v12, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    move-wide/from16 v13, p3

    move-wide/from16 v8, p7

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    move v8, v0

    :goto_3
    add-int v9, v0, p2

    if-ge v8, v9, :cond_2

    aget-object v9, v7, v6

    invoke-static {v1, v2, v3, v4}, Lcom/ardor3d/math/functions/BrickGridFunction3D;->createGridValue(DD)D

    move-result-wide v10

    aput-wide v10, v9, v8

    aget-object v9, v7, v6

    add-int v10, v8, v0

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v1, v2, v3, v4}, Lcom/ardor3d/math/functions/BrickGridFunction3D;->createGridValue(DD)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_4

    div-int/lit8 v6, v5, 0x2

    aget-object v6, v7, v6

    add-int v8, v9, v0

    const/4 v10, 0x1

    add-int/2addr v8, v10

    invoke-static {v1, v2, v3, v4}, Lcom/ardor3d/math/functions/BrickGridFunction3D;->createGridValue(DD)D

    move-result-wide v11

    aput-wide v11, v6, v8

    add-int/lit8 v6, v5, -0x1

    aget-object v6, v7, v6

    invoke-static {v1, v2, v3, v4}, Lcom/ardor3d/math/functions/BrickGridFunction3D;->createGridValue(DD)D

    move-result-wide v11

    aput-wide v11, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    return-object v7
.end method

.method private static createGridValue(DD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/ardor3d/math/MathUtils;->nextRandomDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, p2

    mul-double/2addr v0, v2

    sub-double/2addr v0, p2

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method
