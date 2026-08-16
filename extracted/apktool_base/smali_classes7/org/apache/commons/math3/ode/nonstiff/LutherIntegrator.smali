.class public Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "SourceFile"


# static fields
.field private static final Q:D

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    sub-double v4, v2, v0

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    div-double/2addr v4, v6

    add-double/2addr v2, v0

    div-double/2addr v2, v6

    const/4 v6, 0x6

    new-array v7, v6, [D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    aput-wide v8, v7, v10

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const/4 v13, 0x1

    aput-wide v11, v7, v13

    const-wide v11, 0x3fe5555555555555L    # 0.6666666666666666

    const/4 v14, 0x2

    aput-wide v11, v7, v14

    const/4 v11, 0x3

    aput-wide v4, v7, v11

    const/4 v4, 0x4

    aput-wide v2, v7, v4

    const/4 v2, 0x5

    aput-wide v8, v7, v2

    sput-object v7, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_C:[D

    new-array v15, v13, [D

    aput-wide v8, v15, v10

    new-array v3, v14, [D

    fill-array-data v3, :array_0

    new-array v5, v11, [D

    fill-array-data v5, :array_1

    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    mul-double/2addr v7, v0

    const-wide/high16 v16, -0x3fcb000000000000L    # -21.0

    add-double v7, v7, v16

    const-wide v16, 0x4078800000000000L    # 392.0

    div-double v7, v7, v16

    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    mul-double v18, v18, v0

    const-wide/high16 v20, -0x3fb4000000000000L    # -56.0

    add-double v18, v18, v20

    div-double v18, v18, v16

    const-wide/high16 v20, 0x4048000000000000L    # 48.0

    mul-double v20, v20, v0

    const-wide/high16 v22, 0x4075000000000000L    # 336.0

    sub-double v22, v22, v20

    div-double v22, v22, v16

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v0

    const-wide v24, -0x3fb0800000000000L    # -63.0

    add-double v20, v20, v24

    div-double v20, v20, v16

    new-array v9, v4, [D

    aput-wide v7, v9, v10

    aput-wide v18, v9, v13

    aput-wide v22, v9, v14

    aput-wide v20, v9, v11

    const-wide v7, 0x406fe00000000000L    # 255.0

    mul-double/2addr v7, v0

    const-wide v18, -0x3f6df40000000000L    # -1155.0

    sub-double v18, v18, v7

    const-wide v7, 0x409ea00000000000L    # 1960.0

    div-double v18, v18, v7

    const-wide/high16 v20, 0x4044000000000000L    # 40.0

    mul-double v20, v20, v0

    const-wide v22, -0x3f8e800000000000L    # -280.0

    sub-double v22, v22, v20

    div-double v22, v22, v7

    const-wide/high16 v20, 0x4074000000000000L    # 320.0

    mul-double v20, v20, v0

    const-wide/16 v24, 0x0

    sub-double v20, v24, v20

    div-double v20, v20, v7

    const-wide v26, 0x4076b00000000000L    # 363.0

    mul-double v26, v26, v0

    const-wide v28, 0x404f800000000000L    # 63.0

    add-double v26, v26, v28

    div-double v26, v26, v7

    const-wide v28, 0x40a2600000000000L    # 2352.0

    mul-double v16, v16, v0

    add-double v16, v16, v28

    div-double v16, v16, v7

    new-array v7, v2, [D

    aput-wide v18, v7, v10

    aput-wide v22, v7, v13

    aput-wide v20, v7, v14

    aput-wide v26, v7, v11

    aput-wide v16, v7, v4

    const-wide v16, 0x405a400000000000L    # 105.0

    mul-double v16, v16, v0

    const-wide v18, 0x4074a00000000000L    # 330.0

    add-double v16, v16, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v16, v16, v18

    const-wide/high16 v20, 0x405e000000000000L    # 120.0

    mul-double v24, v24, v0

    add-double v24, v24, v20

    div-double v24, v24, v18

    const-wide v20, 0x4071800000000000L    # 280.0

    mul-double v20, v20, v0

    const-wide/high16 v22, -0x3f97000000000000L    # -200.0

    add-double v20, v20, v22

    div-double v20, v20, v18

    const-wide v22, 0x4067a00000000000L    # 189.0

    mul-double v22, v22, v0

    const-wide v26, 0x405f800000000000L    # 126.0

    sub-double v22, v26, v22

    div-double v22, v22, v18

    const-wide v28, -0x3f7a900000000000L    # -686.0

    mul-double v26, v26, v0

    sub-double v28, v28, v26

    div-double v28, v28, v18

    const-wide v26, 0x4051800000000000L    # 70.0

    mul-double v0, v0, v26

    const-wide v26, 0x407ea00000000000L    # 490.0

    sub-double v26, v26, v0

    div-double v26, v26, v18

    new-array v0, v6, [D

    aput-wide v16, v0, v10

    aput-wide v24, v0, v13

    aput-wide v20, v0, v14

    aput-wide v22, v0, v11

    aput-wide v28, v0, v4

    aput-wide v26, v0, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    move-object/from16 v19, v7

    move-object/from16 v20, v0

    filled-new-array/range {v15 .. v20}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_A:[[D

    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_B:[D

    return-void

    :array_0
    .array-data 8
        0x3fd8000000000000L    # 0.375
        0x3fc0000000000000L    # 0.125
    .end array-data

    :array_1
    .array-data 8
        0x3fd2f684bda12f68L    # 0.2962962962962963
        0x3fb2f684bda12f68L    # 0.07407407407407407
        0x3fd2f684bda12f68L    # 0.2962962962962963
    .end array-data

    :array_2
    .array-data 8
        0x3fa999999999999aL    # 0.05
        0x0
        0x3fd6c16c16c16c17L    # 0.35555555555555557
        0x0
        0x3fd16c16c16c16c1L    # 0.2722222222222222
        0x3fd16c16c16c16c1L    # 0.2722222222222222
        0x3fa999999999999aL    # 0.05
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 8

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_C:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_A:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_B:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;-><init>()V

    const-string v1, "Luther"

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    return-void
.end method
