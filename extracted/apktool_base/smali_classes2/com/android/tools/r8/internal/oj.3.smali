.class public final Lcom/android/tools/r8/internal/oj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/oj;->a:Lcom/android/tools/r8/internal/dH;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    .line 1
    const p0, 0x7fffffff

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)I
    .locals 4

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/M60;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/j1;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    const/4 v0, -0x1

    if-nez p0, :cond_2

    return v0

    .line 19
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/dex/t0;

    .line 20
    sget-boolean p1, Lcom/android/tools/r8/dex/t0;->k:Z

    if-nez p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/dex/t0;->g:Lcom/android/tools/r8/internal/oj;

    if-eqz p1, :cond_3

    goto :goto_2

    .line 22
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 23
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/tools/r8/dex/t0;->g:Lcom/android/tools/r8/internal/oj;

    .line 24
    iget-object p1, p0, Lcom/android/tools/r8/internal/oj;->a:Lcom/android/tools/r8/internal/dH;

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 26
    sget-boolean p0, Lcom/android/tools/r8/internal/oj;->b:Z

    if-nez p0, :cond_d

    invoke-static {p2}, Lcom/android/tools/r8/internal/oj;->c(Lcom/android/tools/r8/graph/H5;)V

    goto/16 :goto_4

    .line 27
    :cond_5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    .line 29
    sget-boolean v2, Lcom/android/tools/r8/internal/oj;->b:Z

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/W0;->o0()I

    move-result v3

    if-ne v3, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 30
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/tools/r8/internal/oj;->a:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/ij;

    if-eqz p0, :cond_b

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/ij;->b:Lcom/android/tools/r8/internal/DG;

    if-eqz v1, :cond_b

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {p1}, Lcom/android/tools/r8/internal/oj;->a([Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    .line 33
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p1

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/internal/ij;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/DG;->b(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/tools/r8/internal/AG;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AG;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    .line 36
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AG;->a()I

    move-result p1

    .line 37
    iget-object p0, p0, Lcom/android/tools/r8/internal/ij;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/mj;

    .line 38
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/mj;->b:Z

    if-eqz v1, :cond_d

    .line 39
    sget-boolean v1, Lcom/android/tools/r8/internal/ij;->c:Z

    if-nez v1, :cond_e

    iget p0, p0, Lcom/android/tools/r8/internal/mj;->a:I

    if-ne p1, p0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_b
    if-nez v2, :cond_d

    if-eqz p0, :cond_c

    goto :goto_4

    .line 40
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    :goto_4
    move p1, v0

    .line 41
    :cond_e
    :goto_5
    sget-boolean p0, Lcom/android/tools/r8/internal/oj;->b:Z

    if-nez p0, :cond_f

    if-eq p1, v0, :cond_f

    .line 42
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object p0

    .line 43
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/graph/J0;I)V

    :cond_f
    return p1
.end method

.method public static a([Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;
    .locals 5

    .line 135
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 136
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->L()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic a(I)Lcom/android/tools/r8/internal/kj;
    .locals 1

    .line 85
    new-instance v0, Lcom/android/tools/r8/internal/kj;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kj;-><init>(I)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/lj;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/oj;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->g()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/tools/r8/internal/To1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/To1;-><init>()V

    return-object p0
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/lj;
    .locals 4

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/lj;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance p0, Lcom/android/tools/r8/internal/Po1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Po1;-><init>()V

    return-object p0

    .line 8
    :cond_1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/dex/t0;

    .line 10
    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v2, v1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 12
    iget-object v2, v2, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 13
    new-instance v3, Lcom/android/tools/r8/internal/Qo1;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/Qo1;-><init>(Ljava/util/Map;Lcom/android/tools/r8/dex/t0;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 14
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Ro1;

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/Ro1;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Map;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ij;)Ljava/lang/Integer;
    .locals 0

    .line 130
    iget p0, p0, Lcom/android/tools/r8/internal/ij;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(ZLcom/android/tools/r8/internal/ij;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/ij;->a(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/J0;I)V
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {p0}, Lcom/android/tools/r8/internal/oj;->a([Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result p0

    .line 134
    sget-boolean v0, Lcom/android/tools/r8/internal/oj;->b:Z

    if-nez v0, :cond_1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/t0;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->g()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    .line 47
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/dH;

    const/16 v4, 0x10

    .line 48
    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 49
    iget-object v4, p1, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 50
    iget-object v4, v4, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    .line 51
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 52
    invoke-static {v5, p0}, Lcom/android/tools/r8/internal/iS;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Ljava/util/IdentityHashMap;

    move-result-object v5

    .line 53
    invoke-virtual {v5}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 54
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v1, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    .line 56
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    .line 57
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 58
    :cond_3
    invoke-static {v2, v7}, Lcom/android/tools/r8/internal/M60;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/j1;)Z

    move-result v8

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v0

    :goto_2
    if-nez v8, :cond_5

    goto :goto_0

    .line 59
    :cond_5
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v8

    .line 60
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v9

    if-nez v9, :cond_6

    .line 61
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    .line 62
    sget-boolean v10, Lcom/android/tools/r8/graph/W0;->d:Z

    .line 63
    new-instance v10, Lcom/android/tools/r8/graph/W0$a;

    .line 64
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/tools/r8/graph/L2;

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->r:Lcom/android/tools/r8/graph/O0$b;

    new-array v11, v1, [Lcom/android/tools/r8/graph/O0;

    aput-object v9, v11, v0

    invoke-direct {v10, v0, v7, v11}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    move-object v9, v10

    .line 65
    :cond_6
    sget-boolean v7, Lcom/android/tools/r8/internal/oj;->b:Z

    if-nez v7, :cond_8

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/W0;->o0()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v6

    if-ne v7, v6, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 66
    :cond_8
    :goto_3
    iget-object v6, v8, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {v6}, Lcom/android/tools/r8/internal/oj;->a([Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;

    move-result-object v6

    if-nez v6, :cond_9

    goto/16 :goto_0

    .line 67
    :cond_9
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v6

    .line 68
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 69
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/W0;->m0()Lcom/android/tools/r8/graph/X0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/X0;->h0()I

    move-result v7

    goto :goto_4

    .line 70
    :cond_a
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/W0;->o0()I

    move-result v7

    .line 71
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v8, v8

    .line 72
    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v10

    .line 73
    invoke-static {v7}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v11

    add-int/2addr v11, v10

    .line 74
    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/lit8 v7, v10, 0x1

    .line 75
    :goto_4
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/W0;->o0()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/android/tools/r8/internal/No1;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/No1;-><init>()V

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/kj;

    .line 76
    invoke-virtual {v8, v6, v7}, Lcom/android/tools/r8/internal/kj;->a(II)V

    goto/16 :goto_0

    .line 77
    :cond_b
    new-instance v0, Lcom/android/tools/r8/internal/dH;

    .line 78
    iget v1, v3, Lcom/android/tools/r8/internal/dH;->h:I

    .line 79
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 80
    new-instance v1, Lcom/android/tools/r8/internal/Oo1;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/internal/Oo1;-><init>(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/graph/y;)V

    invoke-interface {v3, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 81
    new-instance p0, Lcom/android/tools/r8/internal/oj;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/oj;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 82
    sget-boolean v0, Lcom/android/tools/r8/dex/t0;->k:Z

    if-nez v0, :cond_d

    .line 83
    iget-object v0, p1, Lcom/android/tools/r8/dex/t0;->g:Lcom/android/tools/r8/internal/oj;

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 84
    :cond_d
    :goto_5
    iput-object p0, p1, Lcom/android/tools/r8/dex/t0;->g:Lcom/android/tools/r8/internal/oj;

    :cond_e
    :goto_6
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/graph/y;Ljava/lang/Integer;Lcom/android/tools/r8/internal/kj;)V
    .locals 18

    move-object/from16 v0, p3

    .line 86
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget v1, v1, Lcom/android/tools/r8/internal/nJ$p;->q0:I

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->p0:Z

    .line 89
    sget-boolean v3, Lcom/android/tools/r8/internal/kj;->c:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/tools/r8/internal/kj;->b:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/kj;->b:Lcom/android/tools/r8/internal/dH;

    .line 91
    iget v4, v3, Lcom/android/tools/r8/internal/dH;->h:I

    .line 92
    new-array v5, v4, [I

    .line 93
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dH;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/YG;

    .line 94
    new-instance v6, Lcom/android/tools/r8/internal/XG;

    .line 95
    iget-object v3, v3, Lcom/android/tools/r8/internal/YG;->b:Lcom/android/tools/r8/internal/dH;

    .line 96
    invoke-direct {v6, v3}, Lcom/android/tools/r8/internal/XG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 97
    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/SH;->a(Lcom/android/tools/r8/internal/PH;[I)I

    .line 98
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 99
    new-instance v3, Lcom/android/tools/r8/internal/jj;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/jj;-><init>()V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_b

    .line 100
    aget v9, v5, v7

    .line 101
    iget-object v10, v0, Lcom/android/tools/r8/internal/kj;->b:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/nj;

    .line 102
    sget-boolean v11, Lcom/android/tools/r8/internal/kj;->c:Z

    if-nez v11, :cond_3

    iget v11, v10, Lcom/android/tools/r8/internal/nj;->a:I

    if-ne v9, v11, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_3
    :goto_2
    iget v11, v3, Lcom/android/tools/r8/internal/jj;->f:I

    iget v12, v10, Lcom/android/tools/r8/internal/nj;->c:I

    add-int/2addr v11, v12

    iget v12, v3, Lcom/android/tools/r8/internal/jj;->e:I

    iget v13, v10, Lcom/android/tools/r8/internal/nj;->b:I

    add-int/2addr v12, v13

    const-wide/32 v14, 0x7fffffff

    if-gez v1, :cond_4

    move/from16 v16, v7

    move/from16 v17, v9

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v9, 0x1

    move/from16 v16, v7

    int-to-long v6, v13

    move/from16 v17, v9

    int-to-long v8, v11

    mul-long/2addr v6, v8

    int-to-long v8, v12

    sub-long/2addr v6, v8

    cmp-long v8, v6, v14

    if-lez v8, :cond_5

    const v6, 0x7fffffff

    goto :goto_3

    :cond_5
    long-to-int v6, v6

    :goto_3
    if-gt v6, v1, :cond_6

    goto :goto_4

    .line 104
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/jj;->a()V

    .line 105
    :goto_4
    iget v6, v3, Lcom/android/tools/r8/internal/jj;->f:I

    iget v7, v10, Lcom/android/tools/r8/internal/nj;->c:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/tools/r8/internal/jj;->f:I

    .line 106
    iget v7, v3, Lcom/android/tools/r8/internal/jj;->e:I

    iget v8, v10, Lcom/android/tools/r8/internal/nj;->b:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/android/tools/r8/internal/jj;->e:I

    add-int/lit8 v9, v17, 0x1

    if-gez v1, :cond_7

    goto :goto_6

    :cond_7
    int-to-long v10, v9

    int-to-long v13, v6

    mul-long/2addr v10, v13

    int-to-long v12, v7

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-lez v12, :cond_8

    const v13, 0x7fffffff

    goto :goto_5

    :cond_8
    long-to-int v13, v10

    :goto_5
    if-gt v13, v1, :cond_9

    :goto_6
    if-nez v2, :cond_a

    if-le v7, v9, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v10, v17

    const/4 v6, 0x0

    goto :goto_8

    .line 107
    :cond_a
    :goto_7
    new-instance v9, Lcom/android/tools/r8/internal/mj;

    move/from16 v10, v17

    const/4 v8, 0x1

    invoke-direct {v9, v10, v8, v6, v7}, Lcom/android/tools/r8/internal/mj;-><init>(IZII)V

    iput-object v9, v3, Lcom/android/tools/r8/internal/jj;->b:Lcom/android/tools/r8/internal/mj;

    const/4 v6, 0x0

    .line 108
    iput v6, v3, Lcom/android/tools/r8/internal/jj;->d:I

    goto :goto_9

    .line 109
    :goto_8
    iput v10, v3, Lcom/android/tools/r8/internal/jj;->d:I

    :goto_9
    add-int/lit8 v7, v16, 0x1

    goto/16 :goto_1

    .line 110
    :cond_b
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/jj;->a()V

    .line 111
    new-instance v1, Lcom/android/tools/r8/internal/ij;

    iget v0, v0, Lcom/android/tools/r8/internal/kj;->a:I

    .line 112
    iget-object v2, v3, Lcom/android/tools/r8/internal/jj;->a:Lcom/android/tools/r8/internal/DG;

    .line 113
    iget v4, v2, Lcom/android/tools/r8/internal/DG;->c:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_d

    if-ne v4, v5, :cond_c

    .line 114
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/DG;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/oG;

    .line 115
    new-instance v4, Lcom/android/tools/r8/internal/CG;

    .line 116
    iget-object v2, v2, Lcom/android/tools/r8/internal/oG;->b:Lcom/android/tools/r8/internal/DG;

    .line 117
    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/CG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    .line 118
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    .line 119
    check-cast v2, Lcom/android/tools/r8/internal/mj;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/mj;->b:Z

    if-eqz v2, :cond_c

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    goto :goto_b

    .line 120
    :cond_d
    :goto_a
    iget-object v2, v3, Lcom/android/tools/r8/internal/jj;->a:Lcom/android/tools/r8/internal/DG;

    .line 121
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/ij;-><init>(ILcom/android/tools/r8/internal/DG;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .line 122
    invoke-interface {v0, v2, v1}, Lcom/android/tools/r8/internal/SG;->a(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 15
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 123
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    .line 126
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public static c(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/oj;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/So1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/So1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/qK;->c(Ljava/lang/Iterable;)I

    move-result p0

    const/4 v0, 0x1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/oj;->a:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    new-instance v1, Lcom/android/tools/r8/internal/Lo1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Lo1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 129
    new-instance v1, Lcom/android/tools/r8/internal/Mo1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Mo1;-><init>(Z)V

    const-string v2, "\n"

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/oj;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
