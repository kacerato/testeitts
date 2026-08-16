.class public Lorg/bouncycastle/crypto/util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXh/v;)LXi/c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, LXh/t;->H0:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, LXh/t;->Q0:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_19

    sget-object v2, Lhi/E0;->W4:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-object v2, LXh/t;->Y0:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/h;->v(Ljava/lang/Object;)LXh/h;

    move-result-object v0

    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    check-cast p0, Loh/s;

    invoke-virtual {v0}, LXh/h;->x()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    :goto_0
    new-instance v2, LXi/q;

    invoke-virtual {v0}, LXh/h;->y()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, LXh/h;->u()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v4, v0, v3, v1}, LXi/q;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v0, LXi/r;

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v2}, LXi/r;-><init>(Ljava/math/BigInteger;LXi/q;)V

    return-object v0

    :cond_2
    sget-object v2, LBj/b;->l:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LBj/a;->v(Ljava/lang/Object;)LBj/a;

    move-result-object v0

    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    check-cast p0, Loh/s;

    new-instance v1, LXi/X;

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, LXi/W;

    invoke-virtual {v0}, LBj/a;->x()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, LBj/a;->u()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v0}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p0, v2}, LXi/X;-><init>(Ljava/math/BigInteger;LXi/W;)V

    return-object v1

    :cond_3
    sget-object v2, Lki/r;->s6:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    check-cast p0, Loh/s;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Lhi/u;->v(Ljava/lang/Object;)Lhi/u;

    move-result-object v0

    new-instance v3, LXi/z;

    invoke-virtual {v0}, Lhi/u;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lhi/u;->y()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lhi/u;->u()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, LXi/z;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_4
    new-instance v0, LXi/A;

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, v3}, LXi/A;-><init>(Ljava/math/BigInteger;LXi/z;)V

    return-object v0

    :cond_5
    sget-object v2, Lki/r;->I5:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v0

    invoke-virtual {v0}, Lki/j;->z()Z

    move-result v1

    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object v0

    if-eqz v1, :cond_7

    check-cast v0, Loh/x;

    invoke-static {v0}, LJi/a;->l(Loh/x;)Lki/l;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lki/e;->d(Loh/x;)Lki/l;

    move-result-object v1

    :cond_6
    new-instance v2, LXi/K;

    invoke-direct {v2, v0, v1}, LXi/K;-><init>(Loh/x;Lki/l;)V

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object v0

    new-instance v7, LXi/G;

    invoke-virtual {v0}, Lki/l;->v()Ljk/e;

    move-result-object v2

    invoke-virtual {v0}, Lki/l;->z()Ljk/i;

    move-result-object v3

    invoke-virtual {v0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lki/l;->D()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v2, v7

    :goto_1
    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    invoke-static {p0}, LZh/a;->u(Ljava/lang/Object;)LZh/a;

    move-result-object p0

    invoke-virtual {p0}, LZh/a;->v()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, LXi/L;

    invoke-direct {v0, p0, v2}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    return-object v0

    :cond_8
    sget-object v2, Lqj/a;->b:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    const/16 v4, 0x20

    if-eqz v2, :cond_a

    invoke-virtual {p0}, LXh/v;->z()I

    move-result v0

    if-ne v4, v0, :cond_9

    new-instance v0, LXi/N0;

    invoke-virtual {p0}, LXh/v;->x()Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-direct {v0, p0}, LXi/N0;-><init>([B)V

    return-object v0

    :cond_9
    new-instance v0, LXi/N0;

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/o;->d(LXh/v;)[B

    move-result-object p0

    invoke-direct {v0, p0}, LXi/N0;-><init>([B)V

    return-object v0

    :cond_a
    sget-object v2, Lqj/a;->c:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x38

    invoke-virtual {p0}, LXh/v;->z()I

    move-result v1

    if-ne v0, v1, :cond_b

    new-instance v0, LXi/Q0;

    invoke-virtual {p0}, LXh/v;->x()Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-direct {v0, p0}, LXi/Q0;-><init>([B)V

    return-object v0

    :cond_b
    new-instance v0, LXi/Q0;

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/o;->d(LXh/v;)[B

    move-result-object p0

    invoke-direct {v0, p0}, LXi/Q0;-><init>([B)V

    return-object v0

    :cond_c
    sget-object v2, Lqj/a;->d:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v0, LXi/O;

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/o;->d(LXh/v;)[B

    move-result-object p0

    invoke-direct {v0, p0}, LXi/O;-><init>([B)V

    return-object v0

    :cond_d
    sget-object v2, Lqj/a;->e:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v0, LXi/S;

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/o;->d(LXh/v;)[B

    move-result-object p0

    invoke-direct {v0, p0}, LXi/S;-><init>([B)V

    return-object v0

    :cond_e
    sget-object v2, Lyh/a;->m:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, LCj/a;->h:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, LCj/a;->g:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_2

    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "algorithm identifier in private key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_2
    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object v5

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    move-result-object v2

    instance-of v6, v2, Loh/E;

    if-eqz v6, :cond_15

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v6

    invoke-virtual {v6}, Loh/E;->size()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_11

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_15

    :cond_11
    invoke-virtual {v5}, Lyh/g;->y()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lyh/b;->k(Loh/x;)Lki/l;

    move-result-object v0

    new-instance v1, LXi/H;

    new-instance v2, LXi/K;

    invoke-virtual {v5}, Lyh/g;->y()Loh/x;

    move-result-object v3

    invoke-direct {v2, v3, v0}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-virtual {v5}, Lyh/g;->y()Loh/x;

    move-result-object v0

    invoke-virtual {v5}, Lyh/g;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v5}, Lyh/g;->v()Loh/x;

    move-result-object v6

    invoke-direct {v1, v2, v0, v3, v6}, LXi/H;-><init>(LXi/G;Loh/x;Loh/x;Loh/x;)V

    invoke-virtual {p0}, LXh/v;->z()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v4, :cond_14

    const/16 v3, 0x40

    if-ne v0, v3, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    instance-of v0, p0, Loh/s;

    if-eqz v0, :cond_13

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_7

    :cond_13
    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/a;->N0([B)[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    :goto_3
    move-object p0, v0

    goto/16 :goto_7

    :cond_14
    :goto_4
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, LXh/v;->x()Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/a;->N0([B)[B

    move-result-object p0

    invoke-direct {v0, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_3

    :cond_15
    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v0

    invoke-virtual {v0}, Lki/j;->z()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    invoke-static {v0}, Lki/e;->d(Loh/x;)Lki/l;

    move-result-object v1

    new-instance v3, LXi/H;

    new-instance v2, LXi/K;

    invoke-direct {v2, v0, v1}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-virtual {v5}, Lyh/g;->y()Loh/x;

    move-result-object v0

    invoke-virtual {v5}, Lyh/g;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v5}, Lyh/g;->v()Loh/x;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, LXi/H;-><init>(LXi/G;Loh/x;Loh/x;Loh/x;)V

    goto :goto_5

    :cond_16
    invoke-virtual {v0}, Lki/j;->y()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_5

    :cond_17
    invoke-virtual {v0}, Lki/j;->x()Loh/B;

    move-result-object v0

    invoke-static {v0}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object v0

    new-instance v3, LXi/H;

    new-instance v2, LXi/K;

    invoke-direct {v2, v1, v0}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-virtual {v5}, Lyh/g;->y()Loh/x;

    move-result-object v0

    invoke-virtual {v5}, Lyh/g;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v5}, Lyh/g;->v()Loh/x;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, LXi/H;-><init>(LXi/G;Loh/x;Loh/x;Loh/x;)V

    :goto_5
    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    instance-of v0, p0, Loh/s;

    if-eqz v0, :cond_18

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    :goto_6
    move-object v1, v3

    goto :goto_7

    :cond_18
    invoke-static {p0}, LZh/a;->u(Ljava/lang/Object;)LZh/a;

    move-result-object p0

    invoke-virtual {p0}, LZh/a;->v()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_6

    :goto_7
    new-instance v0, LXi/L;

    new-instance v2, LXi/H;

    invoke-virtual {v5}, Lyh/g;->y()Loh/x;

    move-result-object v3

    invoke-virtual {v5}, Lyh/g;->u()Loh/x;

    move-result-object v4

    invoke-virtual {v5}, Lyh/g;->v()Loh/x;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, LXi/H;-><init>(LXi/G;Loh/x;Loh/x;Loh/x;)V

    invoke-direct {v0, p0, v2}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    return-object v0

    :cond_19
    :goto_8
    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    invoke-static {p0}, LXh/y;->y(Ljava/lang/Object;)LXh/y;

    move-result-object p0

    new-instance v9, LXi/G0;

    invoke-virtual {p0}, LXh/y;->A()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, LXh/y;->E()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, LXh/y;->D()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, LXh/y;->B()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, LXh/y;->C()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, LXh/y;->v()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, LXh/y;->x()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, LXh/y;->u()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LXi/G0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "keyInfo argument null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/InputStream;)LXi/c;
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

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/o;->a(LXh/v;)LXi/c;

    move-result-object p0

    return-object p0
.end method

.method public static c([B)LXi/c;
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

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/o;->a(LXh/v;)LXi/c;

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

.method public static d(LXh/v;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    return-object p0
.end method
