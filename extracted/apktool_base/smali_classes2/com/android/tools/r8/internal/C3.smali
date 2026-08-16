.class public final Lcom/android/tools/r8/internal/C3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/c4;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lcom/android/tools/r8/internal/Gg;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/C3;->b:Lcom/android/tools/r8/graph/c4;

    iput-object p3, p0, Lcom/android/tools/r8/internal/C3;->c:Ljava/util/IdentityHashMap;

    new-instance p2, Lcom/android/tools/r8/internal/Gg;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Gg;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/C3;->d:Lcom/android/tools/r8/internal/Gg;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/F3;Lcom/android/tools/r8/internal/Ef;Ljava/util/function/Consumer;Ljava/util/Set;)Lcom/android/tools/r8/internal/t3;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/tools/r8/internal/B3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/B3;-><init>(Lcom/android/tools/r8/internal/C3;Lcom/android/tools/r8/internal/F3;Lcom/android/tools/r8/internal/Ef;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/C3;->c:Ljava/util/IdentityHashMap;

    .line 42
    sget-object p2, Lcom/android/tools/r8/internal/Dq;->c:Lcom/android/tools/r8/internal/Dq;

    .line 43
    invoke-interface {p1, p4, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Dq;

    .line 44
    invoke-virtual {v0, p4, p1, p3}, Lcom/android/tools/r8/internal/B3;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/Dq;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/t3;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/u3;
    .locals 7

    .line 1
    const-string v0, "Optimize components"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    sget-object v1, Lcom/android/tools/r8/internal/E3;->a:Lcom/android/tools/r8/internal/E3;

    .line 4
    invoke-static {v0}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v2, v0, Lcom/android/tools/r8/internal/b10;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/O70;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/O70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v0

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/dB0;

    invoke-direct {v2, p0, v1, v0, p2}, Lcom/android/tools/r8/internal/dB0;-><init>(Lcom/android/tools/r8/internal/C3;Lcom/android/tools/r8/internal/F3;Lcom/android/tools/r8/internal/Ef;Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p2

    .line 12
    invoke-static {p1, v2, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {v1, p2}, Lcom/android/tools/r8/internal/F3;->a(Lcom/android/tools/r8/graph/y;)V

    .line 14
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 15
    const-string p2, "Build graph lens"

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/C3;->a:Lcom/android/tools/r8/graph/y;

    .line 17
    sget-boolean p3, Lcom/android/tools/r8/internal/u3;->o:Z

    .line 18
    new-instance p3, Lcom/android/tools/r8/internal/t3;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/t3;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 19
    new-instance p2, Lcom/android/tools/r8/internal/eB0;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/eB0;-><init>(Lcom/android/tools/r8/internal/t3;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 20
    iget-object p1, p3, Lcom/android/tools/r8/internal/t3;->b:Lcom/android/tools/r8/internal/r6;

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 22
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p3, Lcom/android/tools/r8/internal/t3;->c:Lcom/android/tools/r8/internal/r6;

    .line 24
    iget-object p1, p1, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 25
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p3, Lcom/android/tools/r8/internal/t3;->d:Ljava/util/IdentityHashMap;

    .line 27
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_5

    .line 28
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/u3;

    iget-object v0, p3, Lcom/android/tools/r8/internal/t3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p3, Lcom/android/tools/r8/internal/t3;->b:Lcom/android/tools/r8/internal/r6;

    iget-object v2, p3, Lcom/android/tools/r8/internal/t3;->c:Lcom/android/tools/r8/internal/r6;

    iget-object v3, p3, Lcom/android/tools/r8/internal/t3;->d:Ljava/util/IdentityHashMap;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/u3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/internal/UY;Ljava/util/IdentityHashMap;)V

    .line 29
    iget-object v0, p3, Lcom/android/tools/r8/internal/t3;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/proto/j;

    .line 31
    iget-object v3, p3, Lcom/android/tools/r8/internal/t3;->a:Lcom/android/tools/r8/graph/y;

    .line 32
    iget-object v4, p1, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 33
    iget-object v5, v2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 34
    invoke-virtual {v5, v3, p1, v4}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/u3;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/c;

    move-result-object v5

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/proto/j;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 36
    iget-object v6, v2, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    invoke-virtual {v6, v3, p1, v4}, Lcom/android/tools/r8/graph/proto/k;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/proto/k;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, p2

    .line 37
    :goto_2
    iget-object v4, v2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    if-ne v5, v4, :cond_5

    iget-object v4, v2, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    if-eq v3, v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v2

    goto :goto_4

    .line 38
    :cond_5
    :goto_3
    new-instance v4, Lcom/android/tools/r8/graph/proto/j;

    iget-object v6, v2, Lcom/android/tools/r8/graph/proto/j;->a:Ljava/util/List;

    invoke-direct {v4, v6, v3, v5}, Lcom/android/tools/r8/graph/proto/j;-><init>(Ljava/util/List;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/graph/proto/c;)V

    :goto_4
    if-eq v4, v2, :cond_2

    .line 39
    invoke-interface {v1, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-object p2, p1

    .line 40
    :goto_5
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p2
.end method
