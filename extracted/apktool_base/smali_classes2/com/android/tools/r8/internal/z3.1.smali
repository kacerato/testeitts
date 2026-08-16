.class public final Lcom/android/tools/r8/internal/z3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/y70;

.field public final c:Lcom/android/tools/r8/internal/Mw;

.field public final d:Lcom/android/tools/r8/internal/zX;

.field public final e:Lcom/android/tools/r8/internal/bD;

.field public final f:Lcom/android/tools/r8/graph/c4;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/function/BiConsumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;Lcom/android/tools/r8/internal/bD;Ljava/util/ArrayList;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/z3;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/z3;->b:Lcom/android/tools/r8/internal/y70;

    iput-object p3, p0, Lcom/android/tools/r8/internal/z3;->f:Lcom/android/tools/r8/graph/c4;

    iput-object p4, p0, Lcom/android/tools/r8/internal/z3;->c:Lcom/android/tools/r8/internal/Mw;

    iput-object p5, p0, Lcom/android/tools/r8/internal/z3;->d:Lcom/android/tools/r8/internal/zX;

    iput-object p6, p0, Lcom/android/tools/r8/internal/z3;->e:Lcom/android/tools/r8/internal/bD;

    iput-object p7, p0, Lcom/android/tools/r8/internal/z3;->g:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/tools/r8/internal/z3;->h:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 5

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/zI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/z3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/z3;->f:Lcom/android/tools/r8/graph/c4;

    iget-object v3, p0, Lcom/android/tools/r8/internal/z3;->d:Lcom/android/tools/r8/internal/zX;

    new-instance v4, Lcom/android/tools/r8/internal/JB1;

    invoke-direct {v4, p0, p1}, Lcom/android/tools/r8/internal/JB1;-><init>(Lcom/android/tools/r8/internal/z3;Ljava/util/Set;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/zI;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/zX;Ljava/util/function/Consumer;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/zI;->a(Ljava/util/Collection;)V

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/qx0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/z3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/z3;->f:Lcom/android/tools/r8/graph/c4;

    iget-object v3, p0, Lcom/android/tools/r8/internal/z3;->d:Lcom/android/tools/r8/internal/zX;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/qx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/zX;)V

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/qx0;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/F2;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/z3;->h:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 9

    .line 1
    const-string v0, "Propagate argument information for virtual methods"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/z3;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/IB1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/IB1;-><init>(Lcom/android/tools/r8/internal/z3;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/z3;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 6
    const-string v0, "Solve flow constraints"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/cD;

    iget-object v2, p0, Lcom/android/tools/r8/internal/z3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/internal/z3;->b:Lcom/android/tools/r8/internal/y70;

    iget-object v5, p0, Lcom/android/tools/r8/internal/z3;->c:Lcom/android/tools/r8/internal/Mw;

    iget-object v6, p0, Lcom/android/tools/r8/internal/z3;->d:Lcom/android/tools/r8/internal/zX;

    iget-object v7, p0, Lcom/android/tools/r8/internal/z3;->f:Lcom/android/tools/r8/graph/c4;

    iget-object v8, p0, Lcom/android/tools/r8/internal/z3;->e:Lcom/android/tools/r8/internal/bD;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/internal/cD;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/bD;)V

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cD;->a()Ljava/util/List;

    move-result-object p1

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/internal/cD;->g:Z

    if-nez v1, :cond_0

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Gx;

    .line 11
    invoke-static {v2}, Lcom/android/tools/r8/internal/dD;->a(Lcom/android/tools/r8/internal/Gx;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/cD;->a(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/cD;->a(Ljava/util/List;)V

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/Aj;

    iget-object v2, v0, Lcom/android/tools/r8/internal/cD;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, v0, Lcom/android/tools/r8/internal/cD;->b:Ljava/util/Set;

    iget-object v4, v0, Lcom/android/tools/r8/internal/cD;->d:Lcom/android/tools/r8/internal/Mw;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/tools/r8/internal/Aj;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/internal/Mw;Ljava/util/List;)V

    .line 15
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/Aj;->a(Ljava/util/concurrent/ExecutorService;)Ljava/util/Map;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/cD;->a(Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V

    .line 17
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/cD;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/cD;->a(Ljava/util/List;)V

    .line 19
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method
