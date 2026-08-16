.class public Lcom/google/android/filament/VertexBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/VertexBuffer$b;,
        Lcom/google/android/filament/VertexBuffer$a;,
        Lcom/google/android/filament/VertexBuffer$c;
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
    iput-wide p1, p0, Lcom/google/android/filament/VertexBuffer;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/VertexBuffer;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic a(JIIIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/filament/VertexBuffer;->nBuilderAttribute(JIIIII)V

    return-void
.end method

.method public static bridge synthetic b(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/VertexBuffer;->nBuilderBufferCount(JI)V

    return-void
.end method

.method public static bridge synthetic c(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/VertexBuffer;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic d(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/VertexBuffer;->nBuilderEnableBufferObjects(JZ)V

    return-void
.end method

.method public static bridge synthetic e(JIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/VertexBuffer;->nBuilderNormalized(JIZ)V

    return-void
.end method

.method public static bridge synthetic f(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/VertexBuffer;->nBuilderVertexCount(JI)V

    return-void
.end method

.method public static bridge synthetic g()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/VertexBuffer;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic h(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/VertexBuffer;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderAttribute(JIIIII)V
.end method

.method private static native nBuilderBufferCount(JI)V
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderEnableBufferObjects(JZ)V
.end method

.method private static native nBuilderNormalized(JIZ)V
.end method

.method private static native nBuilderVertexCount(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetVertexCount(J)I
.end method

.method private static native nSetBufferAt(JJILjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetBufferAtDirect(JJIJIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetBufferObjectAt(JJIJ)V
.end method


# virtual methods
.method public i()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/VertexBuffer;->a:J

    return-void
.end method

.method public j()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/VertexBuffer;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed VertexBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/VertexBuffer;->nGetVertexCount(J)I

    move-result v0

    return v0
.end method

.method public l(Lcom/google/android/filament/Engine;IJI)V
    .locals 10
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p5

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;IJIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(Lcom/google/android/filament/Engine;IJIII)V
    .locals 10
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
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
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;IJIIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public n(Lcom/google/android/filament/Engine;IJIIILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 12
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
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
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p7, :cond_0

    move/from16 v9, p5

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move v4, p2

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/google/android/filament/VertexBuffer;->nSetBufferAtDirect(JJIJIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public o(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V
    .locals 8
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/filament/VertexBuffer;->q(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public p(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;II)V
    .locals 8
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/Buffer;
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/filament/VertexBuffer;->q(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public q(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 11
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/Buffer;
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
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-nez p5, :cond_0

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move v8, v4

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    move v4, p2

    move-object v5, p3

    move v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/VertexBuffer;->nSetBufferAt(JJILjava/nio/Buffer;IIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public r(Lcom/google/android/filament/Engine;ILcom/google/android/filament/BufferObject;)V
    .locals 7
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/BufferObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/google/android/filament/BufferObject;->h()J

    move-result-wide v5

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/VertexBuffer;->nSetBufferObjectAt(JJIJ)V

    return-void
.end method
