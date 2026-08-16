.class public Lpl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[S
    .locals 4

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lorg/bouncycastle/util/p;->C([BI)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(LXh/v;)LXi/c;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_25

    invoke-virtual/range {p0 .. p0}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, LXk/m;->W:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    new-instance v2, LTl/e;

    invoke-static {v0}, Lpl/g;->y(Lhi/b;)I

    move-result v0

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, LTl/e;-><init>(I[B)V

    return-object v2

    :cond_0
    sget-object v2, LXk/m;->r:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lnl/i;

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/s;->u(Ljava/lang/Object;)LXk/s;

    move-result-object v0

    invoke-static {v0}, Lpl/g;->G(LXk/s;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnl/i;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_1
    sget-object v2, LXk/m;->v:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lhl/g;

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-static {v1}, Lpl/b;->a([B)[S

    move-result-object v1

    invoke-direct {v0, v1}, Lhl/g;-><init>([S)V

    return-object v0

    :cond_2
    sget-object v2, LXh/t;->Q2:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, LXh/v;->A()Loh/c;

    move-result-object v1

    invoke-static {v0, v4}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v2

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Loh/c;->J()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    array-length v2, v1

    invoke-static {v1, v5, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/v;->l([B[B)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v0

    return-object v0

    :cond_3
    array-length v1, v0

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/v;->k(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Loh/c;->J()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/f;->h([B[B)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object v0

    return-object v0

    :cond_5
    array-length v1, v0

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/f;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v2, Lqh/a;->a0:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lqh/a;->L0:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_6

    :cond_7
    sget-object v2, Lqh/a;->Y0:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v1}, Lpl/g;->w(Loh/x;)Lkl/l;

    move-result-object v1

    new-instance v2, Lkl/m;

    invoke-direct {v2, v1, v0}, Lkl/m;-><init>(Lkl/l;[B)V

    return-object v2

    :cond_8
    sget-object v2, Lqh/a;->N1:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/a;->z(Ljava/lang/Object;)LXk/a;

    move-result-object v0

    invoke-static {v1}, Lpl/g;->q(Loh/x;)Lal/j;

    move-result-object v3

    new-instance v1, Lal/k;

    invoke-virtual {v0}, LXk/a;->x()[B

    move-result-object v4

    invoke-virtual {v0}, LXk/a;->v()[B

    move-result-object v5

    invoke-virtual {v0}, LXk/a;->y()[B

    move-result-object v6

    invoke-virtual {v0}, LXk/a;->u()[B

    move-result-object v7

    invoke-virtual {v0}, LXk/a;->B()[B

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lal/k;-><init>(Lal/j;[B[B[B[B[B)V

    return-object v1

    :cond_9
    sget-object v2, Lqh/a;->Y1:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v1}, Lpl/g;->h(Loh/x;)Lel/h;

    move-result-object v1

    new-instance v2, Lel/i;

    invoke-direct {v2, v1, v0}, Lel/i;-><init>(Lel/h;[B)V

    return-object v2

    :cond_a
    sget-object v2, Lqh/a;->f2:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v1}, Lpl/g;->C(Loh/x;)Lml/h;

    move-result-object v1

    new-instance v2, Lml/i;

    invoke-direct {v2, v1, v0}, Lml/i;-><init>(Lml/h;[B)V

    return-object v2

    :cond_b
    sget-object v2, Lqh/a;->H2:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v1}, Lpl/g;->s(Loh/x;)Lil/g;

    move-result-object v1

    new-instance v2, Lil/h;

    invoke-direct {v2, v1, v0}, Lil/h;-><init>(Lil/g;[B)V

    return-object v2

    :cond_c
    sget-object v2, Lqh/a;->O2:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-static {v1}, Lpl/g;->o(Loh/x;)Lcl/i;

    move-result-object v1

    new-instance v2, Lcl/j;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcl/j;-><init>(Lcl/i;[B)V

    return-object v2

    :cond_d
    sget-object v2, Lqh/a;->W2:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-static {v1}, Lpl/g;->u(Loh/x;)Ljl/f;

    move-result-object v9

    new-instance v1, Ljl/g;

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v10

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v11

    invoke-virtual {v0, v7}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v12

    invoke-virtual {v0, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v13

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Ljl/g;-><init>(Ljl/f;[B[B[B[B)V

    return-object v1

    :cond_e
    sget-object v2, Lqh/a;->d3:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-static {v1}, Lpl/g;->E(Loh/x;)Ljl/n;

    move-result-object v9

    new-instance v1, Ljl/o;

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v10

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v11

    invoke-virtual {v0, v7}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v12

    invoke-virtual {v0, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v13

    invoke-virtual {v0, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v14

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Ljl/o;-><init>(Ljl/n;[B[B[B[B[B)V

    return-object v1

    :cond_f
    sget-object v2, Lqh/a;->u1:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lqh/a;->v1:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_1d

    sget-object v2, Lqh/a;->w1:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_5

    :cond_10
    sget-object v2, Lqh/a;->r1:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lqh/a;->s1:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_4

    :cond_11
    sget-object v2, Lqh/a;->k3:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v1}, Lpl/g;->b(Loh/x;)LZk/g;

    move-result-object v1

    invoke-virtual {v1}, LZk/g;->g()I

    move-result v2

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    invoke-virtual {v1}, LZk/g;->g()I

    move-result v3

    invoke-virtual {v1}, LZk/g;->g()I

    move-result v4

    mul-int/2addr v4, v7

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v3

    invoke-virtual {v1}, LZk/g;->g()I

    move-result v4

    mul-int/2addr v4, v7

    array-length v5, v0

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    new-instance v4, LZk/h;

    invoke-direct {v4, v1, v2, v3, v0}, LZk/h;-><init>(LZk/g;[B[B[B)V

    return-object v4

    :cond_12
    sget-object v2, Lqh/a;->o3:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v1}, Lpl/g;->m(Loh/x;)Lgl/j;

    move-result-object v1

    new-instance v2, Lgl/k;

    invoke-direct {v2, v1, v0}, Lgl/k;-><init>(Lgl/j;[B)V

    return-object v2

    :cond_13
    sget-object v2, Lqh/a;->A1:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v1}, Lpl/g;->A(Loh/x;)Lll/h;

    move-result-object v1

    new-instance v2, Lll/i;

    invoke-direct {v2, v1, v0}, Lll/i;-><init>(Lll/h;[B)V

    return-object v2

    :cond_14
    sget-object v2, LXk/m;->w:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    const-string v3, "ClassNotFoundException processing BDS state: "

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/v;->v(Ljava/lang/Object;)LXk/v;

    move-result-object v0

    invoke-virtual {v0}, LXk/v;->x()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v2

    invoke-static {v2}, LXk/z;->w(Ljava/lang/Object;)LXk/z;

    move-result-object v2

    :try_start_0
    new-instance v4, Lql/I$b;

    new-instance v5, Lql/H;

    invoke-virtual {v0}, LXk/v;->u()I

    move-result v0

    invoke-static {v1}, Lpl/g;->j(Loh/x;)LBi/y;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lql/H;-><init>(ILBi/y;)V

    invoke-direct {v4, v5}, Lql/I$b;-><init>(Lql/H;)V

    invoke-virtual {v2}, LXk/z;->v()I

    move-result v0

    invoke-virtual {v4, v0}, Lql/I$b;->l(I)Lql/I$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/z;->B()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lql/I$b;->r([B)Lql/I$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/z;->A()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lql/I$b;->q([B)Lql/I$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/z;->y()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lql/I$b;->o([B)Lql/I$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/z;->z()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lql/I$b;->p([B)Lql/I$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/z;->C()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v2}, LXk/z;->x()I

    move-result v4

    invoke-virtual {v0, v4}, Lql/I$b;->m(I)Lql/I$b;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_15
    :goto_0
    invoke-virtual {v2}, LXk/z;->u()[B

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v2}, LXk/z;->u()[B

    move-result-object v2

    const-class v4, Lql/a;

    invoke-static {v2, v4}, Lql/O;->g([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lql/a;

    invoke-virtual {v2, v1}, Lql/a;->o(Loh/x;)Lql/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/I$b;->k(Lql/a;)Lql/I$b;

    :cond_16
    invoke-virtual {v0}, Lql/I$b;->j()Lql/I;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    sget-object v2, LXk/m;->F:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/w;->v(Ljava/lang/Object;)LXk/w;

    move-result-object v0

    invoke-virtual {v0}, LXk/w;->y()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v2

    invoke-static {v2}, LXk/x;->w(Ljava/lang/Object;)LXk/x;

    move-result-object v2

    new-instance v4, Lql/A$b;

    new-instance v5, Lql/z;

    invoke-virtual {v0}, LXk/w;->u()I

    move-result v6

    invoke-virtual {v0}, LXk/w;->x()I

    move-result v0

    invoke-static {v1}, Lpl/g;->j(Loh/x;)LBi/y;

    move-result-object v7

    invoke-direct {v5, v6, v0, v7}, Lql/z;-><init>(IILBi/y;)V

    invoke-direct {v4, v5}, Lql/A$b;-><init>(Lql/z;)V

    invoke-virtual {v2}, LXk/x;->v()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lql/A$b;->m(J)Lql/A$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/x;->B()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lql/A$b;->s([B)Lql/A$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/x;->A()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lql/A$b;->r([B)Lql/A$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/x;->y()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lql/A$b;->p([B)Lql/A$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/x;->z()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lql/A$b;->q([B)Lql/A$b;

    move-result-object v0

    invoke-virtual {v2}, LXk/x;->C()I

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v2}, LXk/x;->x()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lql/A$b;->n(J)Lql/A$b;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_18
    :goto_2
    invoke-virtual {v2}, LXk/x;->u()[B

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual {v2}, LXk/x;->u()[B

    move-result-object v2

    const-class v4, Lql/b;

    invoke-static {v2, v4}, Lql/O;->g([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lql/b;

    invoke-virtual {v2, v1}, Lql/b;->h(Loh/x;)Lql/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lql/A$b;->l(Lql/b;)Lql/A$b;

    :cond_19
    invoke-virtual {v0}, Lql/A$b;->k()Lql/A;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :goto_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    sget-object v0, LXk/m;->n:Loh/x;

    invoke-virtual {v1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/i;->y(Ljava/lang/Object;)LXk/i;

    move-result-object v0

    new-instance v8, LRl/g;

    invoke-virtual {v0}, LXk/i;->A()I

    move-result v2

    invoke-virtual {v0}, LXk/i;->z()I

    move-result v3

    invoke-virtual {v0}, LXk/i;->v()LWl/h;

    move-result-object v4

    invoke-virtual {v0}, LXk/i;->x()LWl/y;

    move-result-object v5

    invoke-virtual {v0}, LXk/i;->B()LWl/x;

    move-result-object v6

    invoke-virtual {v0}, LXk/i;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lpl/g;->k(Loh/x;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, LRl/g;-><init>(IILWl/h;LWl/y;LWl/x;Ljava/lang/String;)V

    return-object v8

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "algorithm identifier in private key not recognised"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_4
    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/c;->w(Ljava/lang/Object;)LXk/c;

    move-result-object v0

    invoke-static {v1}, Lpl/g;->f(Loh/x;)Ldl/m;

    move-result-object v3

    new-instance v1, Ldl/n;

    invoke-virtual {v0}, LXk/c;->z()[B

    move-result-object v4

    invoke-virtual {v0}, LXk/c;->v()[B

    move-result-object v5

    invoke-virtual {v0}, LXk/c;->u()[B

    move-result-object v6

    invoke-virtual {v0}, LXk/c;->x()LXk/d;

    move-result-object v0

    invoke-virtual {v0}, LXk/d;->u()[B

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Ldl/n;-><init>(Ldl/m;[B[B[B[B)V

    return-object v1

    :cond_1d
    :goto_5
    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-static {v1}, Lpl/g;->d(Loh/x;)Lbl/e;

    move-result-object v9

    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_20

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    invoke-virtual {v1}, Loh/s;->O()I

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, LXh/v;->A()Loh/c;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v4, 0x5

    if-eqz v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, LXh/v;->A()Loh/c;

    move-result-object v1

    invoke-static {v9, v1}, Lpl/d$d;->b(Lbl/e;Loh/c;)Lbl/g;

    move-result-object v1

    new-instance v17, Lbl/f;

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v10

    invoke-virtual {v0, v7}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v11

    invoke-virtual {v0, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v12

    invoke-virtual {v0, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v13

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v14

    invoke-virtual {v0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v15

    invoke-virtual {v1}, Lbl/g;->g()[B

    move-result-object v16

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v16}, Lbl/f;-><init>(Lbl/e;[B[B[B[B[B[B[B)V

    return-object v17

    :cond_1e
    new-instance v1, Lbl/f;

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v10

    invoke-virtual {v0, v7}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v11

    invoke-virtual {v0, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v12

    invoke-virtual {v0, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v13

    invoke-virtual {v0, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v3

    invoke-virtual {v3}, Loh/c;->J()[B

    move-result-object v14

    invoke-virtual {v0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v15

    const/16 v16, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lbl/f;-><init>(Lbl/e;[B[B[B[B[B[B[B)V

    return-object v1

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown private key version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    instance-of v1, v0, Loh/C0;

    if-eqz v1, :cond_22

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, LXh/v;->A()Loh/c;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, LXh/v;->A()Loh/c;

    move-result-object v1

    invoke-static {v9, v1}, Lpl/d$d;->b(Lbl/e;Loh/c;)Lbl/g;

    move-result-object v1

    new-instance v2, Lbl/f;

    invoke-direct {v2, v9, v0, v1}, Lbl/f;-><init>(Lbl/e;[BLbl/g;)V

    return-object v2

    :cond_21
    new-instance v1, Lbl/f;

    const/4 v2, 0x0

    invoke-direct {v1, v9, v0, v2}, Lbl/f;-><init>(Lbl/e;[BLbl/g;)V

    return-object v1

    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_6
    invoke-static {v1}, Lpl/g;->I(Loh/x;)Lol/t;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, LXh/v;->E()Loh/g;

    move-result-object v0

    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_24

    invoke-static {v0}, LXk/t;->u(Ljava/lang/Object;)LXk/t;

    move-result-object v0

    invoke-virtual {v0}, LXk/t;->v()LXk/u;

    move-result-object v1

    new-instance v8, Lol/u;

    invoke-virtual {v0}, LXk/t;->y()[B

    move-result-object v4

    invoke-virtual {v0}, LXk/t;->x()[B

    move-result-object v5

    invoke-virtual {v1}, LXk/u;->x()[B

    move-result-object v6

    invoke-virtual {v1}, LXk/u;->v()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lol/u;-><init>(Lol/t;[B[B[B[B)V

    return-object v8

    :cond_24
    new-instance v1, Lol/u;

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lol/u;-><init>(Lol/t;[B)V

    return-object v1

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyInfo array null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/io/InputStream;)LXi/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Loh/r;

    invoke-direct {v0, p0}, Loh/r;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object p0

    invoke-static {p0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p0

    invoke-static {p0}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)LXi/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_0

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p0

    invoke-static {p0}, Lpl/b;->b(LXh/v;)LXi/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKeyInfoData array empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "privateKeyInfoData array null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
