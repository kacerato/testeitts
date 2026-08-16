.class public Lcom/ardor3d/intersection/IntersectionRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _distances:[D

.field private final _normals:[Lcom/ardor3d/math/Vector3;

.field private final _points:[Lcom/ardor3d/math/Vector3;

.field private final _primitives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([D[Lcom/ardor3d/math/Vector3;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([D[Lcom/ardor3d/math/Vector3;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[",
            "Lcom/ardor3d/math/Vector3;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ardor3d/intersection/IntersectionRecord;-><init>([D[Lcom/ardor3d/math/Vector3;[Lcom/ardor3d/math/Vector3;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>([D[Lcom/ardor3d/math/Vector3;[Lcom/ardor3d/math/Vector3;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[",
            "Lcom/ardor3d/math/Vector3;",
            "[",
            "Lcom/ardor3d/math/Vector3;",
            "Ljava/util/List<",
            "Lcom/ardor3d/intersection/PrimitiveKey;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_0

    array-length v0, p2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_distances:[D

    .line 6
    iput-object p2, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_points:[Lcom/ardor3d/math/Vector3;

    .line 7
    iput-object p3, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_normals:[Lcom/ardor3d/math/Vector3;

    .line 8
    iput-object p4, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_primitives:Ljava/util/List;

    return-void

    .line 9
    :cond_1
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    const-string p2, "All arguments must have an equal number of elements."

    invoke-direct {p1, p2}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getClosestDistance()D
    .locals 8

    iget-object v0, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_distances:[D

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, v0, v4

    cmpg-double v7, v5, v1

    if-gez v7, :cond_0

    move-wide v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getClosestIntersection()I
    .locals 8

    iget-object v0, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_distances:[D

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    array-length v0, v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v4, v1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v5, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_distances:[D

    aget-wide v6, v5, v0

    cmpg-double v5, v6, v2

    if-gez v5, :cond_0

    move v4, v0

    move-wide v2, v6

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    return v1
.end method

.method public getFurthestIntersection()I
    .locals 8

    iget-object v0, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_distances:[D

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    array-length v0, v0

    const-wide/16 v2, 0x1

    move v4, v1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v5, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_distances:[D

    aget-wide v6, v5, v0

    cmpl-double v5, v6, v2

    if-lez v5, :cond_0

    move v4, v0

    move-wide v2, v6

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    return v1
.end method

.method public getIntersectionDistance(I)D
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_distances:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getIntersectionNormal(I)Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_normals:[Lcom/ardor3d/math/Vector3;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getIntersectionPoint(I)Lcom/ardor3d/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_points:[Lcom/ardor3d/math/Vector3;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getIntersectionPrimitive(I)Lcom/ardor3d/intersection/PrimitiveKey;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_primitives:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/intersection/PrimitiveKey;

    return-object p1
.end method

.method public getNumberOfIntersections()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/intersection/IntersectionRecord;->_points:[Lcom/ardor3d/math/Vector3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method
