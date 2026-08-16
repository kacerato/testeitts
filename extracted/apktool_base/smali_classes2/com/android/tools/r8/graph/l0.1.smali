.class public final Lcom/android/tools/r8/graph/l0;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/P;
.implements Lcom/android/tools/r8/graph/f3;


# static fields
.field public static final e:Lcom/android/tools/r8/graph/l0;

.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/l0;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/l0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/graph/l0;->e:Lcom/android/tools/r8/graph/l0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/M2;

    .line 109
    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 110
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 12

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 23
    sget-boolean v1, Lcom/android/tools/r8/graph/l0;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    instance-of v0, v0, Lcom/android/tools/r8/graph/l0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->W0()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    const/4 v3, 0x0

    .line 28
    iput-object v3, v0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$p;->c()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {v0, v1, p0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v1, v4, v0, v3}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-array v3, v4, [Lcom/android/tools/r8/graph/M2;

    .line 34
    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 35
    invoke-virtual {v0, v5, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, p1, v3, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/i60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/i60;-><init>()V

    .line 37
    iget-object v3, v0, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v3, v4, v1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 38
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v5

    .line 40
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    .line 41
    invoke-static {v3, v5, v0, v6}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/PS;

    move-result-object v0

    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    sget v3, Lcom/android/tools/r8/internal/PS;->p:I

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v3

    if-nez v3, :cond_2

    .line 45
    iput-object v2, v0, Lcom/android/tools/r8/internal/PS;->k:Lcom/android/tools/r8/internal/B60;

    .line 46
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    move-result-object v0

    .line 47
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xcd

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PS;->b()Lcom/android/tools/r8/internal/PS;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PS;->d()Lcom/android/tools/r8/internal/WS;

    move-result-object p1

    goto :goto_3

    :cond_3
    if-nez v1, :cond_5

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$p;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 53
    new-instance v9, Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    const/4 v1, 0x5

    goto :goto_2

    :cond_6
    const/4 v1, 0x3

    :goto_2
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v2, :cond_7

    .line 54
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 55
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v3, Lcom/android/tools/r8/internal/Ma;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/internal/Ma;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_7
    new-instance v1, Lcom/android/tools/r8/internal/pa;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v1, v2, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Lcom/android/tools/r8/internal/ga;

    new-array v2, v4, [Lcom/android/tools/r8/graph/M2;

    .line 59
    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 60
    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    const/16 v0, 0xb7

    .line 61
    invoke-direct {v1, v0, p1, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 62
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p1, Lcom/android/tools/r8/internal/bb;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p1, Lcom/android/tools/r8/graph/G;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-static {p2}, Lcom/android/tools/r8/graph/l0;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result v8

    .line 65
    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v7, 0x1

    move-object v5, p1

    move-object v10, v11

    .line 66
    invoke-direct/range {v5 .. v11}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 67
    :goto_3
    invoke-virtual {p2, p1, p0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 4

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->F0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 74
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->I0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 75
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_3

    return v1

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    .line 77
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    new-instance v2, Lcom/android/tools/r8/graph/Ge;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/Ge;-><init>()V

    goto :goto_0

    .line 80
    :cond_4
    new-instance v2, Lcom/android/tools/r8/graph/He;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/He;-><init>()V

    .line 81
    :goto_0
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/Iterator;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->n()Lcom/android/tools/r8/internal/pa;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 82
    iget v2, v2, Lcom/android/tools/r8/internal/pa;->c:I

    if-eqz v2, :cond_5

    goto :goto_1

    .line 83
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 84
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 85
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-static {p1, p0}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    .line 86
    invoke-virtual {v2, p0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    .line 87
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    instance-of p0, p0, Lcom/android/tools/r8/internal/bb;

    return p0

    :cond_7
    :goto_1
    return v1
.end method

.method public static a(Lcom/android/tools/r8/internal/W9;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    instance-of v0, p0, Lcom/android/tools/r8/internal/ka;

    if-nez v0, :cond_0

    .line 91
    instance-of p0, p0, Lcom/android/tools/r8/internal/Ma;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/W9;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of p0, p0, Lcom/android/tools/r8/internal/ka;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static d(Lcom/android/tools/r8/graph/H5;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->B0()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final P()Lcom/android/tools/r8/graph/i0;
    .locals 0

    return-object p0
.end method

.method public final T()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final Y()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/android/tools/r8/graph/l0;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/e3;
    .locals 2

    .line 124
    new-instance v0, Lcom/android/tools/r8/graph/d3;

    .line 125
    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 126
    invoke-static {p1}, Lcom/android/tools/r8/graph/l0;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result v1

    .line 127
    invoke-static {p1}, Lcom/android/tools/r8/graph/l0;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    .line 128
    invoke-direct {v0, p0, p2, v1, p1}, Lcom/android/tools/r8/graph/d3;-><init>(Lcom/android/tools/r8/graph/f3;Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/y;Z)Lcom/android/tools/r8/graph/f3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 7

    .line 100
    new-instance v4, Lcom/android/tools/r8/graph/k0;

    .line 101
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 102
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v1

    .line 103
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 104
    invoke-virtual {v2, p6}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object p6

    invoke-direct {v4, v0, v1, p6}, Lcom/android/tools/r8/graph/k0;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/B60;)V

    .line 105
    new-instance p6, Lcom/android/tools/r8/internal/aB;

    move-object v0, p6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p7

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/aB;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/on0;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/z10;)V

    .line 106
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 4

    .line 95
    new-instance v0, Lcom/android/tools/r8/graph/k0;

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v2

    .line 98
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->W0()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/k0;-><init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/B60;)V

    .line 99
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/on0;)Lcom/android/tools/r8/internal/aB;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    .line 123
    const-string p1, "DefaultInstanceInitializerCode"

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/r;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 1

    .line 4
    iget-object v0, p2, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 6

    const/16 p2, 0x19

    const/4 p3, 0x0

    .line 118
    invoke-virtual {p6, p2, p3}, Lcom/android/tools/r8/internal/EX;->d(II)V

    .line 119
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v4, "()V"

    const/4 v5, 0x0

    const/16 v1, 0xb7

    const-string v3, "<init>"

    move-object v0, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/EX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p2, 0xb1

    .line 121
    invoke-virtual {p6, p2}, Lcom/android/tools/r8/internal/EX;->a(I)V

    .line 122
    invoke-static {p1}, Lcom/android/tools/r8/graph/l0;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p6, p2, p1}, Lcom/android/tools/r8/internal/EX;->c(II)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 1

    .line 7
    iget-object v0, p2, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Mi;->a(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 11

    move-object v1, p1

    .line 111
    iget-object v0, v1, Lcom/android/tools/r8/graph/w5;->b:Lcom/android/tools/r8/graph/y;

    .line 112
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    move-object v2, p2

    .line 113
    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 114
    new-instance v0, Lcom/android/tools/r8/internal/Yp;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/tools/r8/internal/Yp;-><init>(ILcom/android/tools/r8/graph/A2;IIIII)V

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/cq;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V

    .line 116
    new-instance v0, Lcom/android/tools/r8/internal/Nr;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Nr;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0xe

    move-object/from16 v2, p6

    .line 117
    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 6

    .line 10
    iget-object p5, p5, Lcom/android/tools/r8/internal/RR;->a:Lcom/android/tools/r8/graph/d1;

    .line 11
    invoke-interface {p5}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p5

    .line 12
    invoke-static {p4, p5}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget-object v3, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    .line 15
    sget-object v5, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v4, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p2

    .line 17
    iget-object p2, p2, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 18
    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 19
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-interface {p3, p1}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/L2;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    const/4 v0, 0x2

    .line 92
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    .line 93
    iget-object p1, p1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 94
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/graph/l0;->d(Lcom/android/tools/r8/graph/H5;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k(I)I
    .locals 1

    const/4 v0, 0x4

    if-gt v0, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final k0()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/P;
    .locals 0

    return-object p0
.end method

.method public final m0()Lcom/android/tools/r8/graph/f3;
    .locals 0

    return-object p0
.end method

.method public final o()[Lcom/android/tools/r8/graph/J0$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/J0$a;->f:[Lcom/android/tools/r8/graph/J0$a;

    return-object v0
.end method

.method public final q0()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final r()[Lcom/android/tools/r8/graph/J0$b;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/J0$b;->d:[Lcom/android/tools/r8/graph/J0$b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultInstanceInitializerCode"

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/graph/Z0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
