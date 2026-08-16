.class Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Marker"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31a013708eff5b3fL


# instance fields
.field private desiredMarkerIncrement:D

.field private desiredMarkerPosition:D

.field private index:I

.field private intMarkerPosition:D

.field private transient linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private markerHeight:D

.field private transient next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

.field private final nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

.field private transient previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/NevilleInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 5
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    .line 6
    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    return-void
.end method

.method private constructor <init>(DDDD)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>()V

    .line 8
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    .line 9
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    .line 10
    iput-wide p5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    .line 11
    iput-wide p7, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    return-void
.end method

.method public synthetic constructor <init>(DDDDLorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDD)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide v0
.end method

.method public static synthetic access$502(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;D)D
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide p1
.end method

.method public static synthetic access$600(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)D
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->estimate()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$700(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V

    return-void
.end method

.method public static synthetic access$800(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->updateDesiredPosition()V

    return-void
.end method

.method private difference()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private estimate()D
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->difference()D

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v6, v5, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double v10, v6, v8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    const/4 v11, 0x0

    const/4 v14, 0x1

    if-lez v10, :cond_0

    move v10, v14

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    iget-object v15, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v1, v15, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    sub-double v17, v1, v8

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpg-double v17, v17, v19

    if-gez v17, :cond_1

    move/from16 v17, v14

    goto :goto_1

    :cond_1
    move/from16 v17, v11

    :goto_1
    cmpl-double v12, v3, v12

    if-ltz v12, :cond_2

    if-nez v10, :cond_3

    :cond_2
    cmpg-double v10, v3, v19

    if-gtz v10, :cond_7

    if-eqz v17, :cond_7

    :cond_3
    const-wide/16 v12, 0x0

    cmpl-double v3, v3, v12

    if-ltz v3, :cond_4

    move v3, v14

    :goto_2
    const/4 v10, 0x3

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    :goto_3
    new-array v4, v10, [D

    aput-wide v1, v4, v11

    aput-wide v8, v4, v14

    const/4 v1, 0x2

    aput-wide v6, v4, v1

    iget-wide v6, v15, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v1, v5, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    new-array v5, v10, [D

    aput-wide v6, v5, v11

    aput-wide v12, v5, v14

    const/4 v6, 0x2

    aput-wide v1, v5, v6

    int-to-double v1, v3

    add-double/2addr v8, v1

    iget-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->nonLinear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v1

    invoke-interface {v1, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->isEstimateBad([DD)Z

    move-result v1

    if-eqz v1, :cond_6

    aget-wide v1, v4, v14

    sub-double v6, v8, v1

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-lez v6, :cond_5

    move/from16 v16, v14

    goto :goto_4

    :cond_5
    const/16 v16, -0x1

    :goto_4
    add-int/lit8 v16, v16, 0x1

    aget-wide v6, v4, v16

    const/4 v4, 0x2

    new-array v10, v4, [D

    aput-wide v1, v10, v11

    aput-wide v6, v10, v14

    aget-wide v1, v5, v14

    aget-wide v6, v5, v16

    new-array v4, v4, [D

    aput-wide v1, v4, v11

    aput-wide v6, v4, v14

    filled-new-array {v4}, [[D

    move-result-object v1

    invoke-static {v10, v1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    iget-object v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    invoke-interface {v1, v10, v4}, Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v1

    invoke-interface {v1, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    :cond_6
    invoke-direct {v0, v3}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->incrementPosition(I)V

    :cond_7
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    return-wide v1
.end method

.method private incrementPosition(I)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    int-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    return-void
.end method

.method private index(I)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    return-object p0
.end method

.method private isEstimateBad([DD)Z
    .locals 3

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    cmpg-double v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    cmpl-double p1, p2, v1

    if-ltz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private next(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    return-object p0
.end method

.method private previous(Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;)Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iput-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    new-instance p1, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;

    invoke-direct {p1}, Lorg/apache/commons/math3/analysis/interpolation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->linear:Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;

    return-void
.end method

.method private updateDesiredPosition()V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 10

    new-instance v9, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v7, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;-><init>(DDDD)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v2, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v2, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    iget-object v3, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v3, v3, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v2, v2, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    iget-object p1, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget p1, p1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 14

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    iget-object v8, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v8, v8, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v8, v8

    iget-object v10, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v10, v10, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v10, v10

    const/4 v12, 0x6

    new-array v12, v12, [D

    const/4 v13, 0x0

    aput-wide v0, v12, v13

    const/4 v0, 0x1

    aput-wide v2, v12, v0

    const/4 v0, 0x2

    aput-wide v4, v12, v0

    const/4 v0, 0x3

    aput-wide v6, v12, v0

    const/4 v0, 0x4

    aput-wide v8, v12, v0

    const/4 v0, 0x5

    aput-wide v10, v12, v0

    invoke-static {v12}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->intMarkerPosition:D

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerPosition:D

    const/4 v4, 0x2

    invoke-static {v0, v1, v4}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->markerHeight:D

    invoke-static {v5, v6, v4}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->desiredMarkerIncrement:D

    invoke-static {v6, v7, v4}, Lorg/apache/commons/math3/util/Precision;->round(DI)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->previous:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->next:Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;

    iget v1, v1, Lorg/apache/commons/math3/stat/descriptive/rank/PSquarePercentile$Marker;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, v0

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "index=%.0f,n=%.0f,np=%.2f,q=%.2f,dn=%.2f,prev=%d,next=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
