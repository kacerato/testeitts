.class public Lcom/google/android/filament/InstanceBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/InstanceBuffer$a;
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
    iput-wide p1, p0, Lcom/google/android/filament/InstanceBuffer;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/InstanceBuffer;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/InstanceBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JLjava/nio/Buffer;II)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/InstanceBuffer;->nBuilderLocalTransforms(JLjava/nio/Buffer;II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(JJII)I
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/InstanceBuffer;->nBuilderLocalTransformsDirect(JJII)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(I)J
    .locals 2

    invoke-static {p0}, Lcom/google/android/filament/InstanceBuffer;->nCreateBuilder(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic e(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/InstanceBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderLocalTransforms(JLjava/nio/Buffer;II)I
.end method

.method private static native nBuilderLocalTransformsDirect(JJII)I
.end method

.method private static native nCreateBuilder(I)J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetInstanceCount(J)I
.end method

.method private static native nSetLocalTransforms(JLjava/nio/Buffer;III)I
.end method

.method private static native nSetLocalTransformsDirect(JJIII)I
.end method


# virtual methods
.method public f()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/InstanceBuffer;->a:J

    return-void
.end method

.method public g()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/InstanceBuffer;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/InstanceBuffer;->nGetInstanceCount(J)I

    move-result v0

    return v0
.end method

.method public h()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/InstanceBuffer;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed InstanceBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(JIII)V
    .locals 7
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/InstanceBuffer;->a:J

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/InstanceBuffer;->nSetLocalTransformsDirect(JJIII)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public j(Ljava/nio/Buffer;II)V
    .locals 6
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/InstanceBuffer;->a:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/InstanceBuffer;->nSetLocalTransforms(JLjava/nio/Buffer;III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method
