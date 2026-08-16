.class public Lcom/android/tools/r8/naming/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/naming/n0;->b:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1}, Lcom/android/tools/r8/naming/o0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v1

    const-string v2, "ComputeInterfaces"

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Y5;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v3, "MinifyClasses"

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v3, Lcom/android/tools/r8/naming/f;

    iget-object v4, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/WR;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/android/tools/r8/naming/i0;

    iget-object v6, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/naming/i0;-><init>(Lcom/android/tools/r8/graph/y;)V

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/android/tools/r8/naming/j0;

    iget-object v6, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/naming/j0;-><init>(Lcom/android/tools/r8/graph/y;)V

    :goto_1
    iget-object v6, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/tools/r8/naming/f;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/j0;Ljava/util/Collection;)V

    invoke-virtual {v3, p2}, Lcom/android/tools/r8/naming/f;->a(Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/naming/d;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    if-nez v0, :cond_3

    new-instance v4, Lcom/android/tools/r8/naming/f0;

    iget-object v5, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v6, Lcom/android/tools/r8/naming/X;

    sget-object v7, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/naming/X;-><init>(Ljava/util/Map;)V

    new-instance v8, Lcom/android/tools/r8/naming/x;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/naming/x;-><init>(Ljava/util/Map;)V

    invoke-direct {v4, v5, v3, v6, v8}, Lcom/android/tools/r8/naming/f0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/d;Lcom/android/tools/r8/naming/X;Lcom/android/tools/r8/naming/x;)V

    iget-object v5, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/naming/r0;->a(Ljava/util/Collection;Lcom/android/tools/r8/graph/u1;)V

    :cond_3
    new-instance v4, Lcom/android/tools/r8/naming/m0;

    iget-object v5, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/naming/m0;-><init>(Lcom/android/tools/r8/graph/y;)V

    const-string v5, "MinifyMethods"

    invoke-virtual {p2, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v5, Lcom/android/tools/r8/naming/Z;

    iget-object v6, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v5, v6, v4}, Lcom/android/tools/r8/naming/Z;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;)V

    const-string v6, "Phase 1"

    invoke-virtual {p2, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/Z;->e()V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v6, "Phase 2"

    invoke-virtual {p2, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v6, Lcom/android/tools/r8/naming/K;

    iget-object v7, v5, Lcom/android/tools/r8/naming/Z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v8, v5, Lcom/android/tools/r8/naming/Z;->d:Lcom/android/tools/r8/naming/Y;

    invoke-direct {v6, v7, v8, v1}, Lcom/android/tools/r8/naming/K;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/Y;Lcom/android/tools/r8/graph/Y5;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v7, "Phase 3"

    invoke-virtual {p2, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v6, p2, v2}, Lcom/android/tools/r8/naming/K;->a(Lcom/android/tools/r8/internal/ns0;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v6, "Phase 4"

    invoke-virtual {p2, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/Z;->a()V

    invoke-virtual {v5}, Lcom/android/tools/r8/naming/Z;->d()V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    new-instance v6, Lcom/android/tools/r8/naming/X;

    iget-object v5, v5, Lcom/android/tools/r8/naming/Z;->c:Ljava/util/IdentityHashMap;

    invoke-direct {v6, v5}, Lcom/android/tools/r8/naming/X;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    if-nez v0, :cond_4

    new-instance v7, Lcom/android/tools/r8/naming/f0;

    iget-object v8, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v9, Lcom/android/tools/r8/naming/x;

    sget-object v10, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-direct {v9, v10}, Lcom/android/tools/r8/naming/x;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v8, v3, v6, v9}, Lcom/android/tools/r8/naming/f0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/d;Lcom/android/tools/r8/naming/X;Lcom/android/tools/r8/naming/x;)V

    iget-object v8, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/naming/r0;->a(Ljava/util/Collection;Lcom/android/tools/r8/graph/u1;)V

    :cond_4
    const-string v7, "MinifyFields"

    invoke-virtual {p2, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v7, Lcom/android/tools/r8/naming/z;

    iget-object v8, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v7, v8, v1, v4}, Lcom/android/tools/r8/naming/z;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/naming/m0;)V

    invoke-virtual {v7, p2, v2}, Lcom/android/tools/r8/naming/z;->a(Lcom/android/tools/r8/internal/ns0;Ljava/util/List;)Lcom/android/tools/r8/naming/x;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    const-string v2, "non-rebound-references"

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    iget-object v2, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v1, Lcom/android/tools/r8/naming/x;->a:Ljava/lang/Object;

    invoke-direct {v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iget-object v7, v1, Lcom/android/tools/r8/naming/x;->a:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    new-instance v8, Lcom/android/tools/r8/naming/g0;

    invoke-direct {v8, v4, v2, v7}, Lcom/android/tools/r8/naming/g0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ConcurrentHashMap;)V

    new-instance v9, Lcom/android/tools/r8/graph/R5;

    invoke-direct {v9, v2, v8}, Lcom/android/tools/r8/graph/R5;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Q5;)V

    invoke-virtual {v9, p1}, Lcom/android/tools/r8/graph/R5;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object p1, v1, Lcom/android/tools/r8/naming/x;->a:Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v5, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    new-instance p1, Lcom/android/tools/r8/naming/f0;

    iget-object p2, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p1, p2, v3, v6, v1}, Lcom/android/tools/r8/naming/f0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/d;Lcom/android/tools/r8/naming/X;Lcom/android/tools/r8/naming/x;)V

    if-nez v0, :cond_5

    iget-object p2, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/naming/r0;->a(Ljava/util/Collection;Lcom/android/tools/r8/graph/u1;)V

    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ$p;->C:Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/tools/r8/naming/n0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p1, p2, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    return-void
.end method
