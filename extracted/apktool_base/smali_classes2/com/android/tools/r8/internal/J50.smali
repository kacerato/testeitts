.class public Lcom/android/tools/r8/internal/J50;
.super Lcom/android/tools/r8/internal/qB;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/m80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/m80;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;",
            "Lcom/android/tools/r8/internal/m80;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/qB;-><init>(Lcom/android/tools/r8/graph/y;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/J50;->f:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/J50;->e:Lcom/android/tools/r8/internal/m80;

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
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/J50;->e:Lcom/android/tools/r8/internal/m80;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 9
    sget-boolean v2, Lcom/android/tools/r8/internal/J50;->f:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/J50;->e:Lcom/android/tools/r8/internal/m80;

    new-instance v1, Lcom/android/tools/r8/internal/cJ0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/cJ0;-><init>(Lcom/android/tools/r8/internal/J50;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

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

    new-instance v3, Lcom/android/tools/r8/internal/dJ0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/dJ0;-><init>(Lcom/android/tools/r8/internal/J50;)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/A8;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/android/tools/r8/internal/J50;->e:Lcom/android/tools/r8/internal/m80;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/gB0;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/gB0;-><init>(Lcom/android/tools/r8/internal/m80;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/rB;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D00;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Predicate;)V

    invoke-virtual {p1, v6}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method
