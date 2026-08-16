.class public final Lcom/android/tools/r8/internal/X5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/X5;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/X5;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 96
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 98
    sget-boolean v1, Lcom/android/tools/r8/internal/X5;->c:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 100
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 102
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 103
    :cond_6
    instance-of v1, p0, Lcom/android/tools/r8/internal/jh;

    if-eqz v1, :cond_9

    .line 104
    instance-of v1, p1, Lcom/android/tools/r8/internal/jh;

    if-nez v1, :cond_7

    return v2

    .line 105
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p0

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    if-ne p0, p1, :cond_8

    return v0

    :cond_8
    return v2

    .line 108
    :cond_9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 109
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 110
    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p0

    .line 111
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_b

    return v0

    :cond_b
    return v2

    .line 113
    :cond_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 114
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 115
    :cond_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p0

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    if-ne p0, p1, :cond_e

    return v0

    :cond_e
    return v2

    .line 118
    :cond_f
    instance-of v1, p0, Lcom/android/tools/r8/internal/uq;

    if-eqz v1, :cond_11

    .line 119
    instance-of v1, p1, Lcom/android/tools/r8/internal/uq;

    if-nez v1, :cond_10

    return v2

    .line 120
    :cond_10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p0

    .line 121
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p1

    .line 122
    iget-object p0, p0, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    if-ne p0, p1, :cond_11

    return v0

    :cond_11
    :goto_2
    return v2
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 8

    .line 1
    instance-of v0, p0, Lcom/android/tools/r8/internal/C4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 4
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_1

    if-nez v4, :cond_3

    .line 5
    new-instance v4, Lcom/android/tools/r8/internal/Yx0;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 6
    :cond_3
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_b

    .line 7
    new-instance p0, Lcom/android/tools/r8/internal/cD0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/cD0;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y()Lcom/android/tools/r8/internal/mE;

    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    goto :goto_2

    :cond_5
    move-object p0, v2

    .line 11
    :cond_6
    :goto_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 12
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/C4;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :cond_7
    :goto_3
    if-ge v5, v3, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    if-eq v6, p1, :cond_a

    if-ne v6, p0, :cond_8

    goto :goto_5

    .line 15
    :cond_8
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v6, v2

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->B()Lcom/android/tools/r8/internal/C4;

    move-result-object v6

    :goto_4
    if-eqz v6, :cond_7

    .line 16
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    :goto_5
    const/4 p0, 0x1

    return p0

    :cond_b
    return v1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/K11;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/tools/r8/internal/K11;-><init>(Lcom/android/tools/r8/internal/X5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/xw0;)V

    .line 18
    invoke-interface {p4, v0}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p2

    .line 19
    invoke-interface {p1, p2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 20
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    instance-of v0, p3, Lcom/android/tools/r8/internal/hj;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    :cond_0
    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/AE;Ljava/util/Set;)Z
    .locals 12

    move-object v6, p0

    move-object v1, p1

    move-object v2, p2

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/I11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/I11;-><init>(Lcom/android/tools/r8/internal/X5;)V

    move-object v3, p3

    .line 26
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 31
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    if-eq v7, v8, :cond_1

    :goto_0
    return v5

    .line 32
    :cond_2
    new-instance v4, Lcom/android/tools/r8/internal/J11;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/internal/J11;-><init>(Lcom/android/tools/r8/internal/X5;)V

    move-object/from16 v7, p4

    .line 33
    invoke-virtual {p0, v7, p1, p2, v4}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    .line 34
    sget-boolean v8, Lcom/android/tools/r8/internal/X5;->c:Z

    if-nez v8, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_15

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    .line 37
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 38
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    if-ne v3, v7, :cond_f

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    if-ne v0, v1, :cond_5

    return v9

    .line 40
    :cond_5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v2

    const/4 v4, -0x1

    move v7, v4

    move v8, v5

    .line 41
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_8

    .line 42
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    if-ne v10, v0, :cond_6

    move v7, v8

    if-ltz v4, :cond_7

    goto :goto_3

    :cond_6
    if-ne v10, v1, :cond_7

    move v4, v8

    if-ltz v7, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 43
    :cond_8
    :goto_3
    sget-boolean v0, Lcom/android/tools/r8/internal/X5;->c:Z

    if-nez v0, :cond_a

    if-ltz v7, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_4
    if-nez v0, :cond_c

    if-ltz v4, :cond_b

    goto :goto_5

    .line 44
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_c
    :goto_5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 46
    iget-object v2, v1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 48
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v1

    if-nez v1, :cond_d

    return v5

    :cond_e
    return v9

    .line 49
    :cond_f
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->A()Z

    move-result v4

    if-eqz v4, :cond_10

    return v5

    .line 50
    :cond_10
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v4

    goto :goto_6

    .line 51
    :cond_11
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->A()Z

    move-result v4

    if-eqz v4, :cond_12

    return v5

    .line 52
    :cond_12
    invoke-interface/range {p4 .. p4}, Lcom/android/tools/r8/internal/AE;->previous()Lcom/android/tools/r8/internal/zE;

    move-object v4, v7

    :goto_6
    if-nez p5, :cond_13

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    .line 55
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    move-object/from16 v7, p5

    .line 56
    :goto_7
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 57
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v7

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/AE;Ljava/util/Set;)Z

    move-result v0

    return v0

    :cond_14
    return v5

    :cond_15
    const/4 v8, 0x0

    .line 59
    :goto_8
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 60
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    if-eqz v8, :cond_16

    .line 61
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    return v5

    .line 62
    :cond_16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->A()Z

    move-result v10

    if-eqz v10, :cond_17

    return v5

    .line 64
    :cond_17
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v4

    .line 65
    new-instance v10, Lcom/android/tools/r8/internal/J11;

    invoke-direct {v10, p0}, Lcom/android/tools/r8/internal/J11;-><init>(Lcom/android/tools/r8/internal/X5;)V

    .line 66
    invoke-virtual {p0, v4, p1, p2, v10}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/zE;

    move-result-object v10

    .line 67
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v11

    if-eqz v11, :cond_18

    if-nez v8, :cond_18

    .line 68
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    .line 69
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_18
    move-object v7, v4

    move-object v4, v10

    goto :goto_8

    .line 70
    :cond_19
    iget-object v8, v6, Lcom/android/tools/r8/internal/X5;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 71
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v0

    .line 72
    iget-object v8, v6, Lcom/android/tools/r8/internal/X5;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 73
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v4

    .line 74
    iget-object v8, v6, Lcom/android/tools/r8/internal/X5;->a:Lcom/android/tools/r8/graph/y;

    iget-object v9, v6, Lcom/android/tools/r8/internal/X5;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v8, v9}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 75
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 76
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 77
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_9

    .line 79
    :cond_1a
    iget-object v0, v6, Lcom/android/tools/r8/internal/X5;->a:Lcom/android/tools/r8/graph/y;

    iget-object v8, v6, Lcom/android/tools/r8/internal/X5;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v4, v0, v8}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 80
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 81
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 82
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 83
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_9

    :cond_1b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    move-object/from16 v5, p5

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/AE;Lcom/android/tools/r8/internal/AE;Ljava/util/Set;)Z

    move-result v0

    return v0

    :cond_1c
    :goto_9
    return v5

    .line 85
    :cond_1d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 86
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v0

    .line 87
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 88
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 90
    sget-boolean v0, Lcom/android/tools/r8/internal/X5;->c:Z

    if-nez v0, :cond_1f

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_a

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    :goto_a
    return v9

    .line 91
    :cond_20
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 92
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v0

    return v0

    :cond_21
    return v5
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/tools/r8/internal/X5;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/X5;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/X5;->b:Lcom/android/tools/r8/graph/H5;

    .line 94
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v2

    .line 95
    sget-object v3, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

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

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/X5;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
