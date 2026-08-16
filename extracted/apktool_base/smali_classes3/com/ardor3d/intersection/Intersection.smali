.class public abstract Lcom/ardor3d/intersection/Intersection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intersection([Lcom/ardor3d/math/Vector3;[Lcom/ardor3d/math/Vector3;)Z
    .locals 12

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_1

    goto :goto_2

    :cond_0
    array-length v0, p1

    if-eq v0, v1, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    :cond_1
    array-length v0, p1

    if-eq v0, v1, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    aget-object v6, p0, v2

    aget-object v7, p0, v1

    aget-object v8, p0, v5

    aget-object v9, p1, v2

    aget-object v10, p1, v1

    aget-object v11, p1, v5

    invoke-static/range {v6 .. v11}, Lcom/ardor3d/intersection/TriangleTriangleIntersect;->intersectTriTri(Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;Lcom/ardor3d/math/Vector3;)Z

    move-result p0

    return p0

    :cond_4
    return v2

    :cond_5
    :goto_0
    array-length v0, p1

    if-eq v0, v1, :cond_6

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_6

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    :goto_1
    array-length v0, p1

    if-eq v0, v1, :cond_8

    :goto_2
    return v2

    :cond_8
    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/ardor3d/math/Vector3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
