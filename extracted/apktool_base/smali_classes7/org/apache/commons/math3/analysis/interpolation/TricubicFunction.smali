.class Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[[D


# direct methods
.method public constructor <init>([D)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->a:[[[D

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v3

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    aget-wide v6, p1, v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public value(DDD)D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    cmpg-double v7, p1, v5

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-ltz v7, :cond_5

    cmpl-double v7, p1, v3

    if-gtz v7, :cond_5

    cmpg-double v7, p3, v5

    if-ltz v7, :cond_4

    cmpl-double v7, p3, v3

    if-gtz v7, :cond_4

    cmpg-double v7, p5, v5

    if-ltz v7, :cond_3

    cmpl-double v7, p5, v3

    if-gtz v7, :cond_3

    mul-double v11, p1, p1

    mul-double v13, v11, p1

    new-array v7, v2, [D

    aput-wide v3, v7, v10

    aput-wide p1, v7, v8

    aput-wide v11, v7, v1

    aput-wide v13, v7, v0

    mul-double v11, p3, p3

    mul-double v13, v11, p3

    new-array v9, v2, [D

    aput-wide v3, v9, v10

    aput-wide p3, v9, v8

    aput-wide v11, v9, v1

    aput-wide v13, v9, v0

    mul-double v11, p5, p5

    mul-double v13, v11, p5

    new-array v15, v2, [D

    aput-wide v3, v15, v10

    aput-wide p5, v15, v8

    aput-wide v11, v15, v1

    aput-wide v13, v15, v0

    move v0, v10

    :goto_0
    if-ge v0, v2, :cond_2

    move v1, v10

    :goto_1
    if-ge v1, v2, :cond_1

    move v3, v10

    :goto_2
    if-ge v3, v2, :cond_0

    move-object/from16 v4, p0

    iget-object v11, v4, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->a:[[[D

    aget-object v11, v11, v0

    aget-object v11, v11, v1

    aget-wide v12, v11, v3

    aget-wide v16, v7, v0

    mul-double v12, v12, v16

    aget-wide v16, v9, v1

    mul-double v12, v12, v16

    aget-wide v16, v15, v3

    mul-double v12, v12, v16

    add-double/2addr v5, v12

    add-int/2addr v3, v8

    goto :goto_2

    :cond_0
    move-object/from16 v4, p0

    add-int/2addr v1, v8

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    add-int/2addr v0, v8

    goto :goto_0

    :cond_2
    move-object/from16 v4, p0

    return-wide v5

    :cond_3
    move-object/from16 v4, p0

    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v11, v9}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_4
    move-object/from16 v4, p0

    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v11, v9}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_5
    move-object/from16 v4, p0

    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v11, v9}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method
