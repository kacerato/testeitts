.class public abstract Lcom/android/tools/r8/ir/optimize/M0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Fb;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;
    .locals 6

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 33
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->t3:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 36
    new-instance v3, Lv/L;

    invoke-direct {v3}, Lv/L;-><init>()V

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v4

    new-instance v5, Lv/M;

    invoke-direct {v5, p0, v0, v1}, Lv/M;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;)V

    .line 38
    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 39
    iget-object p2, p2, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 40
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/ir/optimize/N0;->k(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 41
    new-instance p1, Lcom/android/tools/r8/ir/optimize/L0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/optimize/L0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;
    .locals 6

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 12
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v3

    .line 16
    new-instance v4, Lv/J;

    invoke-direct {v4}, Lv/J;-><init>()V

    new-instance v5, Lv/K;

    invoke-direct {v5, p0, v0, v1}, Lv/K;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;)V

    .line 17
    invoke-virtual {v2, v4, v3, p0, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 18
    iget-object p2, p2, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 19
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/ir/optimize/N0;->o(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 20
    new-instance p1, Lcom/android/tools/r8/ir/optimize/L0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/optimize/L0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/N0;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;
    .locals 6

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 24
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->y3:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 26
    new-instance v3, Lv/v;

    invoke-direct {v3}, Lv/v;-><init>()V

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v4

    new-instance v5, Lv/w;

    invoke-direct {v5, p0, v0, v1}, Lv/w;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;)V

    .line 28
    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 29
    iget-object p2, p2, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 30
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/ir/optimize/N0;->r(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 31
    new-instance p1, Lcom/android/tools/r8/ir/optimize/L0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/optimize/L0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->I:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 2
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 4
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 6
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 7
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 8
    new-instance p0, Lv/D;

    invoke-direct {p0, p1}, Lv/D;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 9
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 10
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 20

    move-object/from16 v0, p0

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 12
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 13
    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 14
    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 15
    new-instance v19, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p1

    iget-object v13, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v6, v7, v4, v8}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v4, Lcom/android/tools/r8/internal/wa;

    .line 16
    const-string v7, "Ljava/lang/ClassCastException;"

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v9, Lcom/android/tools/r8/internal/kb;

    sget-object v10, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v9, v10}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v10, Lcom/android/tools/r8/internal/ga;

    .line 17
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v12, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v14, v5, [Lcom/android/tools/r8/graph/M2;

    .line 18
    invoke-virtual {v0, v12, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v12

    .line 19
    const-string v14, "<init>"

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    .line 20
    invoke-virtual {v0, v7, v12, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    const/16 v12, 0xb7

    invoke-direct {v10, v12, v7, v5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v7, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v12, Lcom/android/tools/r8/internal/G9;

    new-instance v14, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v5}, [I

    move-result-object v15

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 21
    invoke-static {v0}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v0

    move-object/from16 v16, v13

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/tools/r8/internal/jy;

    aput-object v0, v13, v5

    invoke-direct {v14, v15, v13}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v12, v14}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v13, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/bb;-><init>()V

    new-array v14, v5, [Lcom/android/tools/r8/internal/W9;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    move-object v5, v9

    move-object v6, v10

    move-object v9, v12

    move-object v10, v13

    move-object v12, v14

    .line 22
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 23
    sget-object v18, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v12, v19

    move-object/from16 v13, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v18

    .line 24
    invoke-direct/range {v12 .. v18}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v3

    .line 5
    new-instance v4, Lv/C;

    invoke-direct {v4}, Lv/C;-><init>()V

    new-instance v5, Lv/E;

    invoke-direct {v5, p0, v0, v1}, Lv/E;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;)V

    .line 6
    invoke-virtual {v2, v4, v3, p0, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 7
    iget-object p2, p2, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 8
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/ir/optimize/N0;->o(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 9
    new-instance p1, Lcom/android/tools/r8/ir/optimize/L0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/optimize/L0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/N0;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;
    .locals 6

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 36
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->B3:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 38
    new-instance v3, Lv/H;

    invoke-direct {v3}, Lv/H;-><init>()V

    .line 39
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v4

    new-instance v5, Lv/I;

    invoke-direct {v5, p0, v0, v1}, Lv/I;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;)V

    .line 40
    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 41
    iget-object p2, p2, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 42
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/ir/optimize/N0;->p(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 43
    new-instance p1, Lcom/android/tools/r8/ir/optimize/L0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/optimize/L0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->H:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 26
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 27
    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 28
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 29
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 30
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 31
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 32
    new-instance p0, Lv/x;

    invoke-direct {p0, p1}, Lv/x;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 33
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 34
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 9

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 21
    new-instance v8, Lcom/android/tools/r8/graph/G;

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance p1, Lcom/android/tools/r8/internal/wa;

    .line 22
    const-string v1, "Ljava/lang/IllegalAccessError;"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v3, Lcom/android/tools/r8/internal/kb;

    sget-object v4, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v5, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/android/tools/r8/graph/M2;

    .line 24
    invoke-virtual {p0, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 25
    const-string v7, "<init>"

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 26
    invoke-virtual {p0, v1, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 v1, 0xb7

    invoke-direct {v4, v1, p0, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance p0, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    .line 27
    invoke-static {v0, p1, v3, v4, p0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 28
    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v7

    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method public static c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 4
    new-instance v3, Lv/F;

    invoke-direct {v3}, Lv/F;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v4

    new-instance v5, Lv/G;

    invoke-direct {v5, p0, v0, v1}, Lv/G;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;)V

    .line 6
    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 7
    iget-object p2, p2, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 8
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/ir/optimize/N0;->m(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 9
    new-instance p1, Lcom/android/tools/r8/ir/optimize/L0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/optimize/L0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public static c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/ir/optimize/N0;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/ir/optimize/L0;
    .locals 6

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 32
    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->D3:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 34
    new-instance v3, Lv/t;

    invoke-direct {v3}, Lv/t;-><init>()V

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object v4

    new-instance v5, Lv/u;

    invoke-direct {v5, p0, v0, v1}, Lv/u;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;)V

    .line 36
    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p0

    .line 37
    iget-object p2, p2, Lcom/android/tools/r8/internal/Df;->c:Lcom/android/tools/r8/graph/H5;

    .line 38
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/ir/optimize/N0;->n(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 39
    new-instance p1, Lcom/android/tools/r8/ir/optimize/L0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/ir/optimize/L0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object p1
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->J:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 11
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 13
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 15
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 16
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 17
    new-instance p0, Lv/B;

    invoke-direct {p0, p1}, Lv/B;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 18
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 19
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static d(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 9

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 12
    new-instance v8, Lcom/android/tools/r8/graph/G;

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance p1, Lcom/android/tools/r8/internal/wa;

    .line 13
    const-string v1, "Ljava/lang/IncompatibleClassChangeError;"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v3, Lcom/android/tools/r8/internal/kb;

    sget-object v4, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v5, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/android/tools/r8/graph/M2;

    .line 15
    invoke-virtual {p0, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 16
    const-string v7, "<init>"

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 17
    invoke-virtual {p0, v1, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 v1, 0xb7

    invoke-direct {v4, v1, p0, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance p0, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    .line 18
    invoke-static {v0, p1, v3, v4, p0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 19
    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v7

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method public static synthetic d(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->K:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 2
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 4
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 6
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 7
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 8
    new-instance p0, Lv/A;

    invoke-direct {p0, p1}, Lv/A;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 9
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 10
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static e(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 9

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 12
    new-instance v8, Lcom/android/tools/r8/graph/G;

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance p1, Lcom/android/tools/r8/internal/wa;

    .line 13
    const-string v1, "Ljava/lang/NoSuchMethodError;"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v3, Lcom/android/tools/r8/internal/kb;

    sget-object v4, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v5, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/android/tools/r8/graph/M2;

    .line 15
    invoke-virtual {p0, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 16
    const-string v7, "<init>"

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 17
    invoke-virtual {p0, v1, v5, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 v1, 0xb7

    invoke-direct {v4, v1, p0, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance p0, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    .line 18
    invoke-static {v0, p1, v3, v4, p0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 19
    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v7

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method public static synthetic e(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->L:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 2
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 4
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 6
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 7
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 8
    new-instance p0, Lv/z;

    invoke-direct {p0, p1}, Lv/z;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 9
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 10
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static f(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 15

    move-object v0, p0

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 12
    new-instance v6, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 13
    new-instance v14, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p1

    iget-object v8, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/wa;

    .line 14
    const-string v3, "Ljava/lang/RuntimeException;"

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v4, Lcom/android/tools/r8/internal/kb;

    sget-object v5, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/ga;

    .line 15
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v10, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v11}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 16
    invoke-virtual {p0, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    .line 17
    const-string v11, "<init>"

    invoke-virtual {p0, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 18
    invoke-virtual {p0, v3, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v3, 0xb7

    invoke-direct {v7, v3, v0, v9}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v9, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v9

    .line 19
    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v11

    .line 20
    sget-object v13, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v7, v14

    move-object v12, v13

    .line 21
    invoke-direct/range {v7 .. v13}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v14
.end method

.method public static synthetic f(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->M:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static f(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 2
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 4
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 6
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 7
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 8
    new-instance p0, Lv/y;

    invoke-direct {p0, p1}, Lv/y;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 9
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 10
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method

.method public static g(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 19

    move-object/from16 v0, p0

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 13
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 14
    new-instance v7, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 15
    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 16
    new-instance v18, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p1

    iget-object v12, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v8, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v6, v8, v4, v7}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v8, v4, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v9, Lcom/android/tools/r8/internal/ga;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    new-array v13, v5, [Lcom/android/tools/r8/graph/M2;

    .line 17
    invoke-virtual {v0, v11, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v11

    .line 18
    const-string v13, "toString"

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 19
    invoke-virtual {v0, v4, v11, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    const/16 v11, 0xb6

    invoke-direct {v9, v11, v4, v5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v11, Lcom/android/tools/r8/internal/kb;

    sget-object v4, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v11, v4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v13, Lcom/android/tools/r8/internal/G9;

    new-instance v4, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v5}, [I

    move-result-object v14

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 20
    invoke-static {v0}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v0

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/android/tools/r8/internal/jy;

    aput-object v0, v15, v5

    invoke-direct {v4, v14, v15}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v13, v4}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v14, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/bb;-><init>()V

    const/16 v15, 0xb

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    move-object v4, v8

    move-object v5, v9

    move-object v6, v11

    move-object v8, v13

    move-object v9, v14

    .line 21
    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 22
    invoke-static {v15, v0}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 23
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v15

    .line 24
    sget-object v17, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v11, v18

    move-object/from16 v16, v17

    .line 25
    invoke-direct/range {v11 .. v17}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v18
.end method

.method public static synthetic g(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->G:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static g(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 3
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 5
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/N;->f:Lcom/android/tools/r8/internal/Ib;

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 7
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->m:Lcom/android/tools/r8/androidapi/f;

    .line 8
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->n:Lcom/android/tools/r8/androidapi/f;

    .line 9
    new-instance p0, Lv/s;

    invoke-direct {p0, p1}, Lv/s;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 10
    iput-object p0, p3, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    .line 11
    iput-object p2, p3, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    return-void
.end method
