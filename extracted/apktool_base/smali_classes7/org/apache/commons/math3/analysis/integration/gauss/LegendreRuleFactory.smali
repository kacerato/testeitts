.class public Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;
.super Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public computeRule(I)Lorg/apache/commons/math3/util/Pair;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/util/Pair<",
            "[",
            "Ljava/lang/Double;",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move/from16 v0, p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    filled-new-array {v5}, [Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    add-int/lit8 v7, v0, -0x1

    move-object/from16 v8, p0

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->getRuleInternal(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Double;

    new-array v9, v0, [Ljava/lang/Double;

    new-array v10, v0, [Ljava/lang/Double;

    div-int/lit8 v11, v0, 0x2

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_9

    if-nez v13, :cond_1

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_1
    add-int/lit8 v16, v13, -0x1

    aget-object v16, v7, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    :goto_1
    if-ne v11, v6, :cond_2

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_2
    aget-object v18, v7, v13

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    :goto_2
    move v12, v6

    move-wide/from16 v20, v16

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    :goto_3
    if-ge v12, v0, :cond_3

    mul-int/lit8 v24, v12, 0x2

    add-int/lit8 v1, v24, 0x1

    add-int/lit8 v2, v12, 0x1

    int-to-double v14, v1

    mul-double v14, v14, v16

    mul-double v14, v14, v20

    int-to-double v3, v12

    mul-double v3, v3, v22

    sub-double/2addr v14, v3

    int-to-double v3, v2

    div-double/2addr v14, v3

    move v12, v2

    move-wide/from16 v22, v20

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const-wide/16 v3, 0x0

    move-wide/from16 v20, v14

    goto :goto_3

    :cond_3
    add-double v1, v16, v18

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    move-wide v14, v1

    const/4 v12, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    :goto_4
    if-nez v12, :cond_8

    sub-double v14, v18, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v22

    cmpg-double v12, v14, v22

    if-gtz v12, :cond_4

    move v12, v6

    goto :goto_5

    :cond_4
    const/4 v12, 0x0

    :goto_5
    move-wide v14, v1

    move v3, v6

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    :goto_6
    if-ge v3, v0, :cond_5

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v6

    move-object/from16 v25, v7

    int-to-double v6, v4

    mul-double/2addr v6, v1

    mul-double/2addr v6, v14

    move-object/from16 v26, v5

    int-to-double v4, v3

    mul-double v4, v4, v22

    sub-double/2addr v6, v4

    add-int/lit8 v3, v3, 0x1

    int-to-double v4, v3

    div-double/2addr v6, v4

    move-wide/from16 v22, v14

    move-object/from16 v5, v26

    move-wide v14, v6

    move-object/from16 v7, v25

    const/4 v6, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v26, v5

    move-object/from16 v25, v7

    if-nez v12, :cond_7

    mul-double v3, v20, v14

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_6

    move-wide/from16 v18, v1

    goto :goto_7

    :cond_6
    move-wide/from16 v16, v1

    move-wide/from16 v20, v14

    :goto_7
    add-double v1, v16, v18

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    :goto_8
    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v7, v25

    move-object/from16 v5, v26

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    goto :goto_8

    :cond_8
    move-object/from16 v26, v5

    move-object/from16 v25, v7

    const-wide/16 v5, 0x0

    int-to-double v3, v0

    mul-double/2addr v14, v1

    sub-double v22, v22, v14

    mul-double v3, v3, v22

    mul-double v14, v1, v1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v16, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    mul-double/2addr v3, v3

    div-double/2addr v14, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v9, v13

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v10, v13

    sub-int v3, v0, v13

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    neg-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v3

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v10, v3

    add-int/lit8 v13, v13, 0x1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    move-wide/from16 v27, v5

    move v6, v4

    move-wide/from16 v3, v27

    move-object/from16 v5, v26

    goto/16 :goto_0

    :cond_9
    move-object/from16 v26, v5

    move v4, v6

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_b

    move v6, v4

    move-wide/from16 v14, v16

    :goto_9
    if-ge v6, v0, :cond_a

    neg-int v1, v6

    int-to-double v1, v1

    mul-double/2addr v1, v14

    add-int/lit8 v3, v6, 0x1

    int-to-double v3, v3

    div-double v14, v1, v3

    add-int/lit8 v6, v6, 0x2

    goto :goto_9

    :cond_a
    int-to-double v0, v0

    mul-double/2addr v0, v14

    mul-double/2addr v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v1, v2, v0

    aput-object v26, v9, v11

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v10, v11

    :cond_b
    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v0, v9, v10}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
