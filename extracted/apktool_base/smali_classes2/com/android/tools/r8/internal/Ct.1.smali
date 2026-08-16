.class public final Lcom/android/tools/r8/internal/Ct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    return-void
.end method

.method public static a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/f60;)V
    .locals 2

    .line 94
    iget-object v0, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 95
    new-instance v1, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 96
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/IdentityHashMap;)V
    .locals 11

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v0, :cond_0

    goto/16 :goto_f

    .line 13
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/f60;

    .line 17
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 18
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 19
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v3, :cond_5

    .line 20
    sget-boolean v3, Lcom/android/tools/r8/internal/Ct;->c:Z

    if-nez v3, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    .line 22
    sget-object v7, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {v6, v3, v4, v7}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v4

    move-object v3, v6

    goto :goto_0

    :cond_5
    if-ne v6, v3, :cond_6

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    .line 24
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v7

    .line 25
    sget-object v8, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {v6, v2, v7, v8}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    .line 27
    new-instance v2, Lcom/android/tools/r8/internal/Bt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Bt;-><init>(Ljava/util/Set;)V

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_a

    .line 28
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 29
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    .line 30
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 31
    new-instance v2, Lcom/android/tools/r8/internal/Bt;

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/Bt;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/Pm0;)V

    goto :goto_2

    :cond_9
    move-object v2, v1

    goto :goto_2

    .line 33
    :cond_a
    new-instance v2, Lcom/android/tools/r8/internal/Bt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/android/tools/r8/internal/Bt;-><init>(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    :goto_2
    if-nez v2, :cond_b

    goto/16 :goto_f

    .line 34
    :cond_b
    iget-object v0, v2, Lcom/android/tools/r8/internal/Bt;->a:Lcom/android/tools/r8/internal/Pm0;

    if-eqz v0, :cond_c

    goto :goto_3

    .line 35
    :cond_c
    iget-object v3, v2, Lcom/android/tools/r8/internal/Bt;->b:Lcom/android/tools/r8/internal/xw0;

    if-eqz v3, :cond_1c

    .line 36
    :goto_3
    iget-object v3, v2, Lcom/android/tools/r8/internal/Bt;->b:Lcom/android/tools/r8/internal/xw0;

    if-eqz v3, :cond_d

    goto/16 :goto_a

    .line 37
    :cond_d
    sget-boolean v3, Lcom/android/tools/r8/internal/Ct;->c:Z

    if-nez v3, :cond_f

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_4
    if-nez v3, :cond_11

    .line 38
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_11
    :goto_5
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    .line 40
    new-instance v5, Lcom/android/tools/r8/internal/rC0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/rC0;-><init>()V

    .line 41
    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 42
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->d0()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->J()Lcom/android/tools/r8/internal/lm0;

    move-result-object v3

    iget-object v5, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/lm0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    goto :goto_7

    .line 46
    :cond_12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v3

    .line 48
    iget-object v3, v3, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 49
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    .line 50
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 51
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v6

    invoke-static {v3, v6, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    goto :goto_7

    .line 52
    :cond_13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 53
    instance-of v5, v0, Lcom/android/tools/r8/internal/Hm0;

    if-eqz v5, :cond_14

    .line 54
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v3

    goto :goto_7

    :cond_14
    if-nez v3, :cond_16

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v3

    if-nez v3, :cond_16

    .line 56
    instance-of v3, p1, Lcom/android/tools/r8/internal/Zd0;

    if-nez v3, :cond_16

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_6

    :cond_15
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_16
    :goto_6
    move-object v3, p1

    .line 58
    :goto_7
    iget-object v5, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    .line 59
    iget-object v7, v6, Lcom/android/tools/r8/internal/fB;->c:Lcom/android/tools/r8/internal/B60;

    .line 60
    new-instance v8, Lcom/android/tools/r8/internal/CV;

    invoke-direct {v8, v1, v3, v7}, Lcom/android/tools/r8/internal/CV;-><init>(Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/B60;)V

    .line 61
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v7

    invoke-virtual {v0, v5, v7, v6, v8}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 62
    invoke-interface {v4, v0}, Lcom/android/tools/r8/internal/EE;->a([Lcom/android/tools/r8/internal/zE;)V

    .line 63
    invoke-static {v0}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    .line 64
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 65
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 66
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 68
    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v5, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    .line 69
    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 70
    iget-object v9, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    iget-object p1, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    .line 72
    invoke-static/range {v5 .. v10}, Lcom/android/tools/r8/internal/C4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/C4;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    .line 74
    iget-object v0, v0, Lcom/android/tools/r8/internal/fB;->c:Lcom/android/tools/r8/internal/B60;

    .line 75
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v5

    if-nez v5, :cond_18

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v3, :cond_17

    goto :goto_8

    .line 77
    :cond_17
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    goto :goto_9

    .line 78
    :cond_18
    :goto_8
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 79
    :goto_9
    invoke-interface {v4, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    goto :goto_a

    :cond_19
    move-object v3, v7

    .line 81
    :goto_a
    iget-object p1, v2, Lcom/android/tools/r8/internal/Bt;->c:Ljava/util/Set;

    .line 82
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/f60;

    .line 83
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 84
    iget-object v6, v5, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 85
    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 86
    iput-object v1, v5, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    goto :goto_c

    .line 87
    :cond_1a
    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/Ct;->a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/f60;)V

    goto :goto_b

    .line 88
    :cond_1b
    iget-object p1, v2, Lcom/android/tools/r8/internal/Bt;->c:Ljava/util/Set;

    .line 89
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/f60;

    .line 90
    invoke-virtual {p3, v3, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_d

    .line 91
    :cond_1c
    iget-object p1, v2, Lcom/android/tools/r8/internal/Bt;->c:Ljava/util/Set;

    .line 92
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/f60;

    .line 93
    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ct;->a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/f60;)V

    goto :goto_e

    :cond_1d
    :goto_f
    return-void
.end method

.method public final a()Z
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 2
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    .line 4
    iget-object v2, v2, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/f60;

    .line 7
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/tools/r8/internal/Ct;->a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/IdentityHashMap;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    return v0

    .line 9
    :cond_2
    new-instance v2, Lcom/android/tools/r8/internal/qC0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/qC0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ct;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ct;->b:Lcom/android/tools/r8/internal/fB;

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    return v0
.end method
