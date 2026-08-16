.class public Lcom/ardor3d/math/functions/HexGridFunction3D;
.super Lcom/ardor3d/math/functions/GridPatternFunction3D;
.source "SourceFile"


# static fields
.field private static final ALTERNATE_VALUES:[D

.field private static final EQUILATERAL_TRIANGLE_HEIGHT:D

.field private static final FIXED_VALUES:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/ardor3d/math/functions/HexGridFunction3D;->EQUILATERAL_TRIANGLE_HEIGHT:D

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x6

    aput v3, v1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    sput-object v1, Lcom/ardor3d/math/functions/HexGridFunction3D;->FIXED_VALUES:[[D

    aget-object v5, v1, v4

    const/4 v6, 0x5

    aget-object v7, v1, v6

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    aput-wide v8, v7, v4

    aput-wide v8, v5, v4

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v2

    aput-wide v10, v5, v2

    aput-wide v10, v7, v0

    aput-wide v10, v5, v0

    const/4 v12, 0x3

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    aput-wide v13, v7, v12

    aput-wide v13, v5, v12

    const/4 v15, 0x4

    aput-wide v13, v7, v15

    aput-wide v13, v5, v15

    aput-wide v8, v7, v6

    aput-wide v8, v5, v6

    aget-object v5, v1, v0

    aget-object v7, v1, v12

    aput-wide v13, v7, v4

    aput-wide v13, v5, v4

    aput-wide v13, v7, v2

    aput-wide v13, v5, v2

    aput-wide v8, v7, v0

    aput-wide v8, v5, v0

    aput-wide v8, v7, v12

    aput-wide v8, v5, v12

    aput-wide v10, v7, v15

    aput-wide v10, v5, v15

    aput-wide v10, v7, v6

    aput-wide v10, v5, v6

    aget-object v5, v1, v2

    aget-object v1, v1, v15

    aput-wide v8, v1, v4

    aput-wide v8, v5, v4

    aput-wide v13, v1, v2

    aput-wide v13, v5, v2

    aput-wide v10, v1, v0

    aput-wide v10, v5, v0

    aput-wide v8, v1, v12

    aput-wide v8, v5, v12

    aput-wide v13, v1, v15

    aput-wide v13, v5, v15

    aput-wide v10, v1, v6

    aput-wide v10, v5, v6

    new-array v0, v3, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ardor3d/math/functions/HexGridFunction3D;->ALTERNATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x3ff0000000000000L    # 1.0
        0x0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v1, Lcom/ardor3d/math/functions/HexGridFunction3D;->FIXED_VALUES:[[D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sget-wide v4, Lcom/ardor3d/math/functions/HexGridFunction3D;->EQUILATERAL_TRIANGLE_HEIGHT:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/math/functions/GridPatternFunction3D;-><init>([[DDD)V

    return-void
.end method


# virtual methods
.method public getCellValue(IIDD)D
    .locals 13

    move v0, p1

    move v1, p2

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    const/4 v6, 0x4

    if-eq v0, v6, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_0
    int-to-double v6, v0

    sub-double v6, p3, v6

    int-to-double v8, v1

    sub-double v8, p5, v8

    add-int v10, v0, v1

    rem-int/2addr v10, v2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-ne v10, v3, :cond_1

    sub-double v6, v11, v6

    :cond_1
    cmpl-double v2, v6, v4

    if-nez v2, :cond_2

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    :cond_2
    div-double/2addr v8, v6

    cmpg-double v2, v8, v11

    if-gez v2, :cond_3

    invoke-super/range {p0 .. p6}, Lcom/ardor3d/math/functions/GridPatternFunction3D;->getCellValue(IIDD)D

    move-result-wide v4

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ardor3d/math/functions/HexGridFunction3D;->ALTERNATE_VALUES:[D

    aget-wide v4, v0, v1

    goto :goto_0

    :cond_4
    invoke-super/range {p0 .. p6}, Lcom/ardor3d/math/functions/GridPatternFunction3D;->getCellValue(IIDD)D

    move-result-wide v4

    :goto_0
    return-wide v4
.end method
