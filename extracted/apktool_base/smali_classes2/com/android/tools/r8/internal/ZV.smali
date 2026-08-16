.class public abstract Lcom/android/tools/r8/internal/ZV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/EE;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Mo0;)Lcom/android/tools/r8/internal/EE;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/EE;
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 3

    .line 69
    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mB;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Predicate;)V

    .line 73
    iget-object v1, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 74
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 76
    sget-boolean v0, Lcom/android/tools/r8/internal/ZV;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/No0;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/rE;)V
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Predicate;)V
    .locals 9

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v7

    .line 53
    :cond_0
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 54
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 55
    iget-object v0, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, p2, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 56
    invoke-interface {p4, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    move-object v8, v0

    .line 58
    :goto_1
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_7

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_6

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_5

    const/16 v2, 0x21

    if-eq v1, v2, :cond_4

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v0

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/No0;)V

    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Mo0;)Lcom/android/tools/r8/internal/EE;

    goto :goto_1

    .line 63
    :cond_4
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move-object v3, p3

    move-object v4, p2

    move-object v5, v8

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v8

    goto :goto_1

    .line 65
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object v0

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/rE;)V

    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, v8

    .line 67
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/EE;

    goto :goto_1

    .line 68
    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->y()Lcom/android/tools/r8/internal/N3;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/N3;)V

    goto :goto_1

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/N3;)V
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/F4;)Z
    .locals 8

    .line 1
    iget-boolean v0, p6, Lcom/android/tools/r8/internal/F4;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p4}, Lcom/android/tools/r8/internal/EE;->i()V

    return v1

    .line 4
    :cond_0
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p6, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, v0, Lcom/android/tools/r8/internal/x10;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 10
    iget-object v2, p6, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/F1;->l()Lcom/android/tools/r8/internal/x10;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v3, Lcom/android/tools/r8/internal/kU;

    .line 13
    iget-wide v4, v2, Lcom/android/tools/r8/internal/x10;->b:J

    .line 14
    iget-wide v6, v2, Lcom/android/tools/r8/internal/x10;->c:J

    .line 15
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/tools/r8/internal/kU;-><init>(JJ)V

    iput-object v3, v0, Lcom/android/tools/r8/internal/xw0;->k:Lcom/android/tools/r8/internal/kU;

    .line 16
    :cond_1
    iget-object v0, p6, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p6, Lcom/android/tools/r8/internal/F4;->b:Lcom/android/tools/r8/internal/F1;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    iget-object v2, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1, p5}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_4

    return v2

    .line 24
    :cond_4
    array-length v3, v0

    if-le v3, v1, :cond_6

    .line 25
    sget-boolean p1, Lcom/android/tools/r8/internal/ZV;->b:Z

    if-eqz p1, :cond_5

    return v2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_6
    sget-boolean v3, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 27
    aget-object v0, v0, v2

    .line 28
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-boolean p2, p6, Lcom/android/tools/r8/internal/F4;->c:Z

    if-eqz p2, :cond_7

    .line 30
    invoke-interface {p4, v0}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    return v1

    .line 31
    :cond_7
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    .line 32
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p6

    if-eqz p6, :cond_a

    .line 33
    sget-boolean p6, Lcom/android/tools/r8/internal/ZV;->b:Z

    if-nez p6, :cond_9

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p6

    if-eqz p6, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_9
    :goto_2
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 35
    :cond_a
    instance-of p6, p5, Lcom/android/tools/r8/internal/bE;

    if-eqz p6, :cond_b

    .line 36
    iget-object p5, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p6

    invoke-interface {p4, p5, p6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    goto :goto_3

    .line 37
    :cond_b
    instance-of p6, p5, Lcom/android/tools/r8/internal/Mo0;

    if-eqz p6, :cond_c

    .line 38
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object p5

    .line 39
    iget-object p6, p0, Lcom/android/tools/r8/internal/ZV;->a:Lcom/android/tools/r8/graph/y;

    .line 40
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p5

    iget-object p5, p5, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 41
    invoke-interface {p4, p6, p1, p5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;)Z

    .line 42
    :cond_c
    :goto_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 43
    invoke-interface {p4, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    .line 45
    iget-object p2, p3, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 46
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    iput-object p2, p3, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 47
    sget-boolean p2, Lcom/android/tools/r8/internal/ZV;->b:Z

    if-nez p2, :cond_e

    invoke-interface {p4}, Ljava/util/ListIterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_d

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    :goto_4
    if-nez p2, :cond_10

    .line 48
    invoke-static {p3}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_5
    return v1

    .line 49
    :cond_11
    invoke-interface {p4, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 50
    invoke-interface {p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 51
    sget-boolean p1, Lcom/android/tools/r8/internal/ZV;->b:Z

    if-nez p1, :cond_13

    invoke-interface {p4}, Lcom/android/tools/r8/internal/AE;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    if-ne p1, v0, :cond_12

    goto :goto_6

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_6
    return v1
.end method
