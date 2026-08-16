.class public LJ/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD/d;
.implements LD/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LD/d<",
        "TData;>;",
        "LD/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LD/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field public final c:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Lcom/bumptech/glide/h;

.field public f:LD/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LD/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LD/d<",
            "TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJ/q$a;->c:Landroidx/core/util/Pools$Pool;

    invoke-static {p1}, LY/k;->c(Ljava/util/Collection;)Ljava/util/Collection;

    iput-object p1, p0, LJ/q$a;->b:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, LJ/q$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, LJ/q$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/d;

    invoke-interface {v0}, LD/d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public b()LC/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LJ/q$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/d;

    invoke-interface {v0}, LD/d;->b()LC/a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJ/q$a;->f:LD/d$a;

    invoke-interface {v0, p1}, LD/d$a;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LJ/q$a;->f()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ/q$a;->h:Z

    iget-object v0, p0, LJ/q$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD/d;

    invoke-interface {v1}, LD/d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, LJ/q$a;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, LJ/q$a;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LJ/q$a;->g:Ljava/util/List;

    iget-object v0, p0, LJ/q$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD/d;

    invoke-interface {v1}, LD/d;->cleanup()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LJ/q$a;->g:Ljava/util/List;

    invoke-static {v0}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LJ/q$a;->f()V

    return-void
.end method

.method public e(Lcom/bumptech/glide/h;LD/d$a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LD/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h;",
            "LD/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iput-object p1, p0, LJ/q$a;->e:Lcom/bumptech/glide/h;

    iput-object p2, p0, LJ/q$a;->f:LD/d$a;

    iget-object p2, p0, LJ/q$a;->c:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, LJ/q$a;->g:Ljava/util/List;

    iget-object p2, p0, LJ/q$a;->b:Ljava/util/List;

    iget v0, p0, LJ/q$a;->d:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LD/d;

    invoke-interface {p2, p1, p0}, LD/d;->e(Lcom/bumptech/glide/h;LD/d$a;)V

    iget-boolean p1, p0, LJ/q$a;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LJ/q$a;->cancel()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, LJ/q$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LJ/q$a;->d:I

    iget-object v1, p0, LJ/q$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, LJ/q$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LJ/q$a;->d:I

    iget-object v0, p0, LJ/q$a;->e:Lcom/bumptech/glide/h;

    iget-object v1, p0, LJ/q$a;->f:LD/d$a;

    invoke-virtual {p0, v0, v1}, LJ/q$a;->e(Lcom/bumptech/glide/h;LD/d$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LJ/q$a;->g:Ljava/util/List;

    invoke-static {v0}, LY/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LJ/q$a;->f:LD/d$a;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, LJ/q$a;->g:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, LD/d$a;->d(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
