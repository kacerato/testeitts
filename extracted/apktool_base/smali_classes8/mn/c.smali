.class public Lmn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljn/G;Ljn/q;FI)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "tile",
            "value",
            "comp"
        }
    .end annotation

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Ljn/G;->e:I

    if-ge v1, v3, :cond_1

    add-int/lit8 v4, v1, 0x1

    rem-int v3, v4, v3

    iget-object v5, p1, Ljn/q;->b:[F

    iget-object v6, p0, Ljn/G;->b:[I

    aget v7, v6, v1

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v7, p3

    aget v7, v5, v7

    sub-float/2addr v7, p2

    aget v3, v6, v3

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, p3

    aget v3, v5, v3

    sub-float/2addr v3, p2

    mul-float/2addr v7, v7

    mul-float/2addr v3, v3

    add-float/2addr v7, v3

    cmpg-float v3, v7, v0

    if-gez v3, :cond_0

    move v2, v1

    move v0, v7

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static b(Ljn/G;Ljn/G;Ljn/q;Ljn/q;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "neighbour",
            "tile",
            "neighbourTile"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ljn/G;->e:I

    if-ge v1, v2, :cond_4

    add-int/lit8 v3, v1, 0x1

    rem-int v2, v3, v2

    move v4, v0

    :goto_1
    iget v5, p1, Ljn/G;->e:I

    if-ge v4, v5, :cond_3

    add-int/lit8 v6, v4, 0x1

    rem-int v5, v6, v5

    iget-object v7, p0, Ljn/G;->b:[I

    aget v8, v7, v1

    iget-object v9, p1, Ljn/G;->b:[I

    aget v5, v9, v5

    if-ne v8, v5, :cond_0

    aget v10, v7, v2

    aget v11, v9, v4

    if-eq v10, v11, :cond_1

    :cond_0
    aget v4, v9, v4

    if-ne v8, v4, :cond_2

    aget v4, v7, v2

    if-ne v4, v5, :cond_2

    :cond_1
    return v1

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_2
    iget v2, p0, Ljn/G;->e:I

    if-ge v1, v2, :cond_9

    add-int/lit8 v3, v1, 0x1

    rem-int v2, v3, v2

    move v4, v0

    :goto_3
    iget v5, p1, Ljn/G;->e:I

    if-ge v4, v5, :cond_8

    add-int/lit8 v6, v4, 0x1

    rem-int v5, v6, v5

    iget-object v7, p2, Ljn/q;->b:[F

    iget-object v8, p0, Ljn/G;->b:[I

    aget v8, v8, v1

    iget-object v9, p3, Ljn/q;->b:[F

    iget-object v10, p1, Ljn/G;->b:[I

    aget v10, v10, v5

    invoke-static {v7, v8, v9, v10}, Lmn/c;->c([FI[FI)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p2, Ljn/q;->b:[F

    iget-object v8, p0, Ljn/G;->b:[I

    aget v8, v8, v2

    iget-object v9, p3, Ljn/q;->b:[F

    iget-object v10, p1, Ljn/G;->b:[I

    aget v10, v10, v4

    invoke-static {v7, v8, v9, v10}, Lmn/c;->c([FI[FI)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget-object v7, p2, Ljn/q;->b:[F

    iget-object v8, p0, Ljn/G;->b:[I

    aget v8, v8, v1

    iget-object v9, p3, Ljn/q;->b:[F

    iget-object v10, p1, Ljn/G;->b:[I

    aget v4, v10, v4

    invoke-static {v7, v8, v9, v4}, Lmn/c;->c([FI[FI)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p2, Ljn/q;->b:[F

    iget-object v7, p0, Ljn/G;->b:[I

    aget v7, v7, v2

    iget-object v8, p3, Ljn/q;->b:[F

    iget-object v9, p1, Ljn/G;->b:[I

    aget v5, v9, v5

    invoke-static {v4, v7, v8, v5}, Lmn/c;->c([FI[FI)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    return v1

    :cond_7
    move v4, v6

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_2

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public static c([FI[FI)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "v",
            "verts2",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    mul-int/lit8 v4, p1, 0x3

    add-int/2addr v4, v1

    aget v4, p0, v4

    mul-int/2addr v3, p3

    add-int/2addr v3, v2

    aget v2, p2, v3

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
