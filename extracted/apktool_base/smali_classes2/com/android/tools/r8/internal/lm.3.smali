.class public final Lcom/android/tools/r8/internal/lm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Na;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/km;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lm;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/km;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/km;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/lm;->c:Lcom/android/tools/r8/internal/km;

    return-void
.end method

.method public static synthetic a(I)[Lcom/android/tools/r8/graph/g1;
    .locals 0

    .line 21
    new-array p0, p0, [Lcom/android/tools/r8/graph/g1;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    .line 1
    const-string p1, "Desugared library disable desugarer post processor"

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/lm;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->o3:Lcom/android/tools/r8/internal/hC;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/M2;

    .line 3
    iget-object p4, p0, Lcom/android/tools/r8/internal/lm;->b:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lcom/android/tools/r8/internal/lm;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;)[Lcom/android/tools/r8/graph/g1;

    move-result-object p4

    .line 8
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/g1;)V

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Lcom/android/tools/r8/internal/lm;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;)[Lcom/android/tools/r8/graph/g1;

    move-result-object p4

    .line 10
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/E0;->b([Lcom/android/tools/r8/graph/g1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 12
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/List;)[Lcom/android/tools/r8/graph/g1;
    .locals 5

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/lm;->c:Lcom/android/tools/r8/internal/km;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/internal/km;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/lm;->b:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/aj1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/aj1;-><init>()V

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/graph/g1;

    return-object p1
.end method
