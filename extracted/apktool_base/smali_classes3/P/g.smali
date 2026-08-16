.class public LP/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP/g$d;,
        LP/g$a;,
        LP/g$c;,
        LP/g$b;
    }
.end annotation


# instance fields
.field public final a:LB/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LP/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/bumptech/glide/k;

.field public final e:LF/e;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lcom/bumptech/glide/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public j:LP/g$a;

.field public k:Z

.field public l:LP/g$a;

.field public m:Landroid/graphics/Bitmap;

.field public n:LC/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public o:LP/g$a;

.field public p:LP/g$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:I

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>(LF/e;Lcom/bumptech/glide/k;LB/a;Landroid/os/Handler;Lcom/bumptech/glide/j;LC/l;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF/e;",
            "Lcom/bumptech/glide/k;",
            "LB/a;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LP/g;->c:Ljava/util/List;

    .line 7
    iput-object p2, p0, LP/g;->d:Lcom/bumptech/glide/k;

    if-nez p4, :cond_0

    .line 8
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, LP/g$c;

    invoke-direct {v0, p0}, LP/g$c;-><init>(LP/g;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 9
    :cond_0
    iput-object p1, p0, LP/g;->e:LF/e;

    .line 10
    iput-object p4, p0, LP/g;->b:Landroid/os/Handler;

    .line 11
    iput-object p5, p0, LP/g;->i:Lcom/bumptech/glide/j;

    .line 12
    iput-object p3, p0, LP/g;->a:LB/a;

    .line 13
    invoke-virtual {p0, p6, p7}, LP/g;->q(LC/l;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;LB/a;IILC/l;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "LB/a;",
            "II",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->g()LF/e;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    invoke-static {p1, p3, p4}, LP/g;->k(Lcom/bumptech/glide/k;II)Lcom/bumptech/glide/j;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v0 .. v7}, LP/g;-><init>(LF/e;Lcom/bumptech/glide/k;LB/a;Landroid/os/Handler;Lcom/bumptech/glide/j;LC/l;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static g()LC/e;
    .locals 3

    new-instance v0, LX/e;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, LX/e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k(Lcom/bumptech/glide/k;II)Lcom/bumptech/glide/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/k;",
            "II)",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/k;->s()Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v0}, LU/h;->W0(Lcom/bumptech/glide/load/engine/i;)LU/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LU/a;->P0(Z)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, v1}, LU/a;->F0(Z)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    invoke-virtual {v0, p1, p2}, LU/a;->u0(II)LU/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, LP/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, LP/g;->p()V

    invoke-virtual {p0}, LP/g;->u()V

    iget-object v0, p0, LP/g;->j:LP/g$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, LP/g;->d:Lcom/bumptech/glide/k;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/k;->w(LV/p;)V

    iput-object v1, p0, LP/g;->j:LP/g$a;

    :cond_0
    iget-object v0, p0, LP/g;->l:LP/g$a;

    if-eqz v0, :cond_1

    iget-object v2, p0, LP/g;->d:Lcom/bumptech/glide/k;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/k;->w(LV/p;)V

    iput-object v1, p0, LP/g;->l:LP/g$a;

    :cond_1
    iget-object v0, p0, LP/g;->o:LP/g$a;

    if-eqz v0, :cond_2

    iget-object v2, p0, LP/g;->d:Lcom/bumptech/glide/k;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/k;->w(LV/p;)V

    iput-object v1, p0, LP/g;->o:LP/g$a;

    :cond_2
    iget-object v0, p0, LP/g;->a:LB/a;

    invoke-interface {v0}, LB/a;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LP/g;->k:Z

    return-void
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, LP/g;->a:LB/a;

    invoke-interface {v0}, LB/a;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, LP/g;->j:LP/g$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LP/g$a;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LP/g;->m:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LP/g;->j:LP/g$a;

    if-eqz v0, :cond_0

    iget v0, v0, LP/g$a;->f:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, LP/g;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LP/g;->a:LB/a;

    invoke-interface {v0}, LB/a;->p()I

    move-result v0

    return v0
.end method

.method public h()LC/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LP/g;->n:LC/l;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LP/g;->s:I

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, LP/g;->a:LB/a;

    invoke-interface {v0}, LB/a;->s()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, LP/g;->a:LB/a;

    invoke-interface {v0}, LB/a;->n()I

    move-result v0

    iget v1, p0, LP/g;->q:I

    add-int/2addr v0, v1

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, LP/g;->r:I

    return v0
.end method

.method public final n()V
    .locals 5

    iget-boolean v0, p0, LP/g;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LP/g;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, LP/g;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, LP/g;->o:LP/g$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, LY/k;->a(ZLjava/lang/String;)V

    iget-object v0, p0, LP/g;->a:LB/a;

    invoke-interface {v0}, LB/a;->k()V

    iput-boolean v2, p0, LP/g;->h:Z

    :cond_2
    iget-object v0, p0, LP/g;->o:LP/g$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, LP/g;->o:LP/g$a;

    invoke-virtual {p0, v0}, LP/g;->o(LP/g$a;)V

    return-void

    :cond_3
    iput-boolean v1, p0, LP/g;->g:Z

    iget-object v0, p0, LP/g;->a:LB/a;

    invoke-interface {v0}, LB/a;->u()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, LP/g;->a:LB/a;

    invoke-interface {v0}, LB/a;->g()V

    new-instance v0, LP/g$a;

    iget-object v3, p0, LP/g;->b:Landroid/os/Handler;

    iget-object v4, p0, LP/g;->a:LB/a;

    invoke-interface {v4}, LB/a;->l()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, LP/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, LP/g;->l:LP/g$a;

    iget-object v0, p0, LP/g;->i:Lcom/bumptech/glide/j;

    invoke-static {}, LP/g;->g()LC/e;

    move-result-object v1

    invoke-static {v1}, LU/h;->n1(LC/e;)LU/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, LP/g;->a:LB/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->p1(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, LP/g;->l:LP/g$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->e1(LV/p;)LV/p;

    :cond_4
    :goto_1
    return-void
.end method

.method public o(LP/g$a;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, LP/g;->p:LP/g$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LP/g$d;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LP/g;->g:Z

    iget-boolean v0, p0, LP/g;->k:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, LP/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iget-boolean v0, p0, LP/g;->f:Z

    if-nez v0, :cond_2

    iput-object p1, p0, LP/g;->o:LP/g$a;

    return-void

    :cond_2
    invoke-virtual {p1}, LP/g$a;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LP/g;->p()V

    iget-object v0, p0, LP/g;->j:LP/g$a;

    iput-object p1, p0, LP/g;->j:LP/g$a;

    iget-object p1, p0, LP/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    iget-object v2, p0, LP/g;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LP/g$b;

    invoke-interface {v2}, LP/g$b;->a()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, LP/g;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    invoke-virtual {p0}, LP/g;->n()V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, LP/g;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, LP/g;->e:LF/e;

    invoke-interface {v1, v0}, LF/e;->d(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, LP/g;->m:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public q(LC/l;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/l;

    iput-object v0, p0, LP/g;->n:LC/l;

    invoke-static {p2}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, LP/g;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, LP/g;->i:Lcom/bumptech/glide/j;

    new-instance v1, LU/h;

    invoke-direct {v1}, LU/h;-><init>()V

    invoke-virtual {v1, p1}, LU/a;->I0(LC/l;)LU/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    iput-object p1, p0, LP/g;->i:Lcom/bumptech/glide/j;

    invoke-static {p2}, LY/m;->h(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, LP/g;->q:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, LP/g;->r:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, LP/g;->s:I

    return-void
.end method

.method public r()V
    .locals 3

    iget-boolean v0, p0, LP/g;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, LY/k;->a(ZLjava/lang/String;)V

    iput-boolean v1, p0, LP/g;->h:Z

    iget-object v0, p0, LP/g;->o:LP/g$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, LP/g;->d:Lcom/bumptech/glide/k;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/k;->w(LV/p;)V

    const/4 v0, 0x0

    iput-object v0, p0, LP/g;->o:LP/g$a;

    :cond_0
    return-void
.end method

.method public s(LP/g$d;)V
    .locals 0
    .param p1    # LP/g$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, LP/g;->p:LP/g$d;

    return-void
.end method

.method public final t()V
    .locals 1

    iget-boolean v0, p0, LP/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LP/g;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LP/g;->k:Z

    invoke-virtual {p0}, LP/g;->n()V

    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LP/g;->f:Z

    return-void
.end method

.method public v(LP/g$b;)V
    .locals 2

    iget-boolean v0, p0, LP/g;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LP/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LP/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, LP/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LP/g;->t()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(LP/g$b;)V
    .locals 1

    iget-object v0, p0, LP/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, LP/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LP/g;->u()V

    :cond_0
    return-void
.end method
