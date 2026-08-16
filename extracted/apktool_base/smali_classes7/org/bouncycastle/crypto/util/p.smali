.class public Lorg/bouncycastle/crypto/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/crypto/util/p;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->x:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/p;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->y:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/p;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->z:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/p;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->A:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/p;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->B:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXi/c;)LXh/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/util/p;->b(LXi/c;Loh/G;)LXh/v;

    move-result-object p0

    return-object p0
.end method

.method public static b(LXi/c;Loh/G;)LXh/v;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, LXi/F0;

    if-eqz v0, :cond_0

    check-cast p0, LXi/G0;

    new-instance v0, LXh/v;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->H0:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v2, LXh/y;

    invoke-virtual {p0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, LXi/G0;->l()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, LXi/G0;->k()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, LXi/G0;->m()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p0}, LXi/G0;->i()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p0}, LXi/G0;->j()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p0}, LXi/G0;->n()Ljava/math/BigInteger;

    move-result-object v12

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, LXh/y;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v0

    :cond_0
    instance-of v0, p0, LXi/A;

    if-eqz v0, :cond_1

    check-cast p0, LXi/A;

    invoke-virtual {p0}, LXi/x;->d()LXi/z;

    move-result-object v0

    new-instance v1, LXh/v;

    new-instance v2, Lhi/b;

    sget-object v3, Lki/r;->s6:Loh/x;

    new-instance v4, Lhi/u;

    invoke-virtual {v0}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, LXi/z;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, LXi/z;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Lhi/u;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Loh/s;

    invoke-virtual {p0}, LXi/A;->e()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v0, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v1

    :cond_1
    instance-of v0, p0, LXi/L;

    if-eqz v0, :cond_9

    check-cast p0, LXi/L;

    invoke-virtual {p0}, LXi/J;->d()LXi/G;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v2, Lki/j;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v2, v3}, Lki/j;-><init>(Loh/t;)V

    invoke-virtual {p0}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    goto/16 :goto_4

    :cond_2
    instance-of v2, v0, LXi/H;

    if-eqz v2, :cond_7

    new-instance p1, Lyh/g;

    check-cast v0, LXi/H;

    invoke-virtual {v0}, LXi/H;->m()Loh/x;

    move-result-object v2

    invoke-virtual {v0}, LXi/H;->k()Loh/x;

    move-result-object v3

    invoke-virtual {v0}, LXi/H;->l()Loh/x;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0}, Lyh/g;-><init>(Loh/x;Loh/x;Loh/x;)V

    sget-object v0, Lorg/bouncycastle/crypto/util/p;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lyh/g;->y()Loh/x;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_3

    sget-object v0, Lyh/a;->m:Loh/x;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x100

    if-le v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    sget-object v3, LCj/a;->h:Loh/x;

    goto :goto_2

    :cond_5
    sget-object v3, LCj/a;->g:Loh/x;

    :goto_2
    if-eqz v0, :cond_6

    const/16 v2, 0x40

    :cond_6
    move-object v0, v3

    :goto_3
    new-array v3, v2, [B

    invoke-virtual {p0}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v3, v2, v1, p0}, Lorg/bouncycastle/crypto/util/p;->c([BIILjava/math/BigInteger;)V

    new-instance p0, LXh/v;

    new-instance v1, Lhi/b;

    invoke-direct {v1, v0, p1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance p1, Loh/C0;

    invoke-direct {p1, v3}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v1, p1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    return-object p0

    :cond_7
    instance-of v2, v0, LXi/K;

    if-eqz v2, :cond_8

    new-instance v2, Lki/j;

    move-object v3, v0

    check-cast v3, LXi/K;

    invoke-virtual {v3}, LXi/K;->j()Loh/x;

    move-result-object v3

    invoke-direct {v2, v3}, Lki/j;-><init>(Loh/x;)V

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_8
    new-instance v2, Lki/l;

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v5

    new-instance v6, Lki/n;

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Lki/n;-><init>(Ljk/i;Z)V

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v3, Lki/j;

    invoke-direct {v3, v2}, Lki/j;-><init>(Lki/l;)V

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move-object v13, v3

    move v3, v2

    move-object v2, v13

    :goto_4
    new-instance v4, Ljk/k;

    invoke-direct {v4}, Ljk/k;-><init>()V

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v0

    invoke-virtual {p0}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljk/b;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v0

    new-instance v4, Loh/r0;

    invoke-virtual {v0, v1}, Ljk/i;->l(Z)[B

    move-result-object v0

    invoke-direct {v4, v0}, Loh/r0;-><init>([B)V

    new-instance v0, LXh/v;

    new-instance v1, Lhi/b;

    sget-object v5, Lki/r;->I5:Loh/x;

    invoke-direct {v1, v5, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v5, LZh/a;

    invoke-virtual {p0}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v5, v3, p0, v4, v2}, LZh/a;-><init>(ILjava/math/BigInteger;Loh/c;Loh/g;)V

    invoke-direct {v0, v1, v5, p1}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;)V

    return-object v0

    :cond_9
    instance-of v0, p0, LXi/Q0;

    if-eqz v0, :cond_a

    check-cast p0, LXi/Q0;

    new-instance v0, LXh/v;

    new-instance v1, Lhi/b;

    sget-object v2, Lqj/a;->c:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, LXi/Q0;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {p0}, LXi/Q0;->e()LXi/R0;

    move-result-object p0

    invoke-virtual {p0}, LXi/R0;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-object v0

    :cond_a
    instance-of v0, p0, LXi/N0;

    if-eqz v0, :cond_b

    check-cast p0, LXi/N0;

    new-instance v0, LXh/v;

    new-instance v1, Lhi/b;

    sget-object v2, Lqj/a;->b:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, LXi/N0;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {p0}, LXi/N0;->e()LXi/O0;

    move-result-object p0

    invoke-virtual {p0}, LXi/O0;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-object v0

    :cond_b
    instance-of v0, p0, LXi/S;

    if-eqz v0, :cond_c

    check-cast p0, LXi/S;

    new-instance v0, LXh/v;

    new-instance v1, Lhi/b;

    sget-object v2, Lqj/a;->e:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, LXi/S;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {p0}, LXi/S;->e()LXi/T;

    move-result-object p0

    invoke-virtual {p0}, LXi/T;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-object v0

    :cond_c
    instance-of v0, p0, LXi/O;

    if-eqz v0, :cond_d

    check-cast p0, LXi/O;

    new-instance v0, LXh/v;

    new-instance v1, Lhi/b;

    sget-object v2, Lqj/a;->d:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    new-instance v2, Loh/C0;

    invoke-virtual {p0}, LXi/O;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {p0}, LXi/O;->e()LXi/P;

    move-result-object p0

    invoke-virtual {p0}, LXi/P;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([BIILjava/math/BigInteger;)V
    .locals 4

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    array-length v2, p3

    sub-int v2, p1, v2

    array-length v3, p3

    invoke-static {p3, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    :goto_0
    if-eq v1, p1, :cond_1

    add-int v0, p2, v1

    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p3, v2

    aput-byte v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
