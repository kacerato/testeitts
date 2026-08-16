.class public Lcom/ardor3d/math/functions/ArchimedeanSpiralFunction3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/math/functions/Function3D;


# static fields
.field private static final DEFAULT_FREQUENCY:D = 0.2

.field private static final DEFAULT_ROUGHNESS:I = 0x1

.field private static final DEFAULT_TURBULENCE:Lcom/ardor3d/math/functions/Function3D;


# instance fields
.field private final _numArms:I

.field private final _turbulenceFunction:Lcom/ardor3d/math/functions/Function3D;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v9, Lcom/ardor3d/math/functions/FbmFunction3D;

    invoke-static {}, Lcom/ardor3d/math/functions/Functions;->simplexNoise()Lcom/ardor3d/math/functions/Function3D;

    move-result-object v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v2, 0x1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/ardor3d/math/functions/FbmFunction3D;-><init>(Lcom/ardor3d/math/functions/Function3D;IDDD)V

    sput-object v9, Lcom/ardor3d/math/functions/ArchimedeanSpiralFunction3D;->DEFAULT_TURBULENCE:Lcom/ardor3d/math/functions/Function3D;

    return-void
.end method

.method public constructor <init>(ILcom/ardor3d/math/functions/Function3D;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ardor3d/math/functions/ArchimedeanSpiralFunction3D;->_numArms:I

    .line 4
    iput-object p2, p0, Lcom/ardor3d/math/functions/ArchimedeanSpiralFunction3D;->_turbulenceFunction:Lcom/ardor3d/math/functions/Function3D;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/ardor3d/math/functions/ArchimedeanSpiralFunction3D;->DEFAULT_TURBULENCE:Lcom/ardor3d/math/functions/Function3D;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/ardor3d/math/functions/ArchimedeanSpiralFunction3D;-><init>(ILcom/ardor3d/math/functions/Function3D;)V

    return-void
.end method


# virtual methods
.method public eval(DDD)D
    .locals 12

    move-object v0, p0

    mul-double v1, p1, p1

    mul-double v3, p3, p3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/16 v1, 0x0

    cmpl-double v3, v8, v1

    if-nez v3, :cond_0

    move-wide v10, v1

    goto :goto_1

    :cond_0
    cmpg-double v3, p1, v1

    if-gez v3, :cond_1

    div-double v3, p3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide v5, 0x4012d97c7f3321d2L    # 4.71238898038469

    sub-double/2addr v5, v3

    :goto_0
    move-wide v10, v5

    goto :goto_1

    :cond_1
    div-double v3, p3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v5, v3

    goto :goto_0

    :goto_1
    iget-object v3, v0, Lcom/ardor3d/math/functions/ArchimedeanSpiralFunction3D;->_turbulenceFunction:Lcom/ardor3d/math/functions/Function3D;

    if-eqz v3, :cond_2

    move-object v1, v3

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/ardor3d/math/functions/Function3D;->eval(DDD)D

    move-result-wide v1

    :cond_2
    add-double v3, p5, v8

    iget v5, v0, Lcom/ardor3d/math/functions/ArchimedeanSpiralFunction3D;->_numArms:I

    int-to-double v5, v5

    mul-double/2addr v5, v10

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    add-double/2addr v3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v3, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    sub-double/2addr v3, v1

    return-wide v3
.end method
