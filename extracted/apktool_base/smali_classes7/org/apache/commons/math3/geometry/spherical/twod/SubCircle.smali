.class public Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-void
.end method


# virtual methods
.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v3

    cmpg-double v3, v1, v3

    const/4 v4, 0x0

    if-ltz v3, :cond_3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v7

    sub-double/2addr v5, v7

    cmpl-double v1, v1, v5

    if-lez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->split(Lorg/apache/commons/math3/geometry/spherical/oned/Arc;)Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getPlus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->getMinus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    move-result-object p1

    new-instance v2, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    if-nez v1, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    invoke-direct {v4, v0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    :goto_1
    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object v2

    :cond_3
    :goto_2
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    invoke-direct {p1, v4, v4}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    return-object p1
.end method
