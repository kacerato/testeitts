.class public Lcom/android/tools/r8/internal/iv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/jv;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/jv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/jv;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/iv;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/iv;->d:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lcom/android/tools/r8/internal/iv;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/iv;->b:Lcom/android/tools/r8/internal/jv;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/xw0;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/internal/zE;",
            ">;"
        }
    .end annotation

    .line 2
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/gf1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/gf1;-><init>(Lcom/android/tools/r8/internal/IC;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/tools/r8/internal/iv;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Ljava/util/function/Predicate;)V

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Ljava/util/function/Predicate;)V
    .locals 10

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/iv;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/iv;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/iv;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_5
    :goto_2
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    goto :goto_3

    .line 13
    :cond_6
    iget-object v1, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    :goto_3
    if-nez v0, :cond_8

    .line 14
    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->d()Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/iv;->a(Lcom/android/tools/r8/internal/xw0;)V

    .line 17
    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/iv;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/internal/iv;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 19
    sget-boolean v3, Lcom/android/tools/r8/internal/iv;->e:Z

    if-nez v3, :cond_b

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    if-nez v3, :cond_d

    .line 20
    iget-object v3, p0, Lcom/android/tools/r8/internal/iv;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_d
    :goto_6
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 22
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/iv;->a(Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_7

    .line 23
    :cond_e
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 24
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    if-ne v6, v1, :cond_15

    .line 25
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    if-nez v6, :cond_15

    .line 26
    iget-object v6, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 27
    sget-boolean v7, Lcom/android/tools/r8/internal/zE;->j:Z

    if-nez v7, :cond_11

    if-eq v6, v4, :cond_10

    goto :goto_9

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_9
    if-nez v7, :cond_13

    .line 28
    iget-object v7, v6, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    iget-object v8, v4, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-ne v7, v8, :cond_12

    goto :goto_a

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_13
    :goto_a
    iget-object v7, v4, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    :goto_b
    if-eqz v7, :cond_15

    if-ne v7, v6, :cond_14

    goto :goto_8

    .line 30
    :cond_14
    iget-object v7, v7, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    goto :goto_b

    .line 31
    :cond_15
    iget-object v6, p0, Lcom/android/tools/r8/internal/iv;->b:Lcom/android/tools/r8/internal/jv;

    iget-object v7, p0, Lcom/android/tools/r8/internal/iv;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    invoke-interface {v6, v7, p0, v4, v8}, Lcom/android/tools/r8/internal/jv;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/iv;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/H5;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1d

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    .line 33
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v8

    if-eqz v8, :cond_16

    goto/16 :goto_c

    .line 34
    :cond_16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_c

    .line 35
    :cond_17
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v8

    if-eqz v8, :cond_18

    goto :goto_c

    .line 36
    :cond_18
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 37
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    .line 38
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    if-ne v8, v6, :cond_1b

    .line 39
    iget-object v6, v4, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v7

    goto :goto_d

    .line 41
    :cond_19
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 42
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 43
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-nez v8, :cond_1b

    iget-object v6, v6, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->y1()Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_c

    .line 44
    :cond_1a
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 45
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 46
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-nez v8, :cond_1b

    iget-object v6, v6, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v6

    if-nez v6, :cond_1c

    :cond_1b
    :goto_c
    move v6, v7

    goto :goto_d

    :cond_1c
    move v6, v5

    :goto_d
    if-eqz v6, :cond_1d

    .line 47
    invoke-interface {p3, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    move v5, v7

    goto/16 :goto_11

    .line 48
    :cond_1d
    iget-object v6, p0, Lcom/android/tools/r8/internal/iv;->c:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 49
    iget-object v9, p0, Lcom/android/tools/r8/internal/iv;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v9, v8}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v8

    if-eqz v8, :cond_1e

    move v5, v7

    :cond_1f
    if-eqz v5, :cond_22

    .line 50
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 51
    sget-boolean v6, Lcom/android/tools/r8/internal/iv;->e:Z

    if-nez v6, :cond_21

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_e

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_21
    :goto_e
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/iv;->a(Lcom/android/tools/r8/internal/xw0;)V

    .line 53
    :cond_22
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 54
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    goto :goto_f

    .line 55
    :cond_23
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 56
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    goto :goto_f

    :cond_24
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_f

    if-eq v4, v2, :cond_f

    .line 57
    sget-boolean v5, Lcom/android/tools/r8/internal/iv;->e:Z

    if-nez v5, :cond_26

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_10

    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 58
    :cond_26
    :goto_10
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/iv;->a(Lcom/android/tools/r8/internal/xw0;)V

    goto/16 :goto_8

    :cond_27
    :goto_11
    if-eqz v5, :cond_9

    .line 59
    :cond_28
    iget-object p1, p0, Lcom/android/tools/r8/internal/iv;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 60
    iget-object p1, p0, Lcom/android/tools/r8/internal/iv;->d:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 61
    sget-boolean v0, Lcom/android/tools/r8/internal/iv;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/iv;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/iv;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/hf1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/hf1;-><init>(Lcom/android/tools/r8/internal/C7;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/tools/r8/internal/iv;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Ljava/util/function/Predicate;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p1

    return p1
.end method
