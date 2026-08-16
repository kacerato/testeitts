.class public Lcom/android/tools/r8/internal/z8;
.super Lcom/android/tools/r8/internal/qB;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/qB;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/x8;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/qB;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/x8;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 8
    sget-boolean v3, Lcom/android/tools/r8/internal/z8;->e:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ne v3, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 5
    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/CE1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/CE1;-><init>(Lcom/android/tools/r8/internal/z8;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/BE1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/BE1;-><init>(Lcom/android/tools/r8/internal/z8;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-static {v2, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/rB;

    iget-object v1, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/A8;->b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/E00;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/internal/D00;

    new-instance v3, Lcom/android/tools/r8/internal/AE1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/AE1;-><init>(Lcom/android/tools/r8/internal/z8;)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/A8;->c:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/rB;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D00;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Predicate;)V

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method
