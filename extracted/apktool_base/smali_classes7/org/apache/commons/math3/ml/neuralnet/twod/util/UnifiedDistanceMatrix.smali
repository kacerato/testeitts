.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/ml/neuralnet/twod/util/MapVisualization;


# instance fields
.field private final distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

.field private final individualDistances:Z


# direct methods
.method public constructor <init>(ZLorg/apache/commons/math3/ml/distance/DistanceMeasure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances:Z

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    return-void
.end method

.method private averageDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 14

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;

    move-result-object v4

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_2

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_1

    invoke-virtual {p1, v5, v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeighbours(Lorg/apache/commons/math3/ml/neuralnet/Neuron;)Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v7

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    move v11, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    add-int/lit8 v11, v11, 0x1

    iget-object v13, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v12

    invoke-interface {v13, v7, v12}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v12

    add-double/2addr v9, v12

    goto :goto_2

    :cond_0
    aget-object v7, v2, v5

    int-to-double v11, v11

    div-double/2addr v9, v11

    aput-wide v9, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private individualDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfRows()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNumberOfColumns()I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v5

    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v6, v8, v5

    const/4 v6, 0x0

    aput v4, v8, v6

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v8, v6

    :goto_0
    if-ge v8, v2, :cond_3

    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v10, v9, 0x1

    move v11, v6

    :goto_1
    if-ge v11, v3, :cond_2

    mul-int/lit8 v12, v11, 0x2

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v8, v11}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v14

    sget-object v15, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v6, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v8, v11, v15, v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v6

    if-eqz v6, :cond_0

    aget-object v15, v4, v10

    add-int/lit8 v12, v12, 0x2

    iget-object v5, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v6}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v6

    invoke-interface {v5, v14, v6}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v5

    aput-wide v5, v15, v12

    :cond_0
    sget-object v5, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v6, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v8, v11, v5, v6}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    if-eqz v5, :cond_1

    add-int/lit8 v6, v9, 0x2

    aget-object v6, v4, v6

    iget-object v12, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v5

    invoke-interface {v12, v14, v5}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v14

    aput-wide v14, v6, v13

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_8

    mul-int/lit8 v6, v5, 0x2

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_7

    mul-int/lit8 v9, v8, 0x2

    invoke-virtual {v1, v5, v8}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v10

    sget-object v11, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->RIGHT:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v12, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v5, v8, v11, v12}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v12

    sget-object v13, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;->CENTER:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;

    sget-object v14, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;->DOWN:Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;

    invoke-virtual {v1, v5, v8, v13, v14}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v13

    invoke-virtual {v1, v5, v8, v11, v14}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(IILorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$HorizontalDirection;Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$VerticalDirection;)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v11

    if-nez v11, :cond_4

    const-wide/16 v10, 0x0

    goto :goto_4

    :cond_4
    iget-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v10}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v10

    invoke-virtual {v11}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v11

    invoke-interface {v14, v10, v11}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v10

    :goto_4
    if-eqz v12, :cond_6

    if-nez v13, :cond_5

    goto :goto_5

    :cond_5
    iget-object v14, v0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->distance:Lorg/apache/commons/math3/ml/distance/DistanceMeasure;

    invoke-virtual {v12}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v12

    invoke-virtual {v13}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v13

    invoke-interface {v14, v12, v13}, Lorg/apache/commons/math3/ml/distance/DistanceMeasure;->compute([D[D)D

    move-result-wide v14

    goto :goto_6

    :cond_6
    :goto_5
    const-wide/16 v14, 0x0

    :goto_6
    add-int/lit8 v12, v6, 0x2

    aget-object v12, v4, v12

    add-int/2addr v9, v7

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v14

    mul-double v10, v10, v16

    aput-wide v10, v12, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    array-length v1, v4

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v3, v4, v1

    const/4 v5, 0x0

    aput-object v3, v4, v5

    array-length v3, v3

    sub-int/2addr v3, v2

    move v2, v5

    :goto_7
    if-ge v2, v1, :cond_9

    aget-object v6, v4, v2

    aget-wide v7, v6, v3

    aput-wide v7, v6, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    return-object v4
.end method


# virtual methods
.method public computeImage(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->individualDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ml/neuralnet/twod/util/UnifiedDistanceMatrix;->averageDistances(Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;)[[D

    move-result-object p1

    return-object p1
.end method
