.class public Lcom/android/tools/r8/internal/hf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/internal/nC;

.field public final c:Lcom/android/tools/r8/internal/nC;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hf0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/hf0;->a:Lcom/android/tools/r8/internal/nC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hf0;->b:Lcom/android/tools/r8/internal/nC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hf0;->c:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/references/PackageReference;)V
    .locals 0

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/references/PackageReference;->getPackageBinaryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/references/PackageReference;->getPackageBinaryName()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/gf0;
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 3
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

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/hf0;->a:Lcom/android/tools/r8/internal/nC;

    new-instance v2, Lcom/android/tools/r8/internal/Tc1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Tc1;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/Uc1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/tools/r8/internal/Uc1;-><init>(Lcom/android/tools/r8/internal/hf0;Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;)V

    monitor-enter p1

    .line 11
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/gf0;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/tools/r8/internal/gf0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Lcom/android/tools/r8/graph/u1;)V

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/hf0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/Vc1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Vc1;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/references/PackageReference;

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/references/PackageReference;",
            "Lcom/android/tools/r8/references/PackageReference;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hf0;->a:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/hf0;->a(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/internal/hf0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/references/PackageReference;

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/references/PackageReference;->getPackageBinaryName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/references/PackageReference;->getPackageBinaryName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 37
    iget-object v1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    .line 38
    invoke-virtual {v1, p2, v0, p3}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    .line 39
    sget-boolean p3, Lcom/android/tools/r8/internal/hf0;->e:Z

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_1
    :goto_0
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 44
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x2e

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 46
    const-string v4, ""

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/hf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 48
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/hf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)V
    .locals 7

    .line 17
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 18
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/hf0;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)V

    return-void

    .line 20
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/hf0;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hf0;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->s0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/ClassReference;

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 23
    :cond_4
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/hf0;->a(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/hf0;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/PackageReference;

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/references/PackageReference;->getPackageBinaryName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 27
    iget-object v1, p4, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    .line 28
    invoke-virtual {v1, p3, v0, p1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 29
    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/hf0;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 31
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/hf0;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/hf0;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
