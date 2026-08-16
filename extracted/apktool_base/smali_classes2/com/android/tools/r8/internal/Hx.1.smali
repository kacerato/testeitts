.class public final Lcom/android/tools/r8/internal/Hx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/kB;

.field public final c:Lcom/android/tools/r8/internal/Mw;

.field public final d:Lcom/android/tools/r8/internal/zX;

.field public final e:Lcom/android/tools/r8/internal/bD;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;Lcom/android/tools/r8/internal/bD;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hx;->f:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hx;->g:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hx;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Hx;->b:Lcom/android/tools/r8/internal/kB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Hx;->c:Lcom/android/tools/r8/internal/Mw;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Hx;->d:Lcom/android/tools/r8/internal/zX;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Hx;->e:Lcom/android/tools/r8/internal/bD;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;ILjava/lang/Integer;Lcom/android/tools/r8/internal/Kx;)Lcom/android/tools/r8/internal/Kx;
    .locals 0

    if-eqz p4, :cond_0

    return-object p4

    .line 115
    :cond_0
    new-instance p3, Lcom/android/tools/r8/internal/Kx;

    .line 116
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/tools/r8/internal/Kx;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;ILcom/android/tools/r8/graph/M2;)V

    return-object p3
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Ix;
    .locals 1

    .line 57
    new-instance v0, Lcom/android/tools/r8/internal/Ix;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Ix;-><init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Hx;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/BH0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/BH0;-><init>(Lcom/android/tools/r8/internal/Hx;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->e:Lcom/android/tools/r8/internal/bD;

    .line 34
    iget-object v0, v0, Lcom/android/tools/r8/internal/bD;->c:Ljava/util/HashMap;

    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Ix;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->f:Ljava/util/LinkedHashMap;

    .line 108
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    new-instance v2, Lcom/android/tools/r8/internal/yH0;

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/internal/yH0;-><init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p1

    .line 109
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ix;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/Kx;
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->g:Ljava/util/LinkedHashMap;

    .line 111
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/bG0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bG0;-><init>()V

    invoke-static {v2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v2

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/SG;

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/EH0;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/tools/r8/internal/EH0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;I)V

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Kx;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Q5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 83
    invoke-interface {p3}, Lcom/android/tools/r8/internal/ZC;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p3}, Lcom/android/tools/r8/internal/ZC;->D()Lcom/android/tools/r8/internal/Pw;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/Pw;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Hx;->h:Z

    if-nez v0, :cond_2

    invoke-interface {p3}, Lcom/android/tools/r8/internal/ZC;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 86
    :cond_2
    :goto_0
    invoke-interface {p3}, Lcom/android/tools/r8/internal/ZC;->C()Lcom/android/tools/r8/internal/aX;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/aX;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Pw;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 87
    sget-boolean v0, Lcom/android/tools/r8/internal/Hx;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 88
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hx;->a:Lcom/android/tools/r8/graph/y;

    .line 89
    iget-object p1, p1, Lcom/android/tools/r8/internal/Pw;->a:Lcom/android/tools/r8/graph/l1;

    .line 90
    invoke-interface {v1, p1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    sget-boolean v1, Lcom/android/tools/r8/graph/F5;->f:Z

    if-eqz p1, :cond_2

    .line 91
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 92
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->c:Lcom/android/tools/r8/internal/Mw;

    .line 95
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    .line 96
    instance-of v1, v0, Lcom/android/tools/r8/internal/zv0;

    if-eqz v1, :cond_6

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 98
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 99
    iget-object p1, p2, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/Jx;

    .line 100
    iget-object p3, p3, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 101
    :cond_5
    iget-object p1, p2, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 102
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Jx;->a(Lcom/android/tools/r8/internal/Iw0;)V

    .line 103
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 104
    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Ix;

    move-result-object p1

    .line 105
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/Jx;->a(Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Jx;)V

    .line 106
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aX;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)Lcom/android/tools/r8/internal/Zs0;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hx;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 5
    sget-boolean p2, Lcom/android/tools/r8/internal/Hx;->h:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/tools/r8/internal/Hx;->b:Lcom/android/tools/r8/internal/kB;

    .line 6
    iget-object p2, p2, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    .line 8
    sget-boolean p3, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez p3, :cond_2

    .line 9
    iget-object p2, p2, Lcom/android/tools/r8/ir/optimize/W;->h:Ljava/util/Set;

    .line 10
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hx;->d:Lcom/android/tools/r8/internal/zX;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 16
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1

    .line 19
    :cond_5
    sget-boolean v2, Lcom/android/tools/r8/internal/Hx;->h:Z

    if-nez v2, :cond_7

    invoke-interface {v1}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_7
    :goto_2
    invoke-interface {v1}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    iget-object v2, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iget v3, p1, Lcom/android/tools/r8/internal/aX;->b:I

    iget-boolean v4, p1, Lcom/android/tools/r8/internal/aX;->c:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jx;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 23
    iget-object p1, p2, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/Jx;

    .line 24
    iget-object p3, p3, Lcom/android/tools/r8/internal/Jx;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 25
    :cond_8
    iget-object p1, p2, Lcom/android/tools/r8/internal/Jx;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 26
    sget-object p1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Jx;->a(Lcom/android/tools/r8/internal/Iw0;)V

    .line 27
    sget-object p1, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p1

    .line 28
    :cond_9
    iget p1, p1, Lcom/android/tools/r8/internal/aX;->b:I

    .line 29
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/Kx;

    move-result-object p1

    .line 30
    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/Jx;->a(Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Jx;)V

    .line 31
    sget-object p1, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Jx;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 82
    new-instance v0, Lcom/android/tools/r8/internal/DH0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/DH0;-><init>(Lcom/android/tools/r8/internal/Hx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->c:Lcom/android/tools/r8/internal/Mw;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result v1

    if-nez v1, :cond_6

    .line 41
    instance-of v1, v0, Lcom/android/tools/r8/internal/zv0;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Ix;

    move-result-object p1

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Hx;->e:Lcom/android/tools/r8/internal/bD;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/ZC;

    .line 47
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ZC;->x()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ZC;->D()Lcom/android/tools/r8/internal/Pw;

    move-result-object v3

    .line 49
    sget-object v4, Lcom/android/tools/r8/internal/AB;->a:Lcom/android/tools/r8/internal/AB;

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/Pw;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v3

    goto :goto_0

    .line 50
    :cond_3
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ZC;->o()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 51
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ZC;->C()Lcom/android/tools/r8/internal/aX;

    move-result-object v3

    .line 52
    sget-object v4, Lcom/android/tools/r8/internal/AB;->a:Lcom/android/tools/r8/internal/AB;

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/aX;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v3

    goto :goto_0

    .line 53
    :cond_4
    invoke-interface {v3}, Lcom/android/tools/r8/internal/ZC;->f()Lcom/android/tools/r8/internal/r;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Jx;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v3

    .line 54
    :goto_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    sget-boolean v0, Lcom/android/tools/r8/internal/Hx;->h:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/zH0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/zH0;-><init>(Lcom/android/tools/r8/internal/Hx;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 38
    new-instance v0, Lcom/android/tools/r8/internal/AH0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/AH0;-><init>(Lcom/android/tools/r8/internal/Hx;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 10

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->d:Lcom/android/tools/r8/internal/zX;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 61
    :cond_0
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v0

    .line 62
    iget-object v1, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    .line 63
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 64
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Iw0;

    .line 65
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result v5

    if-nez v5, :cond_7

    .line 66
    instance-of v5, v4, Lcom/android/tools/r8/internal/zv0;

    if-nez v5, :cond_7

    .line 67
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Iw0;->n()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/Kx;

    move-result-object v5

    .line 71
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/yg;->s()Ljava/util/Set;

    move-result-object v4

    iget-object v6, p0, Lcom/android/tools/r8/internal/Hx;->e:Lcom/android/tools/r8/internal/bD;

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    :cond_3
    if-ge v7, v6, :cond_7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/ZC;

    .line 73
    invoke-interface {v8}, Lcom/android/tools/r8/internal/ZC;->x()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 74
    invoke-interface {v8}, Lcom/android/tools/r8/internal/ZC;->D()Lcom/android/tools/r8/internal/Pw;

    move-result-object v8

    .line 75
    sget-object v9, Lcom/android/tools/r8/internal/AB;->a:Lcom/android/tools/r8/internal/AB;

    invoke-virtual {p0, v8, v5, v9}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/Pw;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v8

    goto :goto_1

    .line 76
    :cond_4
    invoke-interface {v8}, Lcom/android/tools/r8/internal/ZC;->o()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 77
    invoke-interface {v8}, Lcom/android/tools/r8/internal/ZC;->C()Lcom/android/tools/r8/internal/aX;

    move-result-object v8

    .line 78
    sget-object v9, Lcom/android/tools/r8/internal/AB;->a:Lcom/android/tools/r8/internal/AB;

    invoke-virtual {p0, v8, v5, v9}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/aX;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/r;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v8

    goto :goto_1

    .line 79
    :cond_5
    invoke-interface {v8}, Lcom/android/tools/r8/internal/ZC;->f()Lcom/android/tools/r8/internal/r;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lcom/android/tools/r8/internal/Hx;->a(Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Jx;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v8

    .line 80
    :goto_1
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 81
    sget-boolean v4, Lcom/android/tools/r8/internal/Hx;->h:Z

    if-nez v4, :cond_7

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Jx;->g()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Hx;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/CH0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/CH0;-><init>(Lcom/android/tools/r8/internal/Hx;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;)V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->c:Lcom/android/tools/r8/internal/Mw;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, v0, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->q()Lcom/android/tools/r8/internal/B7;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/yg;->c:Z

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->r()Lcom/android/tools/r8/internal/iw0;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    move-object v1, v0

    .line 14
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/Hx;->c:Lcom/android/tools/r8/internal/Mw;

    .line 16
    iget-object v2, v2, Lcom/android/tools/r8/internal/Mw;->a:Lcom/android/tools/r8/internal/e80;

    .line 17
    iget-object v2, v2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 18
    sget-object v3, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 19
    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, v3, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 20
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    if-eqz v2, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    .line 25
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/Hx;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ix;

    if-eqz p1, :cond_8

    .line 26
    iget-object v2, p1, Lcom/android/tools/r8/internal/Ix;->f:Lcom/android/tools/r8/internal/Iw0;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of v2, v2, Lcom/android/tools/r8/internal/zv0;

    if-nez v2, :cond_8

    .line 29
    sget-boolean v2, Lcom/android/tools/r8/internal/Hx;->h:Z

    if-nez v2, :cond_7

    .line 30
    iget-object v2, p1, Lcom/android/tools/r8/internal/Ix;->f:Lcom/android/tools/r8/internal/Iw0;

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/internal/Iw0;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_7
    :goto_3
    iput-object v1, p1, Lcom/android/tools/r8/internal/Ix;->f:Lcom/android/tools/r8/internal/Iw0;

    :cond_8
    :goto_4
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/FH0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FH0;-><init>(Lcom/android/tools/r8/internal/Hx;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/GH0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/GH0;-><init>(Lcom/android/tools/r8/internal/Hx;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hx;->d:Lcom/android/tools/r8/internal/zX;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zX;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/wX;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 38
    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 40
    iget-object v2, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Iw0;

    .line 41
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 42
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v3, v2, Lcom/android/tools/r8/internal/yg;->b:Ljava/util/Set;

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->q()Lcom/android/tools/r8/internal/B7;

    move-result-object v3

    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->t()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->v()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    iget-boolean v3, v2, Lcom/android/tools/r8/internal/yg;->c:Z

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->r()Lcom/android/tools/r8/internal/iw0;

    move-result-object v3

    goto :goto_2

    .line 49
    :cond_1
    sget-boolean v3, Lcom/android/tools/r8/internal/yg;->d:Z

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/yg;->u()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    move-object v3, v2

    .line 50
    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/Hx;->g:Ljava/util/LinkedHashMap;

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/SG;

    .line 52
    invoke-interface {v4, v1}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Kx;

    if-eqz v4, :cond_6

    .line 53
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    instance-of v5, v5, Lcom/android/tools/r8/internal/zv0;

    if-nez v5, :cond_6

    .line 55
    sget-boolean v5, Lcom/android/tools/r8/internal/Hx;->h:Z

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kx;->d()Lcom/android/tools/r8/internal/Iw0;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/internal/Iw0;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_5
    :goto_3
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/Kx;->a(Lcom/android/tools/r8/internal/Iw0;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method
