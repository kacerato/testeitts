.class public Lqe/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/e$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqe/i;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/widget/TextView$BufferType;

.field public d:Lqe/e$b;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lqe/f;->b:Ljava/util/List;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lqe/f;->c:Landroid/widget/TextView$BufferType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqe/f;->e:Z

    iput-object p1, p0, Lqe/f;->a:Landroid/content/Context;

    return-void
.end method

.method public static f(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lqe/i;",
            ">;)",
            "Ljava/util/List<",
            "Lqe/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lqe/u;

    invoke-direct {v0, p0}, Lqe/u;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lqe/u;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lqe/i;)Lqe/e$a;
    .locals 1
    .param p1    # Lqe/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/Iterable;)Lqe/e$a;
    .locals 2
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lqe/i;",
            ">;)",
            "Lqe/e$a;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqe/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lqe/f;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lqe/e;
    .locals 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lqe/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lqe/f;->b:Ljava/util/List;

    invoke-static {v0}, Lqe/f;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LVm/d$b;

    invoke-direct {v1}, LVm/d$b;-><init>()V

    iget-object v2, p0, Lqe/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lre/c;->k(Landroid/content/Context;)Lre/c$a;

    move-result-object v2

    new-instance v3, Lqe/g$b;

    invoke-direct {v3}, Lqe/g$b;-><init>()V

    new-instance v4, Lqe/o$a;

    invoke-direct {v4}, Lqe/o$a;-><init>()V

    new-instance v5, Lqe/l$a;

    invoke-direct {v5}, Lqe/l$a;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqe/i;

    invoke-interface {v7, v1}, Lqe/i;->c(LVm/d$b;)V

    invoke-interface {v7, v2}, Lqe/i;->e(Lre/c$a;)V

    invoke-interface {v7, v3}, Lqe/i;->f(Lqe/g$b;)V

    invoke-interface {v7, v4}, Lqe/i;->j(Lqe/m$b;)V

    invoke-interface {v7, v5}, Lqe/i;->h(Lqe/k$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lre/c$a;->A()Lre/c;

    move-result-object v2

    invoke-interface {v5}, Lqe/k$a;->build()Lqe/k;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lqe/g$b;->i(Lre/c;Lqe/k;)Lqe/g;

    move-result-object v11

    invoke-static {v4, v11}, Lqe/n;->b(Lqe/m$b;Lqe/g;)Lqe/n;

    move-result-object v10

    new-instance v2, Lqe/h;

    iget-object v7, p0, Lqe/f;->c:Landroid/widget/TextView$BufferType;

    iget-object v8, p0, Lqe/f;->d:Lqe/e$b;

    invoke-virtual {v1}, LVm/d$b;->f()LVm/d;

    move-result-object v9

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iget-boolean v13, p0, Lqe/f;->e:Z

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lqe/h;-><init>(Landroid/widget/TextView$BufferType;Lqe/e$b;LVm/d;Lqe/n;Lqe/g;Ljava/util/List;Z)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No plugins were added to this builder. Use #usePlugin method to add them"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/widget/TextView$BufferType;)Lqe/e$a;
    .locals 0
    .param p1    # Landroid/widget/TextView$BufferType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/f;->c:Landroid/widget/TextView$BufferType;

    return-object p0
.end method

.method public d(Lqe/e$b;)Lqe/e$a;
    .locals 0
    .param p1    # Lqe/e$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lqe/f;->d:Lqe/e$b;

    return-object p0
.end method

.method public e(Z)Lqe/e$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lqe/f;->e:Z

    return-object p0
.end method
