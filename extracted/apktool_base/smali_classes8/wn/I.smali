.class public Lwn/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([F[F[FI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "a",
            "verts",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, p3

    add-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    add-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    add-int/2addr p3, v0

    aget p2, p2, p3

    add-float/2addr p1, p2

    aput p1, p0, v0

    return-void
.end method

.method public static b([FILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "n",
            "in",
            "m"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    aput v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    aput v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p3, p3, 0x2

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p2

    aput p2, p0, p1

    return-void
.end method

.method public static c([FI[FI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "n",
            "in",
            "m"
        }
    .end annotation

    aget v0, p2, p3

    aput v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    aget v1, p2, v1

    aput v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p3, p3, 0x2

    aget p2, p2, p3

    aput p2, p0, p1

    return-void
.end method

.method public static d([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lwn/I;->b([FILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    return-void
.end method

.method public static e([F[F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lwn/I;->c([FI[FI)V

    return-void
.end method

.method public static f([F[FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lwn/I;->c([FI[FI)V

    return-void
.end method

.method public static g([F[F[F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dest",
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x1

    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p2, v2

    mul-float/2addr v1, v3

    aget v4, p1, v2

    aget v5, p2, v0

    mul-float/2addr v5, v4

    sub-float/2addr v1, v5

    const/4 v5, 0x0

    aput v1, p0, v5

    aget v1, p2, v5

    mul-float/2addr v4, v1

    aget v5, p1, v5

    mul-float/2addr v3, v5

    sub-float/2addr v4, v3

    aput v4, p0, v0

    aget p2, p2, v0

    mul-float/2addr v5, p2

    aget p1, p1, v0

    mul-float/2addr p1, v1

    sub-float/2addr v5, p1

    aput v5, p0, v2

    return-void
.end method

.method public static h([F[F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget v0, p1, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method

.method public static i([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p0, v0

    return-void
.end method

.method public static j([F[FI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr p2, v0

    aget p1, p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p0, v0

    return-void
.end method

.method public static k([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, p0, v0

    return-void
.end method

.method public static l([F[FI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    add-int/2addr p2, v0

    aget p1, p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, p0, v0

    return-void
.end method

.method public static m([F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p0, v3

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v4

    double-to-float v1, v6

    aget v4, p0, v0

    mul-float/2addr v4, v1

    aput v4, p0, v0

    aget v0, p0, v2

    mul-float/2addr v0, v1

    aput v0, p0, v2

    aget v0, p0, v3

    mul-float/2addr v0, v1

    aput v0, p0, v3

    return-void
.end method

.method public static n([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "verts",
            "i",
            "j"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p0, v1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p2

    add-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    sub-float/2addr p2, p1

    aput p2, p0, v0

    return-void
.end method

.method public static o([F[FII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "verts",
            "i",
            "j"
        }
    .end annotation

    aget v0, p1, p2

    aget v1, p1, p3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p0, v1

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    add-int/lit8 v1, p3, 0x1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v0, 0x2

    add-int/2addr p2, v0

    aget p2, p1, p2

    add-int/2addr p3, v0

    aget p1, p1, p3

    sub-float/2addr p2, p1

    aput p2, p0, v0

    return-void
.end method

.method public static p([F[F[FI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e0",
            "i",
            "verts",
            "j"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, p3

    sub-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    sub-float/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    add-int/2addr p3, v0

    aget p2, p2, p3

    sub-float/2addr p1, p2

    aput p1, p0, v0

    return-void
.end method
