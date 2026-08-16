.class public Lcom/google/android/filament/RenderableManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/RenderableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderableManager$a$a;,
        Lcom/google/android/filament/RenderableManager$a$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/RenderableManager$a$a;

.field public final b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/filament/RenderableManager;->D(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    new-instance p1, Lcom/google/android/filament/RenderableManager$a$a;

    invoke-direct {p1, v0, v1}, Lcom/google/android/filament/RenderableManager$a$a;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/filament/RenderableManager$a;->a:Lcom/google/android/filament/RenderableManager$a$a;

    return-void
.end method


# virtual methods
.method public A(I)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->A(JI)V

    return-object p0
.end method

.method public B(ILjava/nio/Buffer;)Lcom/google/android/filament/RenderableManager$a;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/android/filament/RenderableManager;->B(JILjava/nio/Buffer;I)I

    move-result p1

    if-ltz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public C(Lcom/google/android/filament/SkinningBuffer;II)Lcom/google/android/filament/RenderableManager$a;
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/SkinningBuffer;->h()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/RenderableManager;->C(JJII)V

    return-object p0
.end method

.method public a(II)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7fffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->a(JII)V

    return-object p0
.end method

.method public b(Lcom/google/android/filament/Box;)Lcom/google/android/filament/RenderableManager$a;
    .locals 10
    .param p1    # Lcom/google/android/filament/Box;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v8

    aget v8, v8, v3

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v3

    aget v9, v3, v5

    invoke-virtual {p1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object p1

    aget v7, p1, v7

    move v3, v4

    move v4, v6

    move v5, v8

    move v6, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->b(JFFFFFF)V

    return-object p0
.end method

.method public c(Lcom/google/android/filament/Engine;I)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/filament/RenderableManager;->c(JJI)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t create Renderable component for entity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", see log."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Z)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->d(JZ)V

    return-object p0
.end method

.method public e(I)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->e(JI)V

    return-object p0
.end method

.method public f(Z)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->f(JZ)V

    return-object p0
.end method

.method public g(Z)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->g(JZ)V

    return-object p0
.end method

.method public h(Z)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->h(JZ)V

    return-object p0
.end method

.method public i(ILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;)Lcom/google/android/filament/RenderableManager$a;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v3

    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v4

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/RenderableManager;->i(JIIJ)V

    return-object p0
.end method

.method public j(ILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;II)Lcom/google/android/filament/RenderableManager$a;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/VertexBuffer;
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v3

    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v4

    move v2, p1

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->j(JIIJII)V

    return-object p0
.end method

.method public k(ILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)Lcom/google/android/filament/RenderableManager$a;
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/IndexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v3

    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v4

    invoke-virtual {p4}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v6

    move v2, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->k(JIIJJ)V

    return-object p0
.end method

.method public l(ILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;II)Lcom/google/android/filament/RenderableManager$a;
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/IndexBuffer;
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v5

    invoke-virtual {p4}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v7

    move v3, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lcom/google/android/filament/RenderableManager;->l(JIIJJII)V

    return-object v0
.end method

.method public m(ILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;IIII)Lcom/google/android/filament/RenderableManager$a;
    .locals 13
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/IndexBuffer;
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
    .param p8    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p2}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v7

    move v3, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/google/android/filament/RenderableManager;->m(JIIJJIIII)V

    return-object v0
.end method

.method public n(Lcom/google/android/filament/RenderableManager$a$b;)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->n(JI)V

    return-object p0
.end method

.method public o(IZ)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->o(JIZ)V

    return-object p0
.end method

.method public p(I)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x7fffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->p(JI)V

    return-object p0
.end method

.method public q(ILcom/google/android/filament/InstanceBuffer;)Lcom/google/android/filament/RenderableManager$a;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/InstanceBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p2}, Lcom/google/android/filament/InstanceBuffer;->h()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/RenderableManager;->q(JIJ)V

    return-object p0
.end method

.method public r(II)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->r(JII)V

    return-object p0
.end method

.method public s(IZ)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->s(JIZ)V

    return-object p0
.end method

.method public t(ILcom/google/android/filament/MaterialInstance;)Lcom/google/android/filament/RenderableManager$a;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/MaterialInstance;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/RenderableManager;->t(JIJ)V

    return-object p0
.end method

.method public u(I)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->u(JI)V

    return-object p0
.end method

.method public v(III)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->z(JIII)V

    return-object p0
.end method

.method public w(Lcom/google/android/filament/MorphTargetBuffer;)Lcom/google/android/filament/RenderableManager$a;
    .locals 4
    .param p1    # Lcom/google/android/filament/MorphTargetBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/filament/MorphTargetBuffer;->k()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/RenderableManager;->v(JJ)V

    return-object p0
.end method

.method public x(I)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->w(JI)V

    return-object p0
.end method

.method public y(Z)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->x(JZ)V

    return-object p0
.end method

.method public z(Z)Lcom/google/android/filament/RenderableManager$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager$a;->b:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->y(JZ)V

    return-object p0
.end method
