.class public Lcom/google/android/filament/SurfaceOrientation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/SurfaceOrientation$a;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/SurfaceOrientation;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic a(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderBuild(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JLjava/nio/Buffer;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderNormals(JLjava/nio/Buffer;II)V

    return-void
.end method

.method public static bridge synthetic c(JJII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderNormalsDirect(JJII)V

    return-void
.end method

.method public static bridge synthetic d(JLjava/nio/Buffer;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderPositions(JLjava/nio/Buffer;II)V

    return-void
.end method

.method public static bridge synthetic e(JJII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderPositionsDirect(JJII)V

    return-void
.end method

.method public static bridge synthetic f(JLjava/nio/Buffer;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTangents(JLjava/nio/Buffer;II)V

    return-void
.end method

.method public static bridge synthetic g(JJII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTangentsDirect(JJII)V

    return-void
.end method

.method public static bridge synthetic h(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTriangleCount(JI)V

    return-void
.end method

.method public static bridge synthetic i(JLjava/nio/Buffer;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTriangles16(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public static bridge synthetic j(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTriangles16Direct(JJI)V

    return-void
.end method

.method public static bridge synthetic k(JLjava/nio/Buffer;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTriangles32(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public static bridge synthetic l(JJI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderTriangles32Direct(JJI)V

    return-void
.end method

.method public static bridge synthetic m(JLjava/nio/Buffer;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderUVs(JLjava/nio/Buffer;II)V

    return-void
.end method

.method public static bridge synthetic n(JJII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderUVsDirect(JJII)V

    return-void
.end method

.method private static native nBuilderBuild(J)J
.end method

.method private static native nBuilderNormals(JLjava/nio/Buffer;II)V
.end method

.method private static native nBuilderNormalsDirect(JJII)V
.end method

.method private static native nBuilderPositions(JLjava/nio/Buffer;II)V
.end method

.method private static native nBuilderPositionsDirect(JJII)V
.end method

.method private static native nBuilderTangents(JLjava/nio/Buffer;II)V
.end method

.method private static native nBuilderTangentsDirect(JJII)V
.end method

.method private static native nBuilderTriangleCount(JI)V
.end method

.method private static native nBuilderTriangles16(JLjava/nio/Buffer;I)V
.end method

.method private static native nBuilderTriangles16Direct(JJI)V
.end method

.method private static native nBuilderTriangles32(JLjava/nio/Buffer;I)V
.end method

.method private static native nBuilderTriangles32Direct(JJI)V
.end method

.method private static native nBuilderUVs(JLjava/nio/Buffer;II)V
.end method

.method private static native nBuilderUVsDirect(JJII)V
.end method

.method private static native nBuilderVertexCount(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetQuatsAsFloat(JLjava/nio/Buffer;I)V
.end method

.method private static native nGetQuatsAsHalf(JLjava/nio/Buffer;I)V
.end method

.method private static native nGetQuatsAsShort(JLjava/nio/Buffer;I)V
.end method

.method private static native nGetQuatsAsShortDirect(JJI)V
.end method

.method private static native nGetVertexCount(J)I
.end method

.method public static bridge synthetic o(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/SurfaceOrientation;->nBuilderVertexCount(JI)V

    return-void
.end method

.method public static bridge synthetic p()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/SurfaceOrientation;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic q(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/SurfaceOrientation;->nDestroyBuilder(J)V

    return-void
.end method


# virtual methods
.method public r()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->nDestroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    return-void
.end method

.method public s()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed SurfaceOrientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Ljava/nio/Buffer;)V
    .locals 3
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/SurfaceOrientation;->nGetQuatsAsFloat(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public u(Ljava/nio/Buffer;)V
    .locals 3
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/SurfaceOrientation;->nGetQuatsAsHalf(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public v(JI)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/SurfaceOrientation;->nGetQuatsAsShortDirect(JJI)V

    return-void
.end method

.method public w(Ljava/nio/Buffer;)V
    .locals 3
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/filament/SurfaceOrientation;->nGetQuatsAsShort(JLjava/nio/Buffer;I)V

    return-void
.end method

.method public x()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->nGetVertexCount(J)I

    move-result v0

    return v0
.end method
