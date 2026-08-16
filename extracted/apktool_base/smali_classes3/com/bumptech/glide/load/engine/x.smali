.class public Lcom/bumptech/glide/load/engine/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/e;
.implements Lcom/bumptech/glide/load/engine/e$a;


# static fields
.field public static final i:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field public final b:Lcom/bumptech/glide/load/engine/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lcom/bumptech/glide/load/engine/e$a;

.field public d:I

.field public e:Lcom/bumptech/glide/load/engine/b;

.field public f:Ljava/lang/Object;

.field public volatile g:LJ/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public h:Lcom/bumptech/glide/load/engine/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    return-void
.end method


# virtual methods
.method public a(LC/e;Ljava/lang/Object;LD/d;LC/a;LC/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            "Ljava/lang/Object;",
            "LD/d<",
            "*>;",
            "LC/a;",
            "LC/e;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    iget-object p4, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object p4, p4, LJ/n$a;->c:LD/d;

    invoke-interface {p4}, LD/d;->b()LC/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/e$a;->a(LC/e;Ljava/lang/Object;LD/d;LC/a;LC/e;)V

    return-void
.end method

.method public b()Z
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/x;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/x;->d(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->e:Lcom/bumptech/glide/load/engine/b;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/x;->e:Lcom/bumptech/glide/load/engine/b;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/x;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->g()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/load/engine/x;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/engine/x;->d:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ/n$a;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->e()Lcom/bumptech/glide/load/engine/i;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object v3, v3, LJ/n$a;->c:LD/d;

    invoke-interface {v3}, LD/d;->b()LC/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/i;->c(LC/a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object v3, v3, LJ/n$a;->c:LD/d;

    invoke-interface {v3}, LD/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/f;->t(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/x;->j(LJ/n$a;)V

    move v0, v2

    goto :goto_0

    :cond_4
    return v0
.end method

.method public c(LC/e;Ljava/lang/Exception;LD/d;LC/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            "Ljava/lang/Exception;",
            "LD/d<",
            "*>;",
            "LC/a;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object v0, v0, LJ/n$a;->c:LD/d;

    invoke-interface {v0}, LD/d;->b()LC/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/e$a;->c(LC/e;Ljava/lang/Exception;LD/d;LC/a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LJ/n$a;->c:LD/d;

    invoke-interface {v0}, LD/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    invoke-static {}, LY/g;->b()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/load/engine/f;->p(Ljava/lang/Object;)LC/d;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/load/engine/d;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/f;->k()LC/h;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lcom/bumptech/glide/load/engine/d;-><init>(LC/d;Ljava/lang/Object;LC/h;)V

    new-instance v5, Lcom/bumptech/glide/load/engine/c;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object v6, v6, LJ/n$a;->a:LC/e;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/f;->o()LC/e;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/engine/c;-><init>(LC/e;LC/e;)V

    iput-object v5, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/f;->d()LG/a;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    invoke-interface {v5, v6, v4}, LG/a;->c(LC/e;LG/a$b;)V

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, LY/g;->a(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object p1, p1, LJ/n$a;->c:LD/d;

    invoke-interface {p1}, LD/d;->cleanup()V

    new-instance p1, Lcom/bumptech/glide/load/engine/b;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object v0, v0, LJ/n$a;->a:LC/e;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/b;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/x;->e:Lcom/bumptech/glide/load/engine/b;

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object v0, v0, LJ/n$a;->c:LD/d;

    invoke-interface {v0}, LD/d;->cleanup()V

    throw p1
.end method

.method public e()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/x;->d:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(LJ/n$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/n$a<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(LJ/n$a;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/n$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f;->e()Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p1, LJ/n$a;->c:LD/d;

    invoke-interface {v1}, LD/d;->b()LC/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/i;->c(LC/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/x;->f:Ljava/lang/Object;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/e$a;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v1, p1, LJ/n$a;->a:LC/e;

    iget-object v3, p1, LJ/n$a;->c:LD/d;

    invoke-interface {v3}, LD/d;->b()LC/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/e$a;->a(LC/e;Ljava/lang/Object;LD/d;LC/a;LC/e;)V

    :goto_0
    return-void
.end method

.method public i(LJ/n$a;Ljava/lang/Exception;)V
    .locals 3
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/n$a<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    iget-object p1, p1, LJ/n$a;->c:LD/d;

    invoke-interface {p1}, LD/d;->b()LC/a;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/bumptech/glide/load/engine/e$a;->c(LC/e;Ljava/lang/Exception;LD/d;LC/a;)V

    return-void
.end method

.method public final j(LJ/n$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/n$a<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LJ/n$a;

    iget-object v0, v0, LJ/n$a;->c:LD/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->l()Lcom/bumptech/glide/h;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/x$a;

    invoke-direct {v2, p0, p1}, Lcom/bumptech/glide/load/engine/x$a;-><init>(Lcom/bumptech/glide/load/engine/x;LJ/n$a;)V

    invoke-interface {v0, v1, v2}, LD/d;->e(Lcom/bumptech/glide/h;LD/d$a;)V

    return-void
.end method
