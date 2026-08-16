.class public final Lcom/android/tools/r8/internal/kx0;
.super Lcom/android/tools/r8/internal/sd;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final n:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/jx0;)V
    .locals 6

    iget-object v4, p4, Lcom/android/tools/r8/internal/jx0;->a:Lcom/android/tools/r8/internal/bx0;

    iget-object v5, p4, Lcom/android/tools/r8/internal/jx0;->c:Lcom/android/tools/r8/internal/nx0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/sd;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/od;Lcom/android/tools/r8/internal/cW;)V

    iget-object p1, p4, Lcom/android/tools/r8/internal/jx0;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/kx0;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/kx0;->o:Z

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    check-cast v1, Lcom/android/tools/r8/internal/nx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nx0;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f1()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->g:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/kx0;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/sd;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;)Lcom/android/tools/r8/internal/Bq;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->g:Lcom/android/tools/r8/graph/c4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/H2;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/kx0;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->h:Lcom/android/tools/r8/internal/od;

    check-cast v0, Lcom/android/tools/r8/internal/bx0;

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/internal/bx0;->c:Ljava/util/IdentityHashMap;

    .line 7
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 10
    iget-object v5, v0, Lcom/android/tools/r8/internal/bx0;->f:Lcom/android/tools/r8/internal/r6;

    .line 11
    iget-object v5, v5, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 12
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 13
    check-cast v5, Lcom/android/tools/r8/graph/A2;

    if-eqz v5, :cond_1

    .line 14
    invoke-interface {v3, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    sget-boolean v5, Lcom/android/tools/r8/internal/bx0;->j:Z

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 16
    iget-object v5, v5, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 17
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 20
    iget-object v5, v5, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    .line 21
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->k:Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 4
    iget-object p1, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kx0;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/hi1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/hi1;-><init>(Lcom/android/tools/r8/internal/kx0;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/bt0;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/y1;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 5
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/sd;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sd;->i:Lcom/android/tools/r8/internal/cW;

    check-cast v0, Lcom/android/tools/r8/internal/nx0;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/internal/nx0;->a:Lcom/android/tools/r8/internal/o6;

    .line 9
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/ii1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ii1;-><init>(Lcom/android/tools/r8/internal/kx0;)V

    .line 11
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
