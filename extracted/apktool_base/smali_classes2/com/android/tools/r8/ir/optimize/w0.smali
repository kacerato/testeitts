.class public abstract Lcom/android/tools/r8/ir/optimize/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;
    .locals 4

    .line 70
    const-string v0, "Ljava/lang/Long;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 71
    const-string v1, "signum"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/graph/u1;->B:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/u1;->C:Lcom/android/tools/r8/graph/L2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 72
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;)V
    .locals 10

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    sget-object v0, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 31
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 32
    new-instance v0, Lcom/android/tools/r8/internal/sR;

    new-instance v1, Lv/O1;

    invoke-direct {v1, p1}, Lv/O1;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    .line 33
    iget-object p1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 34
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 35
    new-instance v3, Lv/P1;

    invoke-direct {v3}, Lv/P1;-><init>()V

    .line 36
    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    if-eqz v3, :cond_1

    .line 37
    instance-of v4, v3, Lcom/android/tools/r8/internal/gY;

    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v4

    sget-object v5, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-ne v4, v5, :cond_1

    .line 39
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 40
    new-instance v4, Lv/P1;

    invoke-direct {v4}, Lv/P1;-><init>()V

    .line 41
    invoke-interface {v2, v4}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->h1()Z

    move-result v4

    if-nez v4, :cond_2

    .line 43
    instance-of v4, v2, Lcom/android/tools/r8/internal/Qq0;

    if-eqz v4, :cond_1

    .line 44
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/u6;->u2()Lcom/android/tools/r8/internal/T10;

    move-result-object v4

    if-ne v4, v5, :cond_1

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 46
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/sL;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    if-ne v5, v1, :cond_3

    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 48
    iget-object v2, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :cond_5
    :goto_1
    if-ge v7, v5, :cond_1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    :goto_2
    if-ne v8, v4, :cond_d

    .line 50
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    .line 51
    new-instance v1, Lv/Q1;

    invoke-direct {v1, v3}, Lv/Q1;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 52
    iget-object v1, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 54
    new-instance v2, Lcom/android/tools/r8/internal/gK;

    .line 55
    iget-object v4, v0, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v1}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 57
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 58
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/w0;->a:Z

    if-nez v1, :cond_7

    if-ne v3, v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 59
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 61
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    if-nez v1, :cond_9

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_4
    if-nez v1, :cond_b

    .line 63
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 64
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    .line 65
    :cond_c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 66
    invoke-interface {p1, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_d
    iget-object v8, v8, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eqz v8, :cond_5

    .line 68
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result v9

    if-nez v9, :cond_e

    goto/16 :goto_1

    .line 69
    :cond_e
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->p0()Lcom/android/tools/r8/internal/aY;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/aY;->v2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    goto/16 :goto_2

    :cond_f
    :goto_6
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/y;)V
    .locals 6

    .line 82
    iget-object v0, p2, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 88
    :cond_0
    new-instance p1, Lv/U1;

    invoke-direct {p1}, Lv/U1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/hK;

    .line 89
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-interface {p2, v2}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 95
    new-instance v3, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;

    .line 96
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v4

    .line 97
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    .line 99
    iget-object v5, v5, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 100
    iget-object v5, v5, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 101
    invoke-direct {v3, v4, v1, v5}, Lcom/android/tools/r8/errors/IllegalInvokeSuperToInterfaceOnDalvikDiagnostic;-><init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/origin/Origin;)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/de;)Z
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Z
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x1d

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 6
    iget-object v2, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 8
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    .line 9
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    new-instance v5, Lcom/android/tools/r8/internal/cD0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/cD0;-><init>()V

    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/mE;

    if-nez v5, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object v6, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 12
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of v7, v6, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v7, :cond_4

    .line 15
    invoke-interface {v4, p1, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lv/S1;

    invoke-direct {v7, v0}, Lv/S1;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 17
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/pu0;->a(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 18
    iget-object v5, v5, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 19
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {v5, v7, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 21
    new-instance v7, Lv/T1;

    invoke-direct {v7, v0}, Lv/T1;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/pu0;->a(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 22
    invoke-virtual {v5, v6, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 23
    invoke-virtual {v6, v5, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 25
    invoke-interface {v4, p1, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;I)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 26
    :cond_5
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/w0;->a:Z

    if-nez v0, :cond_7

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    return v3
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    if-ne v0, p0, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p0

    .line 76
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p0

    .line 79
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 80
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/bo1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/bo1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->A1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Y1()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/C2;->y:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 11
    new-instance v2, Lv/R1;

    invoke-direct {v2, p1}, Lv/R1;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 12
    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-eqz v2, :cond_3

    .line 13
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/w0;->a:Z

    if-nez v0, :cond_5

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object p1

    const/4 v0, 0x0

    .line 16
    invoke-interface {p0, p1, v0}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    .line 17
    new-instance p1, Lcom/android/tools/r8/internal/i2;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/i2;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 19
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 20
    new-instance p1, Lcom/android/tools/r8/internal/k2;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/k2;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 21
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 22
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/de;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
