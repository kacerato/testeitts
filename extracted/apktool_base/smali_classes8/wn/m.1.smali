.class public Lwn/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([F[FF)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bmin",
            "bmax",
            "cs"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p0, v0

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    aget p0, p0, v2

    sub-float/2addr p1, p0

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p0, p1

    filled-new-array {v1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static c([F[FFII)[I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bmin",
            "bmax",
            "cs",
            "tileSizeX",
            "tileSizeZ"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lwn/m;->b([F[FF)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 p2, 0x1

    aget p0, p0, p2

    add-int/2addr p1, p3

    sub-int/2addr p1, p2

    div-int/2addr p1, p3

    add-int/2addr p0, p4

    sub-int/2addr p0, p2

    div-int/2addr p0, p4

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "v0",
            "v1",
            "v2",
            "norm"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [F

    new-array v2, v0, [F

    mul-int/2addr p2, v0

    mul-int/2addr p1, v0

    invoke-static {v1, p0, p2, p1}, Lwn/I;->n([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    mul-int/2addr p3, v0

    invoke-static {v2, p0, p3, p1}, Lwn/I;->n([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    invoke-static {p4, v1, v2}, Lwn/I;->g([F[F[F)V

    invoke-static {p4}, Lwn/I;->m([F)V

    return-void
.end method

.method public static e(Lwn/N;FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I[II[I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "walkableSlopeAngle",
            "verts",
            "nv",
            "tris",
            "nt",
            "areas"
        }
    .end annotation

    const/high16 p0, 0x43340000    # 180.0f

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/4 p1, 0x3

    new-array p1, p1, [F

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p5, :cond_1

    mul-int/lit8 v1, v0, 0x3

    aget v2, p4, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p4, v3

    add-int/lit8 v1, v1, 0x2

    aget v1, p4, v1

    invoke-static {p2, v2, v3, v1, p1}, Lwn/m;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    const/4 v1, 0x1

    aget v1, p1, v1

    cmpg-float v1, v1, p0

    if-gtz v1, :cond_0

    aput p3, p6, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static f(Lwn/N;FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;ILwn/a;)[I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "walkableSlopeAngle",
            "verts",
            "tris",
            "nt",
            "areaMod"
        }
    .end annotation

    new-array p0, p4, [I

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {p3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    invoke-static {p2, v3, v4, v2, v0}, Lwn/m;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;III[F)V

    const/4 v2, 0x1

    aget v2, v0, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    aget v2, p0, v1

    invoke-virtual {p5, v2}, Lwn/a;->a(I)I

    move-result v2

    aput v2, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a([FI[F[F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "nv",
            "bmin",
            "bmax"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    aput v2, p3, v1

    aget v2, p1, v1

    aput v2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_1
    if-ge v1, p2, :cond_2

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_1

    aget v4, p3, v3

    mul-int/lit8 v5, v1, 0x3

    add-int/2addr v5, v3

    aget v6, p1, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, p3, v3

    aget v4, p4, v3

    aget v5, p1, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, p4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
