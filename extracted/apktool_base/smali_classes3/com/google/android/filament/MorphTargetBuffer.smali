.class public Lcom/google/android/filament/MorphTargetBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/MorphTargetBuffer$a;
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
    iput-wide p1, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderCount(JI)V

    return-void
.end method

.method public static bridge synthetic c(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderEnableCustomMorphing(JZ)V

    return-void
.end method

.method public static bridge synthetic d(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderVertexCount(JI)V

    return-void
.end method

.method public static bridge synthetic e(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderWithPositions(JZ)V

    return-void
.end method

.method public static bridge synthetic f(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/MorphTargetBuffer;->nBuilderWithTangents(JZ)V

    return-void
.end method

.method public static bridge synthetic g()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/MorphTargetBuffer;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic h(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/MorphTargetBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderCount(JI)V
.end method

.method private static native nBuilderEnableCustomMorphing(JZ)V
.end method

.method private static native nBuilderVertexCount(JI)V
.end method

.method private static native nBuilderWithPositions(JZ)V
.end method

.method private static native nBuilderWithTangents(JZ)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetCount(J)I
.end method

.method private static native nGetVertexCount(J)I
.end method

.method private static native nHasPositions(J)Z
.end method

.method private static native nHasTangents(J)Z
.end method

.method private static native nIsCustomMorphingEnabled(J)Z
.end method

.method private static native nSetPositionsAt(JJI[FI)I
.end method

.method private static native nSetTangentsAt(JJI[SI)I
.end method


# virtual methods
.method public i()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    return-void
.end method

.method public j()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/MorphTargetBuffer;->nGetCount(J)I

    move-result v0

    return v0
.end method

.method public k()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed MorphTargetBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/MorphTargetBuffer;->nGetVertexCount(J)I

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/MorphTargetBuffer;->nHasPositions(J)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/MorphTargetBuffer;->nHasTangents(J)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/MorphTargetBuffer;->nIsCustomMorphingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public p(Lcom/google/android/filament/Engine;I[FI)V
    .locals 7
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7dL
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MorphTargetBuffer;->nSetPositionsAt(JJI[FI)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public q(Lcom/google/android/filament/Engine;I[SI)V
    .locals 7
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # [S
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7dL
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/MorphTargetBuffer;->a:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MorphTargetBuffer;->nSetTangentsAt(JJI[SI)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method
