.class public final Lcom/android/tools/r8/internal/Hw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Hw0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Hw0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hw0;->d:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Aw0;Lcom/android/tools/r8/internal/Bw0;Lcom/android/tools/r8/internal/Yx0;)Z
    .locals 5

    .line 88
    new-instance v0, Lcom/android/tools/r8/internal/xH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xH0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->n0()Lcom/android/tools/r8/internal/VT;

    move-result-object p0

    .line 90
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 92
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/Bw0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;

    move-result-object v3

    .line 93
    iget-object v4, v3, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v4, p1, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/Aw0;)Z
    .locals 0

    .line 82
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 3

    .line 84
    new-instance v0, Lcom/android/tools/r8/internal/XC0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XC0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hw0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_1

    .line 87
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Hw0;->b(Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Aw0;Lcom/android/tools/r8/internal/Bw0;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/Yx0;)Z
    .locals 9

    .line 96
    new-instance v0, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tZ;->u2()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Hw0;->b:Lcom/android/tools/r8/graph/H5;

    .line 99
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    .line 100
    iget-object v5, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    return v1

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/Hw0;->c:Lcom/android/tools/r8/graph/u1;

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    .line 104
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    .line 105
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 106
    iget-boolean v5, v0, Lcom/android/tools/r8/internal/QJ;->o:Z

    .line 107
    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    if-nez v2, :cond_4

    return v1

    .line 109
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/Hw0;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v3

    if-nez v3, :cond_5

    .line 110
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eq v3, v4, :cond_5

    return v1

    .line 111
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/y;)Ljava/util/ArrayList;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_9

    .line 114
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fE;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    return v1

    :cond_6
    move v4, v5

    .line 115
    :goto_1
    iget-object v6, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 117
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 118
    invoke-virtual {p3, v6}, Lcom/android/tools/r8/internal/Bw0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;

    move-result-object v7

    .line 119
    iget-object v8, v7, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v8, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v8, p2, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p6, v6}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 122
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_8
    if-ge v1, p2, :cond_9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v1, v1, 0x1

    check-cast p3, Lcom/android/tools/r8/graph/F0;

    .line 123
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result p3

    if-nez p3, :cond_8

    .line 124
    invoke-interface {p5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fE;->e()Z

    move-result p1

    if-nez p1, :cond_a

    .line 126
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    return v5
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 14

    .line 1
    new-instance v7, Lcom/android/tools/r8/internal/Bw0;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/Bw0;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v9

    .line 4
    new-instance v10, Lcom/android/tools/r8/internal/Yx0;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 5
    invoke-virtual {v10, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    const/4 v11, 0x1

    if-eqz p1, :cond_12

    .line 7
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 9
    invoke-virtual {v7, v1}, Lcom/android/tools/r8/internal/Bw0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;

    move-result-object v2

    if-eq v1, p1, :cond_1

    .line 10
    invoke-virtual {v7, p1}, Lcom/android/tools/r8/internal/Bw0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;

    move-result-object p1

    .line 11
    iget-object v0, v2, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/Hw0;->e:Z

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hw0;->b:Lcom/android/tools/r8/graph/H5;

    .line 16
    sget-object v3, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->e0()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    iget-object v3, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->N0()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 25
    :cond_6
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_6

    .line 26
    :cond_7
    iget-object p1, v1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_9

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 31
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Bw0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;

    move-result-object v12

    .line 32
    iget-object v13, v12, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v13, v2, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v10, v6}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_8
    instance-of v0, p1, Lcom/android/tools/r8/internal/oZ;

    if-eqz v0, :cond_10

    .line 36
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 39
    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/Bw0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;

    move-result-object v4

    .line 40
    iget-object v5, v4, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v5, v2, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v10, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 43
    :cond_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-eq v5, v1, :cond_a

    goto :goto_5

    .line 47
    :cond_a
    iget-object v5, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 48
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/Bw0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;

    move-result-object v5

    .line 49
    iget-object v6, v5, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v6, v2, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v5, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 52
    invoke-virtual {v10, v5}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/Bw0;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;

    move-result-object v5

    .line 54
    iget-object v6, v5, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v6, v2, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_4

    .line 57
    :cond_b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b2()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->v0()Lcom/android/tools/r8/internal/rZ;

    move-result-object v4

    .line 59
    iget-object v4, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    if-eq v4, v1, :cond_c

    goto :goto_5

    .line 61
    :cond_c
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 62
    :cond_d
    iget-object v4, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Hw0;->b:Lcom/android/tools/r8/graph/H5;

    .line 63
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v6

    .line 64
    sget-object v12, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v0, v4, v5, v6, v12}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_5

    .line 65
    :cond_e
    :goto_4
    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 66
    :cond_f
    :goto_5
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 67
    :cond_10
    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Hw0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    invoke-static {v1, v2, v7, v10}, Lcom/android/tools/r8/internal/Hw0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Aw0;Lcom/android/tools/r8/internal/Bw0;Lcom/android/tools/r8/internal/Yx0;)Z

    move-result p1

    if-nez p1, :cond_0

    move-object v0, p0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    .line 69
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Hw0;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Aw0;Lcom/android/tools/r8/internal/Bw0;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/Yx0;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto/16 :goto_0

    :cond_11
    return v11

    .line 70
    :cond_12
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Bw0;->a()V

    .line 71
    iget-object p1, v7, Lcom/android/tools/r8/internal/Bw0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 73
    :goto_7
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 74
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 75
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Aw0;

    .line 76
    new-instance v3, Lcom/android/tools/r8/internal/wH0;

    invoke-direct {v3, p1, v0}, Lcom/android/tools/r8/internal/wH0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 77
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Aw0;->a(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 78
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 79
    :cond_14
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    return v11

    .line 80
    :cond_15
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 81
    :cond_16
    invoke-virtual {p0, v9, v8}, Lcom/android/tools/r8/internal/Hw0;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 13

    .line 127
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 128
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 129
    sget-boolean v3, Lcom/android/tools/r8/internal/Hw0;->e:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 130
    :cond_1
    :goto_1
    iget-object v2, v2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_2
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 132
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2, v0}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 133
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_e

    .line 134
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 135
    new-instance v4, Lcom/android/tools/r8/internal/Gw0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/Gw0;-><init>()V

    .line 136
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 137
    sget-object v7, Lcom/android/tools/r8/internal/Gw0;->c:Lcom/android/tools/r8/internal/Gw0;

    .line 138
    invoke-interface {v1, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Gw0;

    .line 139
    iget-boolean v7, v4, Lcom/android/tools/r8/internal/Gw0;->a:Z

    iget-boolean v8, v6, Lcom/android/tools/r8/internal/Gw0;->a:Z

    or-int/2addr v7, v8

    iput-boolean v7, v4, Lcom/android/tools/r8/internal/Gw0;->a:Z

    .line 140
    iget-object v7, v4, Lcom/android/tools/r8/internal/Gw0;->b:Ljava/util/Set;

    iget-object v6, v6, Lcom/android/tools/r8/internal/Gw0;->b:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 141
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    move v6, v3

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 142
    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    .line 143
    :cond_6
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_9

    .line 144
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v7

    .line 145
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 146
    iget-object v10, v4, Lcom/android/tools/r8/internal/Gw0;->b:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 147
    iget-boolean v8, v4, Lcom/android/tools/r8/internal/Gw0;->a:Z

    if-eqz v8, :cond_7

    move v8, v3

    goto :goto_5

    .line 148
    :cond_7
    iput-boolean v9, v4, Lcom/android/tools/r8/internal/Gw0;->a:Z

    move v8, v9

    :goto_5
    or-int/2addr v6, v8

    .line 149
    :cond_8
    iget-boolean v8, v4, Lcom/android/tools/r8/internal/Gw0;->a:Z

    if-eqz v8, :cond_5

    .line 150
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 151
    iget-object v8, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/internal/Hw0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v7, v8, v10}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Z

    move-result v7

    if-eqz v7, :cond_5

    return v9

    .line 152
    :cond_9
    iget-object v8, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/internal/Hw0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v7, v8, v10}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 153
    new-instance v8, Lcom/android/tools/r8/internal/vH0;

    invoke-direct {v8, v4}, Lcom/android/tools/r8/internal/vH0;-><init>(Lcom/android/tools/r8/internal/Gw0;)V

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/zE;->a(Ljava/util/function/Predicate;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 154
    iget-boolean v8, v4, Lcom/android/tools/r8/internal/Gw0;->a:Z

    if-eqz v8, :cond_a

    move v8, v3

    goto :goto_6

    .line 155
    :cond_a
    iput-boolean v9, v4, Lcom/android/tools/r8/internal/Gw0;->a:Z

    move v8, v9

    :goto_6
    or-int/2addr v6, v8

    .line 156
    :cond_b
    iget-boolean v8, v4, Lcom/android/tools/r8/internal/Gw0;->a:Z

    if-eqz v8, :cond_c

    .line 157
    iget-object v8, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/internal/Hw0;->b:Lcom/android/tools/r8/graph/H5;

    .line 158
    invoke-static {v8, v10}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v11

    .line 159
    sget-object v12, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v7, v8, v10, v11, v12}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v8

    if-eqz v8, :cond_c

    return v9

    .line 160
    :cond_c
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 161
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 162
    iget-object v8, v4, Lcom/android/tools/r8/internal/Gw0;->b:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    goto/16 :goto_4

    .line 163
    :cond_d
    invoke-virtual {v1, v0, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 164
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_e
    return v3
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/uH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uH0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Hw0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
