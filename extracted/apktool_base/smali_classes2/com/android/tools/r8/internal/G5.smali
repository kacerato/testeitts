.class public final Lcom/android/tools/r8/internal/G5;
.super Lcom/android/tools/r8/internal/v5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/v5;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/F5;I)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/W;)V
    .locals 17

    move-object/from16 v0, p1

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 15
    iget-object v9, v0, Lcom/android/tools/r8/synthesis/m;->b:Lcom/android/tools/r8/graph/M2;

    .line 16
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    .line 17
    const-string v3, "initialValueSupplier"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 18
    invoke-virtual {v1, v9, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v10

    .line 19
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 21
    invoke-virtual {v1, v9, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 22
    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    const/4 v11, 0x0

    new-array v4, v11, [Lcom/android/tools/r8/graph/M2;

    .line 23
    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    const-string v4, "initialValue"

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 24
    invoke-virtual {v1, v9, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 25
    iget-object v3, v1, Lcom/android/tools/r8/graph/u1;->j3:Lcom/android/tools/r8/graph/M2;

    .line 26
    iput-object v3, v0, Lcom/android/tools/r8/synthesis/m;->i:Lcom/android/tools/r8/graph/M2;

    .line 27
    sget-object v3, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 28
    new-instance v3, Lcom/android/tools/r8/graph/g1$a;

    const/4 v13, 0x1

    invoke-direct {v3, v13}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 29
    invoke-virtual {v3, v10}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v3

    const/16 v4, 0x1011

    .line 30
    invoke-static {v4}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v4

    .line 31
    iput-object v4, v3, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g1$a;->c()Lcom/android/tools/r8/graph/g1$a;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v3

    .line 34
    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    .line 35
    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 36
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 37
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/m;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v3, Lcom/android/tools/r8/internal/pa;

    sget-object v14, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v3, v14, v11}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v3, Lcom/android/tools/r8/internal/kb;

    sget-object v4, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v3, Lcom/android/tools/r8/internal/ga;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->j3:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v7, v11, [Lcom/android/tools/r8/graph/M2;

    .line 42
    invoke-virtual {v1, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 43
    invoke-virtual {v1, v4, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    const/16 v5, 0xb7

    invoke-direct {v3, v5, v4, v11}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 44
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v3, Lcom/android/tools/r8/internal/pa;

    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v3, Lcom/android/tools/r8/internal/U9;

    invoke-direct {v3, v10}, Lcom/android/tools/r8/internal/U9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v3, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v3, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 49
    invoke-static {v2, v13}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    const/16 v3, 0x1001

    .line 50
    invoke-static {v3, v13}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v15

    new-instance v8, Lcom/android/tools/r8/graph/G;

    .line 52
    sget-object v16, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x2

    const/4 v5, 0x2

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v7, v16

    move-object v13, v8

    move-object/from16 v8, v16

    .line 53
    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 54
    invoke-virtual {v15, v13}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    .line 57
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/synthesis/m;

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v2, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v2, v14, v11}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v2, Lcom/android/tools/r8/internal/T9;

    invoke-direct {v2, v10}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcom/android/tools/r8/internal/ga;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->K4:Lcom/android/tools/r8/graph/s2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/s2;->a:Lcom/android/tools/r8/graph/A2;

    const/16 v3, 0xb9

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v1, v14}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 65
    invoke-virtual {v1, v12}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    const/16 v2, 0x1004

    .line 66
    invoke-static {v2, v11}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    new-instance v10, Lcom/android/tools/r8/graph/G;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, v10

    move-object v3, v9

    .line 68
    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 69
    invoke-virtual {v1, v10}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 72
    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/synthesis/m;->b(Ljava/util/AbstractCollection;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->s:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->s:Lcom/android/tools/r8/synthesis/S$b;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 3

    .line 2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 3
    iget-object p2, p3, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/pF0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pF0;-><init>()V

    .line 5
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/qF0;

    invoke-direct {v2, p3}, Lcom/android/tools/r8/internal/qF0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 6
    invoke-virtual {p2, v0, v1, p3, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 7
    iget-object p3, p5, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 8
    invoke-interface {p4, p2, p3}, Lcom/android/tools/r8/internal/q5;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    const/4 p3, 0x2

    .line 9
    invoke-interface {p6, p3}, Lcom/android/tools/r8/internal/QT;->a(I)V

    .line 10
    new-instance p3, Lcom/android/tools/r8/internal/wa;

    iget-object p4, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance p4, Lcom/android/tools/r8/internal/kb;

    sget-object p5, Lcom/android/tools/r8/internal/kb$a;->f:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p4, p5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance p5, Lcom/android/tools/r8/internal/kb;

    sget-object p6, Lcom/android/tools/r8/internal/kb$a;->k:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p5, p6}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance p6, Lcom/android/tools/r8/internal/ga;

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->a3:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 12
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    const/16 p2, 0xb7

    const/4 v0, 0x0

    invoke-direct {p6, p2, p1, v0}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 13
    invoke-static {p3, p4, p5, p6}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method
