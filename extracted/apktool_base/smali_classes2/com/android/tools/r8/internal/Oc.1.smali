.class public abstract Lcom/android/tools/r8/internal/Oc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/ArrayDeque;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p2, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;Ljava/util/List;Ljava/util/Set;Ljava/util/ArrayDeque;)V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->p()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 45
    invoke-static {v1, p2, p3}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 47
    sget-boolean v0, Lcom/android/tools/r8/internal/Oc;->a:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 48
    :cond_2
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 52
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 54
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 55
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;II)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Oc;->a:Z

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p0, Lcom/android/tools/r8/internal/bE;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p4, v0, :cond_3

    .line 4
    instance-of p4, p0, Lcom/android/tools/r8/internal/bE;

    if-eqz p4, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p4

    .line 7
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result p4

    if-eqz p4, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 9
    invoke-static {p0, p1, p4, p2, p3}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/graph/y;I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/graph/y;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_4

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->s0()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->l0()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->u0()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->n0()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 14
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p4

    .line 16
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->s0()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->l0()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 19
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, p4, v2}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    goto :goto_1

    .line 20
    :cond_5
    instance-of v3, p2, Lcom/android/tools/r8/graph/g1;

    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->m0()Lcom/android/tools/r8/graph/g1;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-static {p0, p4, v2}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->v0()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 24
    sget-boolean v3, Lcom/android/tools/r8/internal/Oc;->a:Z

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 25
    :cond_8
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->o0()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-static {v3, p4, v2}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    .line 27
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 28
    invoke-static {p2, p0, p4, v2}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/graph/j1;Ljava/util/List;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    goto :goto_1

    .line 29
    :cond_9
    sget-boolean p0, Lcom/android/tools/r8/internal/Oc;->a:Z

    if-eqz p0, :cond_f

    .line 30
    :cond_a
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    .line 32
    sget-boolean p2, Lcom/android/tools/r8/internal/Oc;->a:Z

    if-nez p2, :cond_c

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 33
    :cond_c
    :goto_2
    invoke-virtual {p3, p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p2

    if-eqz p2, :cond_d

    return v1

    .line 34
    :cond_d
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 36
    sget p2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 37
    sget-object p2, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 38
    invoke-static {p0, p2, p4, v2}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/graph/j1;Ljava/util/List;Ljava/util/Set;Ljava/util/ArrayDeque;)V

    goto :goto_1

    :cond_e
    return v0

    .line 39
    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static b(Lcom/android/tools/r8/internal/hw;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;II)Z
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Oc;->a:Z

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Mo0;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p4, v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-static {p0, p1, p4, p2, p3}, Lcom/android/tools/r8/internal/Oc;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/graph/y;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method
