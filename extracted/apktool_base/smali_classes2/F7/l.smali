.class public LF7/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "LF7/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:LF7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF7/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:LF7/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:LF7/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF7/k<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "treeInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "LF7/k<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    iput-object p1, p0, LF7/l;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, LF7/l;->d:LF7/k;

    invoke-virtual {p0, v0}, LF7/l;->i(Landroid/app/Activity;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interface can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(LF7/l;LF7/i;)V
    .locals 0

    invoke-virtual {p0, p1}, LF7/l;->h(LF7/i;)V

    return-void
.end method

.method public static synthetic b(LF7/l;LF7/i;)V
    .locals 0

    invoke-virtual {p0, p1}, LF7/l;->r(LF7/i;)V

    return-void
.end method

.method public static synthetic c(LF7/l;)LF7/k;
    .locals 0

    iget-object p0, p0, LF7/l;->d:LF7/k;

    return-object p0
.end method

.method public static m(LF7/i;LF7/i;)LF7/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "LF7/i;",
            ">(TT;TT;)",
            "LF7/i;"
        }
    .end annotation

    iget-object p0, p0, LF7/i;->f:LF7/h;

    iget-object p0, p0, LF7/h;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF7/i;

    iget-boolean v1, v0, LF7/i;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, LF7/i;->f:LF7/h;

    if-eqz v1, :cond_0

    iget-object v1, v1, LF7/h;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {v0, p1}, LF7/l;->m(LF7/i;LF7/i;)LF7/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A(LF7/i;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "force"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-boolean v1, v0, LF7/h;->c:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, v0, LF7/h;->c:Z

    :cond_0
    invoke-virtual {p0, p1}, LF7/l;->r(LF7/i;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "element can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->o(LF7/i;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, LF7/l;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public C(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v1}, LF7/f;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v1, v0}, LF7/f;->p(I)LF7/i;

    move-result-object v1

    invoke-virtual {p0, v1}, LF7/l;->f(LF7/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF7/i;

    invoke-virtual {p0, v1}, LF7/l;->f(LF7/i;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->v(Ljava/util/List;)V

    invoke-virtual {p0}, LF7/l;->l()V

    iget-object p1, p0, LF7/l;->d:LF7/k;

    invoke-interface {p1}, LF7/k;->a()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "elements can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LF7/l;->c:LF7/i;

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->w(LF7/i;)V

    iget-object v0, p0, LF7/l;->d:LF7/k;

    invoke-interface {v0, p1}, LF7/k;->e(LF7/i;)V

    return-void
.end method

.method public E(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-boolean v0, v0, LF7/h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LF7/l;->h(LF7/i;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LF7/l;->r(LF7/i;)V

    :goto_0
    return-void
.end method

.method public d(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, LF7/l;->f(LF7/i;)V

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->l(LF7/i;)V

    invoke-virtual {p0}, LF7/l;->l()V

    iget-object p1, p0, LF7/l;->d:LF7/k;

    invoke-interface {p1}, LF7/k;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "element can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(LF7/i;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, LF7/l;->f(LF7/i;)V

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p2, p1}, LF7/f;->k(ILF7/i;)V

    invoke-virtual {p0}, LF7/l;->l()V

    iget-object p1, p0, LF7/l;->d:LF7/k;

    invoke-interface {p1}, LF7/k;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "element can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(LF7/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p1, LF7/i;->f:LF7/h;

    iget-object v1, v1, LF7/h;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, LF7/i;->f:LF7/h;

    iget-object v2, v2, LF7/h;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF7/i;

    invoke-virtual {p0, v1}, LF7/l;->f(LF7/i;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-object v0, v0, LF7/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, LF7/i;->f:LF7/h;

    const/4 v1, 0x0

    iput-object v1, p1, LF7/h;->b:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0}, LF7/f;->m()V

    return-void
.end method

.method public final h(LF7/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-boolean v0, v0, LF7/h;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-static {p1, v0}, LF7/d;->b(LF7/i;LF7/f;)V

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-object v0, v0, LF7/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, LF7/i;->f:LF7/h;

    const/4 v2, 0x0

    iput-object v2, v1, LF7/h;->b:Ljava/util/List;

    const/4 v2, 0x0

    iput-boolean v2, v1, LF7/h;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->s(LF7/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_2
    iget-object v0, p0, LF7/l;->d:LF7/k;

    invoke-interface {v0, p1, v2}, LF7/k;->d(LF7/i;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_3
    iget-object p1, p0, LF7/l;->d:LF7/k;

    invoke-interface {p1}, LF7/k;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "element can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    iget-object v0, p0, LF7/l;->d:LF7/k;

    invoke-interface {v0}, LF7/k;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LF7/l;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, LF7/f;

    new-instance v2, LF7/l$a;

    invoke-direct {v2, p0}, LF7/l$a;-><init>(LF7/l;)V

    invoke-direct {v1, v0, p1, v2}, LF7/f;-><init>(Ljava/util/List;Landroid/content/Context;LF7/g;)V

    iput-object v1, p0, LF7/l;->b:LF7/f;

    iget-object p1, p0, LF7/l;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, LF7/l;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, LF7/l;->l()V

    iget-object p1, p0, LF7/l;->d:LF7/k;

    invoke-interface {p1}, LF7/k;->a()V

    return-void
.end method

.method public j(I)LF7/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->p(I)LF7/i;

    move-result-object p1

    return-object p1
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0}, LF7/f;->getItemCount()I

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    invoke-static {v3}, LNc/b;->H(I)I

    move-result v2

    move v3, v2

    :goto_2
    iget-object v4, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v4}, LF7/f;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v4, v3}, LF7/f;->p(I)LF7/i;

    move-result-object v4

    iget-object v5, v4, LF7/i;->f:LF7/h;

    iget-object v5, v5, LF7/h;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v4, LF7/i;->f:LF7/h;

    iget-object v7, v6, LF7/h;->b:Ljava/util/List;

    if-nez v7, :cond_0

    move v7, v1

    goto :goto_3

    :cond_0
    move v7, v0

    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v5, v6, LF7/h;->c:Z

    if-eqz v5, :cond_1

    if-nez v7, :cond_2

    :cond_1
    iget-boolean v5, v4, LF7/i;->e:Z

    if-eqz v5, :cond_3

    :cond_2
    iput-boolean v0, v6, LF7/h;->c:Z

    invoke-virtual {p0, v4}, LF7/l;->r(LF7/i;)V

    iput-boolean v0, v4, LF7/i;->e:Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_5
    return-void
.end method

.method public n(LF7/i;)LF7/i;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v1}, LF7/f;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v1, v0}, LF7/f;->p(I)LF7/i;

    move-result-object v1

    iget-boolean v2, v1, LF7/i;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, LF7/i;->f:LF7/h;

    if-eqz v2, :cond_1

    iget-object v2, v2, LF7/h;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v1, p1}, LF7/l;->m(LF7/i;LF7/i;)LF7/i;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public o()LF7/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LF7/l;->c:LF7/i;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goToFolder"
        }
    .end annotation

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".meta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, LTc/b;->D(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_c

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, v3

    :goto_1
    move v5, v4

    :goto_2
    if-eqz v5, :cond_c

    add-int/2addr v6, v4

    const/16 v5, 0x32

    if-le v6, v5, :cond_3

    goto/16 :goto_7

    :cond_3
    move v5, v3

    :goto_3
    iget-object v7, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v7}, LF7/f;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_b

    iget-object v7, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v7, v5}, LF7/f;->p(I)LF7/i;

    move-result-object v7

    iget-object v8, v7, LF7/i;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {p1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0, v7}, LF7/l;->D(LF7/i;)V

    goto :goto_6

    :cond_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, v7}, LF7/l;->D(LF7/i;)V

    goto :goto_6

    :cond_6
    iget-boolean v9, v7, LF7/i;->d:Z

    if-eqz v9, :cond_a

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v7, LF7/i;->f:LF7/h;

    iget-boolean v8, v8, LF7/h;->c:Z

    if-nez v8, :cond_7

    invoke-virtual {p0, v7}, LF7/l;->r(LF7/i;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1, v7}, LF7/l;->q(Ljava/lang/String;LF7/i;)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_4
    goto :goto_1

    :cond_8
    invoke-virtual {p0, p1, v7}, LF7/l;->q(Ljava/lang/String;LF7/i;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_9
    :goto_5
    invoke-virtual {p0, p1, v7}, LF7/l;->q(Ljava/lang/String;LF7/i;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_b
    move v5, v3

    goto/16 :goto_2

    :cond_c
    :goto_7
    return-void
.end method

.method public final q(Ljava/lang/String;LF7/i;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "goToFolder",
            "parent"
        }
    .end annotation

    iget-object p2, p2, LF7/i;->f:LF7/h;

    iget-object p2, p2, LF7/h;->b:Ljava/util/List;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF7/i;

    iget-object v1, v0, LF7/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ".meta"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, LF7/l;->D(LF7/i;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, LF7/l;->D(LF7/i;)V

    goto :goto_0

    :cond_3
    iget-boolean v3, v0, LF7/i;->d:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, LF7/i;->f:LF7/h;

    iget-boolean v1, v1, LF7/h;->c:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, LF7/l;->r(LF7/i;)V

    return v2

    :cond_4
    invoke-virtual {p0, p1, v0}, LF7/l;->q(Ljava/lang/String;LF7/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_5
    invoke-virtual {p0, p1, v0}, LF7/l;->q(Ljava/lang/String;LF7/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_6
    :goto_1
    invoke-virtual {p0, p1, v0}, LF7/l;->q(Ljava/lang/String;LF7/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final r(LF7/i;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-boolean v1, v0, LF7/h;->c:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, LF7/h;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, LF7/i;->e:Z

    iget-object v2, p0, LF7/l;->b:LF7/f;

    invoke-static {p1, v2}, LF7/d;->b(LF7/i;LF7/f;)V

    iget-object v2, p0, LF7/l;->d:LF7/k;

    invoke-interface {v2, p1}, LF7/k;->f(LF7/i;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p1, LF7/i;->f:LF7/h;

    iget-object v3, v3, LF7/h;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p1, LF7/i;->f:LF7/h;

    iput-object v2, v4, LF7/h;->b:Ljava/util/List;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v3, p1}, LF7/f;->o(LF7/i;)I

    move-result v3

    add-int/2addr v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF7/i;

    invoke-virtual {p0, v4}, LF7/l;->f(LF7/i;)V

    iget-object v5, p0, LF7/l;->b:LF7/f;

    add-int v6, v3, v0

    invoke-virtual {v5, v6, v4}, LF7/f;->k(ILF7/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LF7/l;->l()V

    :try_start_1
    iget-object v0, p0, LF7/l;->d:LF7/k;

    invoke-interface {v0}, LF7/k;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, LF7/l;->d:LF7/k;

    invoke-interface {v0, p1, v1}, LF7/k;->d(LF7/i;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Never return null lists in tree list interface"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "element can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public t(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->s(LF7/i;)V

    invoke-virtual {p0}, LF7/l;->l()V

    iget-object p1, p0, LF7/l;->d:LF7/k;

    invoke-interface {p1}, LF7/k;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "element can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(LF7/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->s(LF7/i;)V

    invoke-virtual {p0}, LF7/l;->l()V

    iget-object v0, p0, LF7/l;->d:LF7/k;

    invoke-interface {v0}, LF7/k;->a()V

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-boolean v1, v0, LF7/h;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, LF7/h;->c:Z

    invoke-virtual {p0, p1}, LF7/l;->r(LF7/i;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "element can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v1}, LF7/f;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v1, v0}, LF7/f;->p(I)LF7/i;

    move-result-object v1

    invoke-virtual {p0, v1}, LF7/l;->f(LF7/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LF7/l;->d:LF7/k;

    invoke-interface {v0}, LF7/k;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF7/i;

    invoke-virtual {p0, v2}, LF7/l;->f(LF7/i;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v1, v0}, LF7/f;->v(Ljava/util/List;)V

    invoke-virtual {p0}, LF7/l;->l()V

    iget-object v0, p0, LF7/l;->d:LF7/k;

    invoke-interface {v0}, LF7/k;->a()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Never return null lists in tree list interface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public w(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LF7/l;->b:LF7/f;

    invoke-virtual {v0, p1}, LF7/f;->t(LF7/i;)V

    invoke-virtual {p0}, LF7/l;->l()V

    iget-object p1, p0, LF7/l;->d:LF7/k;

    invoke-interface {p1}, LF7/k;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "element can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LF7/l;->y(LF7/i;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "element can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(LF7/i;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "force"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, LF7/i;->f:LF7/h;

    iget-boolean v1, v0, LF7/h;->c:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, v0, LF7/h;->c:Z

    :cond_0
    invoke-virtual {p0, p1}, LF7/l;->h(LF7/i;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "element can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(LF7/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LF7/l;->A(LF7/i;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "element can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
