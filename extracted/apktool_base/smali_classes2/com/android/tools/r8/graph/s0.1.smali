.class public final Lcom/android/tools/r8/graph/s0;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/H2;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/N4;->b()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/r3;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/s0;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/s0;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/s0;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/s0;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Ff;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/graph/Ff;-><init>(Lcom/android/tools/r8/graph/s0;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/s0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/g1;)I
    .locals 0

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)I
    .locals 0

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2

    .line 16
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/u0;->m0()[Lcom/android/tools/r8/graph/r0;

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p0, v0

    .line 18
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)I
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u5;)Ljava/util/ArrayList;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/Cf;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Cf;-><init>(Lcom/android/tools/r8/internal/pf;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/graph/s0;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 25
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/graph/s0;->a(Lcom/android/tools/r8/graph/u0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/graph/s0;->a(Lcom/android/tools/r8/graph/u0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    new-instance v1, Lcom/android/tools/r8/graph/Af;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/graph/Af;-><init>(Lcom/android/tools/r8/graph/s0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    new-instance v1, Lcom/android/tools/r8/graph/Bf;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/graph/Bf;-><init>(Lcom/android/tools/r8/graph/s0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 10
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/graph/s0;->a(Lcom/android/tools/r8/graph/u0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 11
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object p4

    .line 12
    invoke-interface {p3, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 13
    iget-object p3, p4, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    .line 14
    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    aget-object v1, p3, v0

    .line 15
    invoke-static {v1, p1, p2}, Lcom/android/tools/r8/graph/s0;->a(Lcom/android/tools/r8/graph/u0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/u5;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/Ef;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Ef;-><init>(Lcom/android/tools/r8/internal/pf;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/graph/s0;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/u5;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/graph/Df;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Df;-><init>(Lcom/android/tools/r8/internal/pf;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/android/tools/r8/graph/s0;->d:Ljava/util/ArrayList;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/tools/r8/graph/s0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/s0;->f:Z

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/tools/r8/graph/s0;

    iget-object v0, p1, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/N4;->b()Z

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/r3;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/s0;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
