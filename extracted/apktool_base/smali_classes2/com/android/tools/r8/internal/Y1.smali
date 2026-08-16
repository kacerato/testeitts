.class public final Lcom/android/tools/r8/internal/Y1;
.super Lcom/android/tools/r8/internal/Wj;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/internal/Q1;

.field public final g:Lcom/android/tools/r8/internal/T1;

.field public final h:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/Q1;Lcom/android/tools/r8/internal/T1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Wj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Y1;->h:Ljava/util/IdentityHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Y1;->f:Lcom/android/tools/r8/internal/Q1;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Y1;->g:Lcom/android/tools/r8/internal/T1;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/V1;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Y1;->m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/V1;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/V1;->a(Lcom/android/tools/r8/internal/V1;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/M21;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/M21;-><init>(Lcom/android/tools/r8/internal/Y1;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final j(Lcom/android/tools/r8/graph/H2;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y1;->m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/V1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y1;->f:Lcom/android/tools/r8/internal/Q1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y1;->g:Lcom/android/tools/r8/internal/T1;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/V1;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->r()Lcom/android/tools/r8/graph/g;

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/e4;->a()I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, -0x7

    new-instance v5, Lcom/android/tools/r8/graph/e4;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-direct {v5, v4, v6, v7, v3}, Lcom/android/tools/r8/graph/e4;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/e4;

    iget-object v6, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-ne v6, v4, :cond_1

    invoke-interface {v3, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/internal/V1;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/internal/V1;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/N21;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/N21;-><init>(Lcom/android/tools/r8/internal/V1;)V

    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/V1;->b:Lcom/android/tools/r8/internal/Cq;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v3, Lcom/android/tools/r8/internal/O21;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/internal/O21;-><init>(Lcom/android/tools/r8/internal/Y1;Lcom/android/tools/r8/internal/V1;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/tools/r8/graph/c4;->a(Ljava/util/function/Predicate;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y1;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y1;->h:Ljava/util/IdentityHashMap;

    sget-object v1, Lcom/android/tools/r8/internal/W1;->a:Lcom/android/tools/r8/internal/W1;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/V1;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y1;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/X1;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/android/tools/r8/internal/W1;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/Y1;->i:Z

    if-nez p1, :cond_2

    instance-of p1, v0, Lcom/android/tools/r8/internal/V1;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/X1;->a()Lcom/android/tools/r8/internal/V1;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/V1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/V1;-><init>(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y1;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method
