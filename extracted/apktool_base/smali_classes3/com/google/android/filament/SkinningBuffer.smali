.class public Lcom/google/android/filament/SkinningBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/SkinningBuffer$a;
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
    iput-wide p1, p0, Lcom/google/android/filament/SkinningBuffer;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/SkinningBuffer;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic a(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/SkinningBuffer;->nBuilderBoneCount(JI)V

    return-void
.end method

.method public static bridge synthetic b(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/SkinningBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/SkinningBuffer;->nBuilderInitialize(JZ)V

    return-void
.end method

.method public static bridge synthetic d()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/SkinningBuffer;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic e(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/SkinningBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBoneCount(JI)V
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderInitialize(JZ)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetBoneCount(J)I
.end method

.method private static native nSetBonesAsMatrices(JJLjava/nio/Buffer;III)I
.end method

.method private static native nSetBonesAsMatricesDirect(JJJIII)I
.end method

.method private static native nSetBonesAsQuaternions(JJLjava/nio/Buffer;III)I
.end method


# virtual methods
.method public f()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->a:J

    return-void
.end method

.method public g()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/SkinningBuffer;->nGetBoneCount(J)I

    move-result v0

    return v0
.end method

.method public h()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed IndexBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lcom/google/android/filament/Engine;JIII)V
    .locals 9
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->a:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/google/android/filament/SkinningBuffer;->nSetBonesAsMatricesDirect(JJJIII)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public j(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;II)V
    .locals 8
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->a:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/SkinningBuffer;->nSetBonesAsMatrices(JJLjava/nio/Buffer;III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public k(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;II)V
    .locals 8
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/SkinningBuffer;->a:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/SkinningBuffer;->nSetBonesAsQuaternions(JJLjava/nio/Buffer;III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method
