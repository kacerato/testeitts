.class public final Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/l<",
            "**>;>;"
        }
    .end annotation
.end field

.field public b:Lcom/bumptech/glide/load/engine/j;

.field public c:LF/e;

.field public d:LF/b;

.field public e:LG/j;

.field public f:LH/a;

.field public g:LH/a;

.field public h:LG/a$a;

.field public i:LG/l;

.field public j:LR/d;

.field public k:I

.field public l:Lcom/bumptech/glide/b$a;

.field public m:LR/l$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:LH/a;

.field public o:Z

.field public p:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LU/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/c;->k:I

    new-instance v0, Lcom/bumptech/glide/c$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c$a;-><init>(Lcom/bumptech/glide/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    return-void
.end method


# virtual methods
.method public a(LU/g;)Lcom/bumptech/glide/c;
    .locals 1
    .param p1    # LU/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LU/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bumptech/glide/c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/bumptech/glide/c;->f:LH/a;

    if-nez v1, :cond_0

    invoke-static {}, LH/a;->m()LH/a;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->f:LH/a;

    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/c;->g:LH/a;

    if-nez v1, :cond_1

    invoke-static {}, LH/a;->h()LH/a;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->g:LH/a;

    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/c;->n:LH/a;

    if-nez v1, :cond_2

    invoke-static {}, LH/a;->e()LH/a;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->n:LH/a;

    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/c;->i:LG/l;

    if-nez v1, :cond_3

    new-instance v1, LG/l$a;

    invoke-direct {v1, v2}, LG/l$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, LG/l$a;->a()LG/l;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->i:LG/l;

    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/c;->j:LR/d;

    if-nez v1, :cond_4

    new-instance v1, LR/f;

    invoke-direct {v1}, LR/f;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/c;->j:LR/d;

    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/c;->c:LF/e;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/bumptech/glide/c;->i:LG/l;

    invoke-virtual {v1}, LG/l;->b()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v3, LF/k;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, LF/k;-><init>(J)V

    iput-object v3, v0, Lcom/bumptech/glide/c;->c:LF/e;

    goto :goto_0

    :cond_5
    new-instance v1, LF/f;

    invoke-direct {v1}, LF/f;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/c;->c:LF/e;

    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/c;->d:LF/b;

    if-nez v1, :cond_7

    new-instance v1, LF/j;

    iget-object v3, v0, Lcom/bumptech/glide/c;->i:LG/l;

    invoke-virtual {v3}, LG/l;->a()I

    move-result v3

    invoke-direct {v1, v3}, LF/j;-><init>(I)V

    iput-object v1, v0, Lcom/bumptech/glide/c;->d:LF/b;

    :cond_7
    iget-object v1, v0, Lcom/bumptech/glide/c;->e:LG/j;

    if-nez v1, :cond_8

    new-instance v1, LG/i;

    iget-object v3, v0, Lcom/bumptech/glide/c;->i:LG/l;

    invoke-virtual {v3}, LG/l;->d()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, LG/i;-><init>(J)V

    iput-object v1, v0, Lcom/bumptech/glide/c;->e:LG/j;

    :cond_8
    iget-object v1, v0, Lcom/bumptech/glide/c;->h:LG/a$a;

    if-nez v1, :cond_9

    new-instance v1, LG/h;

    invoke-direct {v1, v2}, LG/h;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bumptech/glide/c;->h:LG/a$a;

    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/j;

    if-nez v1, :cond_a

    new-instance v1, Lcom/bumptech/glide/load/engine/j;

    iget-object v4, v0, Lcom/bumptech/glide/c;->e:LG/j;

    iget-object v5, v0, Lcom/bumptech/glide/c;->h:LG/a$a;

    iget-object v6, v0, Lcom/bumptech/glide/c;->g:LH/a;

    iget-object v7, v0, Lcom/bumptech/glide/c;->f:LH/a;

    invoke-static {}, LH/a;->p()LH/a;

    move-result-object v8

    iget-object v9, v0, Lcom/bumptech/glide/c;->n:LH/a;

    iget-boolean v10, v0, Lcom/bumptech/glide/c;->o:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/j;-><init>(LG/j;LG/a$a;LH/a;LH/a;LH/a;LH/a;Z)V

    iput-object v1, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/j;

    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    goto :goto_1

    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    :goto_1
    new-instance v7, LR/l;

    iget-object v1, v0, Lcom/bumptech/glide/c;->m:LR/l$b;

    invoke-direct {v7, v1}, LR/l;-><init>(LR/l$b;)V

    new-instance v15, Lcom/bumptech/glide/b;

    iget-object v3, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/j;

    iget-object v4, v0, Lcom/bumptech/glide/c;->e:LG/j;

    iget-object v5, v0, Lcom/bumptech/glide/c;->c:LF/e;

    iget-object v6, v0, Lcom/bumptech/glide/c;->d:LF/b;

    iget-object v8, v0, Lcom/bumptech/glide/c;->j:LR/d;

    iget v9, v0, Lcom/bumptech/glide/c;->k:I

    iget-object v10, v0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    iget-object v11, v0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    iget-object v12, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    iget-boolean v13, v0, Lcom/bumptech/glide/c;->q:Z

    iget-boolean v14, v0, Lcom/bumptech/glide/c;->r:Z

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/j;LG/j;LF/e;LF/b;LR/l;LR/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    return-object v15
.end method

.method public c(LH/a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LH/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->n:LH/a;

    return-object p0
.end method

.method public d(LF/b;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LF/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->d:LF/b;

    return-object p0
.end method

.method public e(LF/e;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LF/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->c:LF/e;

    return-object p0
.end method

.method public f(LR/d;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LR/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->j:LR/d;

    return-object p0
.end method

.method public g(LU/h;)Lcom/bumptech/glide/c;
    .locals 1
    .param p1    # LU/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/c$b;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/c$b;-><init>(Lcom/bumptech/glide/c;LU/h;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c;->h(Lcom/bumptech/glide/b$a;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/bumptech/glide/b$a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/b$a;

    iput-object p1, p0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    return-object p0
.end method

.method public i(Ljava/lang/Class;Lcom/bumptech/glide/l;)Lcom/bumptech/glide/c;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/l<",
            "*TT;>;)",
            "Lcom/bumptech/glide/c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public j(LG/a$a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LG/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->h:LG/a$a;

    return-object p0
.end method

.method public k(LH/a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LH/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->g:LH/a;

    return-object p0
.end method

.method public l(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/c;
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/j;

    return-object p0
.end method

.method public m(Z)Lcom/bumptech/glide/c;
    .locals 1

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastQ()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/c;->r:Z

    return-object p0
.end method

.method public n(Z)Lcom/bumptech/glide/c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/bumptech/glide/c;->o:Z

    return-object p0
.end method

.method public o(I)Lcom/bumptech/glide/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/bumptech/glide/c;->k:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Z)Lcom/bumptech/glide/c;
    .locals 0

    iput-boolean p1, p0, Lcom/bumptech/glide/c;->q:Z

    return-object p0
.end method

.method public q(LG/j;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LG/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->e:LG/j;

    return-object p0
.end method

.method public r(LG/l$a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LG/l$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, LG/l$a;->a()LG/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->s(LG/l;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public s(LG/l;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LG/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->i:LG/l;

    return-object p0
.end method

.method public t(LR/l$b;)V
    .locals 0
    .param p1    # LR/l$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/c;->m:LR/l$b;

    return-void
.end method

.method public u(LH/a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LH/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->v(LH/a;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public v(LH/a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LH/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->f:LH/a;

    return-object p0
.end method
