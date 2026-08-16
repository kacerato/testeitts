.class public Lcom/google/android/filament/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Renderer$b;,
        Lcom/google/android/filament/Renderer$c;,
        Lcom/google/android/filament/Renderer$a;
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x4


# instance fields
.field public final a:Lcom/google/android/filament/Engine;

.field public b:J

.field public c:Lcom/google/android/filament/Renderer$b;

.field public d:Lcom/google/android/filament/Renderer$c;

.field public e:Lcom/google/android/filament/Renderer$a;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/Engine;J)V
    .locals 0
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->a:Lcom/google/android/filament/Engine;

    iput-wide p2, p0, Lcom/google/android/filament/Renderer;->b:J

    return-void
.end method

.method private static native nBeginFrame(JJJ)Z
.end method

.method private static native nCopyFrame(JJIIIIIIIII)V
.end method

.method private static native nEndFrame(J)V
.end method

.method private static native nGetFrameToSkipCount(J)I
.end method

.method private static native nGetUserTime(J)D
.end method

.method private static native nReadPixels(JJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nReadPixelsEx(JJJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nRender(JJ)V
.end method

.method private static native nRenderStandaloneView(JJ)V
.end method

.method private static native nResetUserTime(J)V
.end method

.method private static native nSetClearOptions(JDDDDZZ)V
.end method

.method private static native nSetDesiredPresentationTime(JJ)V
.end method

.method private static native nSetDisplayInfo(JF)V
.end method

.method private static native nSetFrameRateOptions(JFFFI)V
.end method

.method private static native nSetPresentationTime(JJ)V
.end method

.method private static native nSetRenderingDeadline(JJ)V
.end method

.method private static native nSetVsyncTime(JJ)V
.end method

.method private static native nShouldRenderFrame(J)Z
.end method

.method private static native nSkipFrame(JJ)V
.end method

.method private static native nSkipNextFrames(JI)V
.end method


# virtual methods
.method public A(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Renderer;->nSkipNextFrames(JI)V

    return-void
.end method

.method public a(Lcom/google/android/filament/SwapChain;J)Z
    .locals 6
    .param p1    # Lcom/google/android/filament/SwapChain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->b()J

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Renderer;->nBeginFrame(JJJ)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Renderer;->b:J

    return-void
.end method

.method public c(Lcom/google/android/filament/SwapChain;Lcom/google/android/filament/w;Lcom/google/android/filament/w;I)V
    .locals 14
    .param p1    # Lcom/google/android/filament/SwapChain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->b()J

    move-result-wide v4

    iget v6, v0, Lcom/google/android/filament/w;->a:I

    iget v7, v0, Lcom/google/android/filament/w;->b:I

    iget v8, v0, Lcom/google/android/filament/w;->c:I

    iget v9, v0, Lcom/google/android/filament/w;->d:I

    iget v10, v1, Lcom/google/android/filament/w;->a:I

    iget v11, v1, Lcom/google/android/filament/w;->b:I

    iget v12, v1, Lcom/google/android/filament/w;->c:I

    iget v13, v1, Lcom/google/android/filament/w;->d:I

    move-wide v0, v2

    move-wide v2, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lcom/google/android/filament/Renderer;->nCopyFrame(JJIIIIIIIII)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nEndFrame(J)V

    return-void
.end method

.method public e()Lcom/google/android/filament/Renderer$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Renderer;->e:Lcom/google/android/filament/Renderer$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Renderer$a;

    invoke-direct {v0}, Lcom/google/android/filament/Renderer$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/Renderer;->e:Lcom/google/android/filament/Renderer$a;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/Renderer;->e:Lcom/google/android/filament/Renderer$a;

    return-object v0
.end method

.method public f()Lcom/google/android/filament/Renderer$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Renderer;->c:Lcom/google/android/filament/Renderer$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Renderer$b;

    invoke-direct {v0}, Lcom/google/android/filament/Renderer$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/Renderer;->c:Lcom/google/android/filament/Renderer$b;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/Renderer;->c:Lcom/google/android/filament/Renderer$b;

    return-object v0
.end method

.method public g()Lcom/google/android/filament/Engine;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Renderer;->a:Lcom/google/android/filament/Engine;

    return-object v0
.end method

.method public h()Lcom/google/android/filament/Renderer$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Renderer;->d:Lcom/google/android/filament/Renderer$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Renderer$c;

    invoke-direct {v0}, Lcom/google/android/filament/Renderer$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/Renderer;->d:Lcom/google/android/filament/Renderer$c;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/Renderer;->d:Lcom/google/android/filament/Renderer$c;

    return-object v0
.end method

.method public i()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nGetFrameToSkipCount(J)I

    move-result v0

    return v0
.end method

.method public j()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Renderer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Renderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nGetUserTime(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public l(Lcom/google/android/filament/SwapChain;Lcom/google/android/filament/w;Lcom/google/android/filament/w;I)V
    .locals 0
    .param p1    # Lcom/google/android/filament/SwapChain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/filament/Renderer;->c(Lcom/google/android/filament/SwapChain;Lcom/google/android/filament/w;Lcom/google/android/filament/w;I)V

    return-void
.end method

.method public m(IIIILcom/google/android/filament/Texture$g;)V
    .locals 20
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
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
    .param p5    # Lcom/google/android/filament/Texture$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v2

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/google/android/filament/Renderer;->a:Lcom/google/android/filament/Engine;

    invoke-virtual {v4}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v4

    iget-object v6, v0, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    move-object v10, v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    iget v12, v0, Lcom/google/android/filament/Texture$g;->d:I

    iget v13, v0, Lcom/google/android/filament/Texture$g;->e:I

    iget-object v6, v0, Lcom/google/android/filament/Texture$g;->b:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    iget v15, v0, Lcom/google/android/filament/Texture$g;->c:I

    iget v6, v0, Lcom/google/android/filament/Texture$g;->f:I

    move/from16 v16, v6

    iget-object v6, v0, Lcom/google/android/filament/Texture$g;->g:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    iget-object v6, v0, Lcom/google/android/filament/Texture$g;->j:Ljava/lang/Object;

    move-object/from16 v18, v6

    iget-object v0, v0, Lcom/google/android/filament/Texture$g;->k:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v2 .. v19}, Lcom/google/android/filament/Renderer;->nReadPixels(JJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    move-object/from16 v1, p0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public n(Lcom/google/android/filament/RenderTarget;IIIILcom/google/android/filament/Texture$g;)V
    .locals 22
    .param p1    # Lcom/google/android/filament/RenderTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
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
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # Lcom/google/android/filament/Texture$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v2

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/google/android/filament/Renderer;->a:Lcom/google/android/filament/Engine;

    invoke-virtual {v4}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v6

    iget-object v8, v0, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    move-object v12, v8

    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    iget v14, v0, Lcom/google/android/filament/Texture$g;->d:I

    iget v15, v0, Lcom/google/android/filament/Texture$g;->e:I

    iget-object v8, v0, Lcom/google/android/filament/Texture$g;->b:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    iget v8, v0, Lcom/google/android/filament/Texture$g;->c:I

    move/from16 v17, v8

    iget v8, v0, Lcom/google/android/filament/Texture$g;->f:I

    move/from16 v18, v8

    iget-object v8, v0, Lcom/google/android/filament/Texture$g;->g:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    iget-object v8, v0, Lcom/google/android/filament/Texture$g;->j:Ljava/lang/Object;

    move-object/from16 v20, v8

    iget-object v0, v0, Lcom/google/android/filament/Texture$g;->k:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v2 .. v21}, Lcom/google/android/filament/Renderer;->nReadPixelsEx(JJJIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    :cond_1
    move-object/from16 v1, p0

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public o(Lcom/google/android/filament/View;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Renderer;->nRender(JJ)V

    return-void
.end method

.method public p(Lcom/google/android/filament/View;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Renderer;->nRenderStandaloneView(JJ)V

    return-void
.end method

.method public q()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nResetUserTime(J)V

    return-void
.end method

.method public r(Lcom/google/android/filament/Renderer$a;)V
    .locals 12
    .param p1    # Lcom/google/android/filament/Renderer$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->e:Lcom/google/android/filament/Renderer$a;

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    iget-object v2, p1, Lcom/google/android/filament/Renderer$a;->a:[D

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    const/4 v7, 0x2

    aget-wide v7, v2, v7

    const/4 v9, 0x3

    aget-wide v9, v2, v9

    iget-boolean v11, p1, Lcom/google/android/filament/Renderer$a;->b:Z

    iget-boolean p1, p1, Lcom/google/android/filament/Renderer$a;->c:Z

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move v10, v11

    move v11, p1

    invoke-static/range {v0 .. v11}, Lcom/google/android/filament/Renderer;->nSetClearOptions(JDDDDZZ)V

    return-void
.end method

.method public s(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Renderer;->nSetDesiredPresentationTime(JJ)V

    return-void
.end method

.method public t(Lcom/google/android/filament/Renderer$b;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/Renderer$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->c:Lcom/google/android/filament/Renderer$b;

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    iget p1, p1, Lcom/google/android/filament/Renderer$b;->a:F

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Renderer;->nSetDisplayInfo(JF)V

    return-void
.end method

.method public u(Lcom/google/android/filament/Renderer$c;)V
    .locals 6
    .param p1    # Lcom/google/android/filament/Renderer$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->d:Lcom/google/android/filament/Renderer$c;

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/Renderer$c;->a:F

    iget v3, p1, Lcom/google/android/filament/Renderer$c;->b:F

    iget v4, p1, Lcom/google/android/filament/Renderer$c;->c:F

    iget v5, p1, Lcom/google/android/filament/Renderer$c;->d:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Renderer;->nSetFrameRateOptions(JFFFI)V

    return-void
.end method

.method public v(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Renderer;->nSetPresentationTime(JJ)V

    return-void
.end method

.method public w(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Renderer;->nSetRenderingDeadline(JJ)V

    return-void
.end method

.method public x(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Renderer;->nSetVsyncTime(JJ)V

    return-void
.end method

.method public y()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nShouldRenderFrame(J)Z

    move-result v0

    return v0
.end method

.method public z(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Renderer;->nSkipFrame(JJ)V

    return-void
.end method
