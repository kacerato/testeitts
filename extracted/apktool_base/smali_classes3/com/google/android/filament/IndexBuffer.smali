.class public Lcom/google/android/filament/IndexBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/IndexBuffer$a;
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
    iput-wide p1, p0, Lcom/google/android/filament/IndexBuffer;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/IndexBuffer;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic a(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/IndexBuffer;->nBuilderBufferType(JI)V

    return-void
.end method

.method public static bridge synthetic b(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/IndexBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/IndexBuffer;->nBuilderIndexCount(JI)V

    return-void
.end method

.method public static bridge synthetic d()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/IndexBuffer;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic e(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/IndexBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBufferType(JI)V
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderIndexCount(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetIndexCount(J)I
.end method

.method private static native nSetBuffer(JJLjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetBufferDirect(JJJIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method


# virtual methods
.method public f()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/IndexBuffer;->a:J

    return-void
.end method

.method public g()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/IndexBuffer;->nGetIndexCount(J)I

    move-result v0

    return v0
.end method

.method public h()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/IndexBuffer;->a:J

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

.method public i(Lcom/google/android/filament/Engine;JI)V
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

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/filament/IndexBuffer;->k(Lcom/google/android/filament/Engine;JIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Lcom/google/android/filament/Engine;JIII)V
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
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/filament/IndexBuffer;->k(Lcom/google/android/filament/Engine;JIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Lcom/google/android/filament/Engine;JIIILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 11
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
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p6, :cond_0

    move v8, p4

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move-wide v4, p2

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/IndexBuffer;->nSetBufferDirect(JJJIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public l(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V
    .locals 7
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/filament/IndexBuffer;->n(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;II)V
    .locals 7
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
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/filament/IndexBuffer;->n(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public n(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 10
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
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-nez p4, :cond_0

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, p4

    :goto_0
    move-object v4, p2

    move v6, p3

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/google/android/filament/IndexBuffer;->nSetBuffer(JJLjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method
