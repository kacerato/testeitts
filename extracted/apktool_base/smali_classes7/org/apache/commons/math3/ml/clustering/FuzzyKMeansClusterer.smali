.class public Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;
.super Lorg/apache/commons/math3/ml/clustering/Clusterer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/ml/clustering/Clusterable;",
        ">",
        "Lorg/apache/commons/math3/ml/clustering/Clusterer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EPSILON:D = 0.001


# instance fields
.field private clusters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final epsilon:D

.field private final fuzziness:D

.field private final k:I

.field private final maxIterations:I

.field private membershipMatrix:[[D

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(ID)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    new-instance v5, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;

    invoke-direct {v5}, Lorg/apache/commons/math3/ml/distance/EuclideanDistance;-><init>()V

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;-><init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    return-void
.end method

.method public constructor <init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    new-instance v8, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    invoke-direct {v8}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>()V

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;-><init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;DLorg/apache/commons/math3/random/RandomGenerator;)V

    return-void
.end method

.method public constructor <init>(IDILorg/apache/commons/math3/ml/distance/DistanceMeasure;DLorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/ml/clustering/Clusterer;-><init>(Lorg/apache/commons/math3/ml/distance/DistanceMeasure;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p5, p2, v0

    if-lez p5, :cond_0

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    .line 5
    iput-wide p2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    .line 6
    iput p4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    .line 7
    iput-wide p6, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    .line 8
    iput-object p8, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    .line 10
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-void

    .line 12
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method private calculateMaxMembershipChange([[D)D
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v5, v5, v3

    aget-wide v6, v5, v4

    aget-object v5, p1, v3

    aget-wide v8, v5, v4

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v5, v6, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private initializeMembershipMatrix()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v3, v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->normalizeArray([DD)[D

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveMembershipMatrix([[D)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateClusterCenters()V
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget v2, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v5

    array-length v5, v5

    new-array v6, v5, [D

    iget-object v7, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    iget-object v12, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v12, v12, v10

    aget-wide v13, v12, v4

    move v15, v4

    iget-wide v3, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    invoke-static {v13, v14, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    invoke-interface {v11}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_0

    aget-wide v16, v6, v13

    aget-wide v18, v11, v13

    mul-double v18, v18, v3

    add-double v16, v16, v18

    aput-wide v16, v6, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_0
    add-double/2addr v8, v3

    add-int/lit8 v10, v10, 0x1

    move v4, v15

    goto :goto_1

    :cond_1
    move v15, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v8

    invoke-static {v3, v4, v6}, Lorg/apache/commons/math3/util/MathArrays;->scaleInPlace(D[D)V

    new-instance v3, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    new-instance v4, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    invoke-direct {v4, v6}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v15, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v1, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-void
.end method

.method private updateMembershipMatrix()V
    .locals 24

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    const-wide/16 v4, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    iget-object v8, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v12, v8, v10

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-eqz v12, :cond_2

    iget-object v12, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide/from16 v17, v10

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    cmpl-double v1, v20, v10

    if-nez v1, :cond_0

    move-wide v8, v10

    const-wide/high16 v17, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_3

    :cond_0
    div-double v13, v8, v20

    iget-wide v10, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    sub-double/2addr v10, v15

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v10, v22, v10

    invoke-static {v13, v14, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v10

    add-double v17, v17, v10

    const-wide/16 v10, 0x0

    goto :goto_2

    :cond_1
    move-wide v8, v10

    goto :goto_3

    :cond_2
    const-wide/16 v8, 0x0

    const-wide/16 v17, 0x0

    :goto_3
    cmpl-double v1, v17, v8

    if-nez v1, :cond_3

    move-wide v10, v15

    goto :goto_4

    :cond_3
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, v17, v10

    if-nez v1, :cond_4

    move-wide v10, v8

    goto :goto_4

    :cond_4
    div-double v10, v15, v17

    :goto_4
    iget-object v1, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v1, v1, v2

    aput-wide v10, v1, v7

    cmpl-double v1, v10, v4

    if-lez v1, :cond_5

    move v6, v7

    move-wide v4, v10

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_6
    iget-object v1, v0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/ml/clustering/Cluster;->addPoint(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public cluster(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    iget p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v4, 0x1

    aput p1, v3, v4

    aput v0, v3, v2

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    iget v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    new-array v1, v1, [I

    aput v3, v1, v4

    aput v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->initializeMembershipMatrix()V

    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    invoke-interface {v0}, Lorg/apache/commons/math3/ml/clustering/Clusterable;->getPoint()[D

    move-result-object v0

    array-length v0, v0

    move v1, v2

    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    new-instance v5, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    new-instance v6, Lorg/apache/commons/math3/ml/clustering/DoublePoint;

    new-array v7, v0, [D

    invoke-direct {v6, v7}, Lorg/apache/commons/math3/ml/clustering/DoublePoint;-><init>([D)V

    invoke-direct {v5, v6}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;-><init>(Lorg/apache/commons/math3/ml/clustering/Clusterable;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    if-gez v0, :cond_2

    const v0, 0x7fffffff

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->saveMembershipMatrix([[D)V

    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->updateClusterCenters()V

    invoke-direct {p0}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->updateMembershipMatrix()V

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->calculateMaxMembershipChange([[D)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    cmpl-double v1, v5, v7

    if-lez v1, :cond_3

    add-int/2addr v2, v4

    if-lt v2, v0, :cond_2

    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-object p1

    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method public getClusters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/ml/clustering/CentroidCluster<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    return-object v0
.end method

.method public getDataPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    return-object v0
.end method

.method public getEpsilon()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->epsilon:D

    return-wide v0
.end method

.method public getFuzziness()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    return-wide v0
.end method

.method public getK()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->k:I

    return v0
.end method

.method public getMaxIterations()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->maxIterations:I

    return v0
.end method

.method public getMembershipMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0
.end method

.method public getObjectiveFunctionValue()D
    .locals 15

    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->points:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/ml/clustering/Clusterable;

    iget-object v6, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->clusters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;

    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/clustering/CentroidCluster;->getCenter()Lorg/apache/commons/math3/ml/clustering/Clusterable;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/math3/ml/clustering/Clusterer;->distance(Lorg/apache/commons/math3/ml/clustering/Clusterable;Lorg/apache/commons/math3/ml/clustering/Clusterable;)D

    move-result-wide v8

    mul-double/2addr v8, v8

    iget-object v10, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->membershipMatrix:[[D

    aget-object v10, v10, v4

    aget-wide v11, v10, v7

    iget-wide v13, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->fuzziness:D

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0
.end method

.method public getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/ml/clustering/FuzzyKMeansClusterer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object v0
.end method
