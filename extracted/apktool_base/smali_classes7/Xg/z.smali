.class public LXg/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LXg/o;
    .locals 1

    new-instance v0, LXg/e;

    invoke-direct {v0}, LXg/e;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/nio/IntBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)LXg/o;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "indices",
            "vertices",
            "texCoords",
            "normals"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    div-int/2addr v2, v1

    invoke-static {}, LXg/z;->a()LXg/o;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v2, :cond_0

    mul-int/lit8 v7, v5, 0x3

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p1, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    add-int/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-interface {v3, v8, v9, v6}, LXg/D;->y(FFF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    div-int/2addr v2, v6

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_1

    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {p2, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/2addr v7, p1

    invoke-virtual {p2, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-interface {v3, v8, v7}, LXg/D;->G(FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    div-int/2addr v2, v1

    move v5, v4

    :goto_2
    if-ge v5, v2, :cond_2

    mul-int/lit8 v7, v5, 0x3

    invoke-virtual {p3, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p3, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    add-int/2addr v7, v6

    invoke-virtual {p3, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v7

    invoke-interface {v3, v8, v9, v7}, LXg/D;->r(FFF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_3
    if-ge v2, v0, :cond_5

    mul-int/lit8 v5, v2, 0x3

    invoke-virtual {p0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    new-array v9, v1, [I

    aput v7, v9, v4

    aput v8, v9, p1

    aput v5, v9, v6

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    move-object v7, v9

    goto :goto_4

    :cond_3
    move-object v7, v5

    :goto_4
    if-eqz p3, :cond_4

    move-object v5, v9

    :cond_4
    invoke-interface {v3, v9, v7, v5}, LXg/D;->w([I[I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object v3
.end method
