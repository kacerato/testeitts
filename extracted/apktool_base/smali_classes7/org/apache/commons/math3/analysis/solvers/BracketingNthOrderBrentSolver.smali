.class public Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6

.field private static final DEFAULT_MAXIMAL_ORDER:I = 0x5

.field private static final MAXIMAL_AGING:I = 0x2

.field private static final REDUCTION_FACTOR:D = 0.0625


# instance fields
.field private allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field private final maximalOrder:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v2, 0x5

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DDDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 10
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    const/4 p1, 0x2

    if-lt p7, p1, :cond_0

    .line 11
    iput p7, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 12
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 13
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x1

    invoke-direct {p2, p3, p1, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method public constructor <init>(DDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    const/4 p1, 0x2

    if-lt p5, p1, :cond_0

    .line 7
    iput p5, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 8
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 9
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x1

    invoke-direct {p2, p3, p1, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method public constructor <init>(DI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    const/4 p1, 0x2

    if-lt p3, p1, :cond_0

    .line 3
    iput p3, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 4
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 5
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p3, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method private guessX(D[D[DII)D
    .locals 11

    move/from16 v0, p5

    move v1, v0

    :goto_0
    add-int/lit8 v2, p6, -0x1

    if-ge v1, v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    sub-int v4, v3, v0

    :goto_1
    if-le v2, v1, :cond_0

    aget-wide v5, p3, v2

    add-int/lit8 v7, v2, -0x1

    aget-wide v7, p3, v7

    sub-double/2addr v5, v7

    aget-wide v7, p4, v2

    sub-int v9, v2, v4

    aget-wide v9, p4, v9

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    aput-wide v5, p3, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_2
    if-lt v2, v0, :cond_2

    aget-wide v5, p3, v2

    aget-wide v7, p4, v2

    sub-double v7, p1, v7

    mul-double/2addr v3, v7

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    return-wide v3
.end method


# virtual methods
.method public doSolve()D
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v7, p0

    iget v8, v7, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    add-int/lit8 v9, v8, 0x1

    new-array v10, v9, [D

    add-int/lit8 v0, v8, 0x1

    new-array v11, v0, [D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMin()D

    move-result-wide v0

    const/4 v12, 0x0

    aput-wide v0, v10, v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getStartValue()D

    move-result-wide v0

    const/4 v13, 0x1

    aput-wide v0, v10, v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMax()D

    move-result-wide v5

    const/4 v14, 0x2

    aput-wide v5, v10, v14

    aget-wide v1, v10, v12

    aget-wide v3, v10, v13

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->verifySequence(DDD)V

    aget-wide v0, v10, v13

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v0

    aput-wide v0, v11, v13

    const-wide/16 v5, 0x0

    invoke-static {v0, v1, v5, v6, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-wide v0, v10, v13

    return-wide v0

    :cond_0
    aget-wide v0, v10, v12

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v0

    aput-wide v0, v11, v12

    invoke-static {v0, v1, v5, v6, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-wide v0, v10, v12

    return-wide v0

    :cond_1
    aget-wide v0, v11, v12

    aget-wide v2, v11, v13

    mul-double/2addr v0, v2

    cmpg-double v0, v0, v5

    if-gez v0, :cond_2

    move v0, v13

    move v1, v14

    goto :goto_0

    :cond_2
    aget-wide v0, v10, v14

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v0

    aput-wide v0, v11, v14

    invoke-static {v0, v1, v5, v6, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-wide v0, v10, v14

    return-wide v0

    :cond_3
    aget-wide v0, v11, v13

    aget-wide v2, v11, v14

    mul-double/2addr v0, v2

    cmpg-double v0, v0, v5

    if-gez v0, :cond_1b

    move v0, v14

    const/4 v1, 0x3

    :goto_0
    new-array v4, v9, [D

    add-int/lit8 v2, v0, -0x1

    aget-wide v16, v10, v2

    aget-wide v2, v11, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    aget-wide v20, v10, v0

    aget-wide v22, v11, v0

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    move-wide/from16 v14, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v20

    move-wide/from16 v40, v2

    move v3, v0

    move v0, v12

    move v2, v0

    move-wide/from16 v12, v18

    move-wide/from16 v18, v16

    move-wide/from16 v16, v40

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v26

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v28

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    move/from16 v31, v8

    move/from16 v32, v9

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    mul-double v28, v28, v5

    add-double v26, v26, v28

    sub-double v8, v22, v18

    cmpg-double v5, v8, v26

    if-lez v5, :cond_4

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getFunctionValueAccuracy()D

    move-result-wide v26

    cmpg-double v5, v5, v26

    if-gez v5, :cond_5

    :cond_4
    move-wide/from16 v35, v12

    move-wide/from16 v37, v14

    const-wide/16 v13, 0x0

    goto/16 :goto_d

    :cond_5
    const/4 v5, 0x2

    if-lt v2, v5, :cond_6

    add-int/lit8 v5, v2, -0x2

    const/4 v6, 0x1

    shl-int v5, v6, v5

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move/from16 v28, v1

    add-int/lit8 v1, v2, -0x1

    move/from16 v29, v2

    int-to-double v1, v1

    mul-double v33, v5, v16

    const-wide/high16 v26, 0x3fb0000000000000L    # 0.0625

    mul-double v26, v26, v1

    mul-double v26, v26, v24

    :goto_2
    sub-double v33, v33, v26

    add-double/2addr v5, v1

    div-double v33, v33, v5

    goto :goto_3

    :cond_6
    move/from16 v28, v1

    move/from16 v29, v2

    move v1, v5

    if-lt v0, v1, :cond_7

    add-int/lit8 v1, v0, -0x2

    add-int/lit8 v2, v0, -0x1

    int-to-double v5, v2

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    int-to-double v1, v1

    mul-double v33, v1, v24

    const-wide/high16 v26, 0x3fb0000000000000L    # 0.0625

    mul-double v26, v26, v5

    mul-double v26, v26, v16

    goto :goto_2

    :cond_7
    const-wide/16 v33, 0x0

    :goto_3
    move/from16 v26, v28

    const/4 v6, 0x0

    :goto_4
    sub-int v1, v26, v6

    invoke-static {v10, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v5, v28

    move/from16 v28, v29

    move-wide/from16 v1, v33

    move-wide/from16 v35, v12

    move v12, v3

    move-object v3, v4

    move-object v13, v4

    move-object v4, v11

    move/from16 v39, v5

    move-wide/from16 v37, v14

    move-object v15, v13

    const-wide/16 v13, 0x0

    move v5, v6

    move/from16 v29, v6

    move/from16 v6, v26

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->guessX(D[D[DII)D

    move-result-wide v0

    cmpl-double v2, v0, v18

    if-lez v2, :cond_9

    cmpg-double v2, v0, v22

    if-ltz v2, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v6, v29

    goto :goto_7

    :cond_9
    :goto_5
    sub-int v3, v12, v29

    sub-int v0, v26, v12

    if-lt v3, v0, :cond_a

    add-int/lit8 v6, v29, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v26, v26, -0x1

    move/from16 v6, v29

    :goto_6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_c

    sub-int v2, v26, v6

    const/4 v3, 0x1

    if-gt v2, v3, :cond_b

    goto :goto_8

    :cond_b
    move v3, v12

    move-object v4, v15

    move/from16 v0, v27

    move/from16 v29, v28

    move-wide/from16 v12, v35

    move-wide/from16 v14, v37

    move/from16 v28, v39

    goto :goto_4

    :cond_c
    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v0

    add-double v0, v18, v8

    add-int/lit8 v6, v12, -0x1

    move v3, v12

    goto :goto_9

    :cond_d
    move/from16 v3, v26

    :goto_9
    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v4, v5, v13, v14, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v8

    if-eqz v8, :cond_e

    return-wide v0

    :cond_e
    move/from16 v8, v39

    const/4 v2, 0x2

    if-le v8, v2, :cond_f

    sub-int v2, v3, v6

    if-eq v2, v8, :cond_f

    const/4 v3, 0x0

    invoke-static {v10, v6, v10, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v6, v11, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v6, v12, v6

    move v3, v6

    move v6, v2

    move/from16 v2, v32

    goto :goto_b

    :cond_f
    const/4 v3, 0x0

    move/from16 v2, v32

    if-ne v8, v2, :cond_11

    add-int/lit8 v6, v8, -0x1

    const/4 v8, 0x2

    add-int/lit8 v9, v31, 0x2

    div-int/2addr v9, v8

    if-lt v12, v9, :cond_10

    const/4 v8, 0x1

    invoke-static {v10, v8, v10, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11, v8, v11, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v12, -0x1

    goto :goto_b

    :cond_10
    :goto_a
    move v3, v12

    goto :goto_b

    :cond_11
    move v6, v8

    goto :goto_a

    :goto_b
    add-int/lit8 v8, v3, 0x1

    sub-int v9, v6, v3

    invoke-static {v10, v3, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-wide v0, v10, v3

    invoke-static {v11, v3, v11, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-wide v4, v11, v3

    const/4 v9, 0x1

    add-int/2addr v6, v9

    mul-double v29, v4, v16

    cmpg-double v9, v29, v13

    if-gtz v9, :cond_12

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    add-int/lit8 v12, v28, 0x1

    move-wide/from16 v22, v0

    move-wide/from16 v24, v4

    move-wide/from16 v4, v16

    move-wide/from16 v16, v35

    const/4 v0, 0x0

    goto :goto_c

    :cond_12
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    add-int/lit8 v3, v27, 0x1

    move-wide/from16 v18, v0

    move v0, v3

    move v3, v8

    move-wide/from16 v8, v37

    const/4 v12, 0x0

    :goto_c
    move v1, v6

    move-wide/from16 v40, v8

    move v9, v2

    move v2, v12

    move/from16 v8, v31

    move-wide/from16 v42, v4

    move-object v4, v15

    move-wide v5, v13

    move-wide/from16 v12, v16

    move-wide/from16 v16, v42

    move-wide/from16 v14, v40

    goto/16 :goto_1

    :goto_d
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    iget-object v1, v7, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    cmpg-double v0, v16, v13

    if-gez v0, :cond_13

    move-wide/from16 v18, v22

    :cond_13
    return-wide v18

    :cond_14
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_15
    cmpg-double v0, v16, v13

    if-gtz v0, :cond_16

    goto :goto_e

    :cond_16
    move-wide/from16 v18, v22

    :goto_e
    return-wide v18

    :cond_17
    return-wide v22

    :cond_18
    return-wide v18

    :cond_19
    cmpg-double v0, v35, v37

    if-gez v0, :cond_1a

    goto :goto_f

    :cond_1a
    move-wide/from16 v18, v22

    :goto_f
    return-wide v18

    :cond_1b
    new-instance v0, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/4 v1, 0x0

    aget-wide v2, v10, v1

    const/4 v4, 0x2

    aget-wide v5, v10, v4

    aget-wide v13, v11, v1

    aget-wide v15, v11, v4

    move-object v8, v0

    move-wide v9, v2

    move-wide v11, v5

    invoke-direct/range {v8 .. v16}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v0
.end method

.method public getMaximalOrder()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    return v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 3
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 4
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 1
    iput-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 2
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide p1

    return-wide p1
.end method
