.class public final Lcom/android/tools/r8/shaking/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/yZ;
.implements Lcom/android/tools/r8/internal/AZ;
.implements Lcom/android/tools/r8/internal/BZ;
.implements Lcom/android/tools/r8/internal/EZ;
.implements Lcom/android/tools/r8/internal/FZ;
.implements Lcom/android/tools/r8/internal/jx;


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public g:Z

.field public final h:Lcom/android/tools/r8/internal/xr0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/V0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/tools/r8/shaking/V0;->a(Ljava/util/Set;Z)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/V0;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/tools/r8/shaking/V0;->a(Ljava/util/Set;Z)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/V0;->c:Ljava/util/HashMap;

    iget-object p2, p2, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/vw;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->E()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_2
    iput-object p2, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    new-instance p2, Lcom/android/tools/r8/internal/xr0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    invoke-direct {p2, p1, p3, v0}, Lcom/android/tools/r8/internal/xr0;-><init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V

    iput-object p2, p0, Lcom/android/tools/r8/shaking/V0;->h:Lcom/android/tools/r8/internal/xr0;

    return-void
.end method

.method public static a(Ljava/util/Set;Z)Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/shaking/T0;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/T0;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/G3;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/f3;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_0

    .line 5
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 6
    new-instance v4, Lcom/android/tools/r8/internal/jK0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/jK0;-><init>()V

    invoke-static {v4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/z4;
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    new-instance v1, Lcom/android/tools/r8/shaking/A4;

    .line 20
    iget-object v2, p1, Lcom/android/tools/r8/shaking/N;->i:Lcom/android/tools/r8/graph/Y5;

    .line 21
    invoke-direct {v1, v0, p1, v2}, Lcom/android/tools/r8/shaking/A4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/Y5;)V

    .line 22
    new-instance v0, Lcom/android/tools/r8/shaking/U0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/V0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/V0;->h:Lcom/android/tools/r8/internal/xr0;

    invoke-direct {v0, v2, p1, v1, v3}, Lcom/android/tools/r8/shaking/U0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/A4;Lcom/android/tools/r8/internal/xr0;)V

    .line 23
    const-string p1, "If rules with members"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 25
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/V0;->a(Lcom/android/tools/r8/shaking/U0;Z)V

    .line 28
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 29
    const-string p1, "If rules without members"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 31
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    move v2, v3

    goto :goto_1

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 v2, p1, 0x1

    :goto_1
    if-eqz v2, :cond_5

    .line 33
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/shaking/V0;->a(Lcom/android/tools/r8/shaking/U0;ZLcom/android/tools/r8/internal/ns0;)V

    .line 34
    :cond_5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 35
    new-instance p1, Lcom/android/tools/r8/shaking/z4;

    iget-object p2, v1, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    iget-object p3, v1, Lcom/android/tools/r8/shaking/I4;->m:Ljava/util/IdentityHashMap;

    iget-object v0, v1, Lcom/android/tools/r8/shaking/I4;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, v1, Lcom/android/tools/r8/shaking/I4;->z:Lcom/android/tools/r8/internal/h80;

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/tools/r8/shaking/z4;-><init>(Lcom/android/tools/r8/shaking/A;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/h80;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 100
    iget-boolean p2, p0, Lcom/android/tools/r8/shaking/V0;->g:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 101
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/L0;)V
    .locals 0

    .line 97
    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 106
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/V0;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 103
    iget-boolean p2, p0, Lcom/android/tools/r8/shaking/V0;->g:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 104
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/A4;Lcom/android/tools/r8/shaking/N;Ljava/util/Collection;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 7
    new-instance v0, Lcom/android/tools/r8/shaking/U0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/V0;->h:Lcom/android/tools/r8/internal/xr0;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/tools/r8/shaking/U0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/A4;Lcom/android/tools/r8/internal/xr0;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->b:Ljava/util/HashMap;

    .line 9
    sget-object p2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    .line 10
    invoke-virtual {v0, p1, p4, p3, p2}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/HashMap;Lcom/android/tools/r8/graph/V;Ljava/lang/Iterable;Ljava/util/function/Predicate;)V

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->c:Ljava/util/HashMap;

    new-instance p2, Lcom/android/tools/r8/internal/kH0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/kH0;-><init>()V

    .line 12
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object p4

    .line 13
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 14
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 15
    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    sget-boolean v3, Lcom/android/tools/r8/internal/TU;->a:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_2
    invoke-virtual {v0, p1, v1, p5}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/HashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/L0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 9

    .line 60
    iget-boolean p2, p0, Lcom/android/tools/r8/shaking/V0;->g:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 61
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/V0;->g:Z

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    if-eqz p2, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->a:Lcom/android/tools/r8/graph/y;

    .line 63
    new-instance v8, Lcom/android/tools/r8/shaking/A4;

    .line 64
    iget-object v2, p1, Lcom/android/tools/r8/shaking/N;->i:Lcom/android/tools/r8/graph/Y5;

    .line 65
    invoke-direct {v8, v1, p1, v2}, Lcom/android/tools/r8/shaking/A4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/Y5;)V

    .line 66
    const-string v1, "Apply if rules to classpath classes"

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/android/tools/r8/shaking/V0;->a:Lcom/android/tools/r8/graph/y;

    .line 68
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    .line 69
    iget-object v5, v2, Lcom/android/tools/r8/graph/g3;->l:Lcom/android/tools/r8/internal/XB;

    .line 70
    sget-object v6, Lcom/android/tools/r8/graph/V;->d:Lcom/android/tools/r8/graph/V;

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v7, p4

    .line 71
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/shaking/V0;->a(Lcom/android/tools/r8/shaking/A4;Lcom/android/tools/r8/shaking/N;Ljava/util/Collection;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/ns0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 73
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->U:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    const-string v1, "Apply if rules to library classes"

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/android/tools/r8/shaking/V0;->a:Lcom/android/tools/r8/graph/y;

    .line 76
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g3;->k()Ljava/util/Collection;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/graph/V;->e:Lcom/android/tools/r8/graph/V;

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v7, p4

    .line 77
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/shaking/V0;->a(Lcom/android/tools/r8/shaking/A4;Lcom/android/tools/r8/shaking/N;Ljava/util/Collection;Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/ns0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 79
    :goto_1
    new-instance v1, Lcom/android/tools/r8/shaking/z4;

    iget-object v2, v8, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    iget-object v3, v8, Lcom/android/tools/r8/shaking/I4;->m:Ljava/util/IdentityHashMap;

    iget-object v4, v8, Lcom/android/tools/r8/shaking/I4;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 80
    invoke-static {v4}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v8, Lcom/android/tools/r8/shaking/I4;->z:Lcom/android/tools/r8/internal/h80;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/tools/r8/shaking/z4;-><init>(Lcom/android/tools/r8/shaking/A;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/h80;)V

    .line 81
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/z4;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 82
    :try_start_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :catchall_2
    move-exception p1

    .line 84
    :try_start_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    .line 86
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, p3

    goto :goto_5

    :cond_3
    if-eqz p2, :cond_4

    .line 87
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_5

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    :goto_5
    if-nez v1, :cond_7

    .line 89
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    if-eqz p2, :cond_6

    .line 90
    iget-object p3, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    move p3, v0

    goto :goto_6

    .line 91
    :cond_6
    iget-object p3, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v0

    :goto_6
    if-nez p3, :cond_7

    goto :goto_7

    .line 92
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N;->e()J

    move-result-wide v0

    .line 93
    new-instance p3, Lcom/android/tools/r8/shaking/lb;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/tools/r8/shaking/lb;-><init>(Lcom/android/tools/r8/shaking/V0;Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/internal/ns0;)V

    .line 94
    const-string p2, "Find consequent items for -if rules..."

    invoke-virtual {p4, p2, p3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/z4;

    .line 95
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/z4;)V

    .line 96
    sget-boolean p2, Lcom/android/tools/r8/shaking/V0;->i:Z

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N;->e()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/U0;Z)V
    .locals 5

    if-eqz p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 38
    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->b:Ljava/util/HashMap;

    sget-object v0, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    const/4 v3, 0x2

    .line 39
    new-array v3, v3, [Ljava/lang/Iterable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v1

    .line 40
    new-instance v2, Lcom/android/tools/r8/shaking/mb;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/mb;-><init>(Lcom/android/tools/r8/shaking/V0;)V

    .line 41
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/HashMap;Lcom/android/tools/r8/graph/V;Ljava/lang/Iterable;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->b:Ljava/util/HashMap;

    sget-object v0, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    .line 43
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/nb;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/nb;-><init>(Ljava/util/Set;)V

    .line 44
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/HashMap;Lcom/android/tools/r8/graph/V;Ljava/lang/Iterable;Ljava/util/function/Predicate;)V

    .line 45
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/U0;ZLcom/android/tools/r8/internal/ns0;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 49
    new-instance p2, Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p2, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/shaking/ob;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/ob;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/shaking/pb;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/pb;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/HashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance p2, Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/shaking/qb;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/qb;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/HashMap;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/ns0;)V

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/V0;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    .line 47
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
