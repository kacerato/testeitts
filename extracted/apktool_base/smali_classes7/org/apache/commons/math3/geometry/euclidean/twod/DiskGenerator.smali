.class public Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 7

    const/4 v0, 0x0

    aget-object v1, p2, v0

    const/4 v2, 0x2

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v3, p2, v4

    aget-object v5, p1, v0

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object p2, p2, v2

    aget-object v2, p1, v4

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    new-instance p1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {p1, v0, v2, v3, v1}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object p1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    new-instance p1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    const-wide/16 v1, 0x0

    filled-new-array {v0}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object p1

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x3

    if-ge v3, v5, :cond_2

    new-instance p1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    move-object v3, v1

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DLorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    mul-double/2addr v2, v4

    filled-new-array {v0, v10}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-direct {p1, v1, v2, v3, v0}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object p1

    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    new-instance v3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    filled-new-array {v3, v5, v6}, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    new-instance v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    filled-new-array {v5, v6, v7}, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v7, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v7, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v2, v5, v2

    invoke-virtual {v2, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    aget-object v7, v3, v4

    invoke-virtual {v7, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v8, v5, v4

    invoke-virtual {v8, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    filled-new-array {v6, v2, v7}, [Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-direct {p0, v3, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-direct {p0, v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v2

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    aget-object v1, v5, v1

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v3, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    invoke-virtual {v1, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    new-instance v3, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v6}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v1}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    filled-new-array {v0, v10, p1}, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    invoke-direct {v3, v4, v1, v2, p1}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v3
.end method
