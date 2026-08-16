.class public Lcom/google/android/filament/SurfaceOrientation$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/SurfaceOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/nio/Buffer;

.field public d:I

.field public e:Ljava/nio/Buffer;

.field public f:I

.field public g:Ljava/nio/Buffer;

.field public h:I

.field public i:Ljava/nio/Buffer;

.field public j:I

.field public k:Ljava/nio/Buffer;

.field public l:Ljava/nio/Buffer;

.field public m:J

.field public n:I

.field public o:J

.field public p:I

.field public q:J

.field public r:I

.field public s:J

.field public t:I

.field public u:J

.field public v:I

.field public w:J

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/filament/SurfaceOrientation;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/android/filament/SurfaceOrientation;->p()J

    move-result-wide v6

    iget v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->a:I

    invoke-static {v6, v7, v0}, Lcom/google/android/filament/SurfaceOrientation;->o(JI)V

    iget v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->b:I

    invoke-static {v6, v7, v0}, Lcom/google/android/filament/SurfaceOrientation;->h(JI)V

    iget-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->c:Ljava/nio/Buffer;

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->d:I

    invoke-static {v6, v7, v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->b(JLjava/nio/Buffer;II)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->m:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$a;->n:I

    iget v5, p0, Lcom/google/android/filament/SurfaceOrientation$a;->d:I

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/SurfaceOrientation;->c(JJII)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->e:Ljava/nio/Buffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->f:I

    invoke-static {v6, v7, v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->f(JLjava/nio/Buffer;II)V

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->o:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$a;->p:I

    iget v5, p0, Lcom/google/android/filament/SurfaceOrientation$a;->f:I

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/SurfaceOrientation;->g(JJII)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->g:Ljava/nio/Buffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->h:I

    invoke-static {v6, v7, v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->m(JLjava/nio/Buffer;II)V

    goto :goto_2

    :cond_4
    iget-wide v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->q:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_5

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$a;->r:I

    iget v5, p0, Lcom/google/android/filament/SurfaceOrientation$a;->h:I

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/SurfaceOrientation;->n(JJII)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->i:Ljava/nio/Buffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->j:I

    invoke-static {v6, v7, v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->d(JLjava/nio/Buffer;II)V

    goto :goto_3

    :cond_6
    iget-wide v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->s:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_7

    iget v4, p0, Lcom/google/android/filament/SurfaceOrientation$a;->t:I

    iget v5, p0, Lcom/google/android/filament/SurfaceOrientation$a;->j:I

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/SurfaceOrientation;->e(JJII)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->k:Ljava/nio/Buffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v6, v7, v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->i(JLjava/nio/Buffer;I)V

    goto :goto_4

    :cond_8
    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->u:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->v:I

    invoke-static {v6, v7, v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->j(JJI)V

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->l:Ljava/nio/Buffer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v6, v7, v0, v1}, Lcom/google/android/filament/SurfaceOrientation;->k(JLjava/nio/Buffer;I)V

    goto :goto_5

    :cond_a
    iget-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->w:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/google/android/filament/SurfaceOrientation$a;->x:I

    invoke-static {v6, v7, v0, v1, v2}, Lcom/google/android/filament/SurfaceOrientation;->l(JJI)V

    :cond_b
    :goto_5
    invoke-static {v6, v7}, Lcom/google/android/filament/SurfaceOrientation;->a(J)J

    move-result-wide v0

    invoke-static {v6, v7}, Lcom/google/android/filament/SurfaceOrientation;->q(J)V

    cmp-long v2, v0, v8

    if-eqz v2, :cond_c

    new-instance v2, Lcom/google/android/filament/SurfaceOrientation;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/filament/SurfaceOrientation;-><init>(JLcom/google/android/filament/s;)V

    return-object v2

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not create SurfaceOrientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(JI)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->c:Ljava/nio/Buffer;

    iput-wide p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->m:J

    iput p3, p0, Lcom/google/android/filament/SurfaceOrientation$a;->n:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->d:I

    return-object p0
.end method

.method public c(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 2
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->c:Ljava/nio/Buffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->m:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->n:I

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->d:I

    return-object p0
.end method

.method public d(JI)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->i:Ljava/nio/Buffer;

    iput-wide p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->s:J

    iput p3, p0, Lcom/google/android/filament/SurfaceOrientation$a;->t:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->j:I

    return-object p0
.end method

.method public e(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 2
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->i:Ljava/nio/Buffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->s:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->t:I

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->j:I

    return-object p0
.end method

.method public f(JI)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->e:Ljava/nio/Buffer;

    iput-wide p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->o:J

    iput p3, p0, Lcom/google/android/filament/SurfaceOrientation$a;->p:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->f:I

    return-object p0
.end method

.method public g(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 2
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->e:Ljava/nio/Buffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->o:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->p:I

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->f:I

    return-object p0
.end method

.method public h(I)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->b:I

    return-object p0
.end method

.method public i(JI)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->k:Ljava/nio/Buffer;

    iput-wide p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->u:J

    iput p3, p0, Lcom/google/android/filament/SurfaceOrientation$a;->v:I

    return-object p0
.end method

.method public j(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 2
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->k:Ljava/nio/Buffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->u:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->v:I

    return-object p0
.end method

.method public k(JI)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->l:Ljava/nio/Buffer;

    iput-wide p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->w:J

    iput p3, p0, Lcom/google/android/filament/SurfaceOrientation$a;->x:I

    return-object p0
.end method

.method public l(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 2
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->l:Ljava/nio/Buffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->w:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->x:I

    return-object p0
.end method

.method public m(JI)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->g:Ljava/nio/Buffer;

    iput-wide p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->q:J

    iput p3, p0, Lcom/google/android/filament/SurfaceOrientation$a;->r:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->h:I

    return-object p0
.end method

.method public n(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 2
    .param p1    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->g:Ljava/nio/Buffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/SurfaceOrientation$a;->q:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->r:I

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->h:I

    return-object p0
.end method

.method public o(I)Lcom/google/android/filament/SurfaceOrientation$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/filament/SurfaceOrientation$a;->a:I

    return-object p0
.end method
