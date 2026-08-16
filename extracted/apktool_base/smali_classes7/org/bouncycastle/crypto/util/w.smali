.class public Lorg/bouncycastle/crypto/util/w;
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

    sput-object v0, Lorg/bouncycastle/crypto/util/w;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->x:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/w;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->y:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/w;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->z:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/w;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->A:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/crypto/util/w;->a:Ljava/util/Set;

    sget-object v1, Lyh/a;->B:Loh/x;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXi/c;)Lhi/h0;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, LXi/F0;

    if-eqz v0, :cond_0

    check-cast p0, LXi/F0;

    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->H0:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v2, LXh/A;

    invoke-virtual {p0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, LXh/A;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object v0

    :cond_0
    instance-of v0, p0, LXi/B;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, LXi/B;

    invoke-virtual {p0}, LXi/x;->d()LXi/z;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lhi/u;

    invoke-virtual {v0}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, LXi/z;->c()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, LXi/z;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lhi/u;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_1
    new-instance v0, Lhi/h0;

    new-instance v2, Lhi/b;

    sget-object v3, Lki/r;->s6:Loh/x;

    invoke-direct {v2, v3, v1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXi/B;->e()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, p0}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v2, v1}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V

    return-object v0

    :cond_2
    instance-of v0, p0, LXi/M;

    if-eqz v0, :cond_8

    check-cast p0, LXi/M;

    invoke-virtual {p0}, LXi/J;->d()LXi/G;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    new-instance v0, Lki/j;

    sget-object v1, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1}, Lki/j;-><init>(Loh/t;)V

    goto/16 :goto_1

    :cond_3
    instance-of v3, v0, LXi/H;

    if-eqz v3, :cond_6

    check-cast v0, LXi/H;

    invoke-virtual {p0}, LXi/M;->e()Ljk/i;

    move-result-object v3

    invoke-virtual {v3}, Ljk/i;->f()Ljk/f;

    move-result-object v3

    invoke-virtual {v3}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, LXi/M;->e()Ljk/i;

    move-result-object p0

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v4, Lyh/g;

    invoke-virtual {v0}, LXi/H;->m()Loh/x;

    move-result-object v5

    invoke-virtual {v0}, LXi/H;->k()Loh/x;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lyh/g;-><init>(Loh/x;Loh/x;)V

    sget-object v5, Lorg/bouncycastle/crypto/util/w;->a:Ljava/util/Set;

    invoke-virtual {v0}, LXi/H;->m()Loh/x;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x20

    const/16 v6, 0x40

    if-eqz v0, :cond_4

    sget-object v0, Lyh/a;->m:Loh/x;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v7, 0x100

    if-le v0, v7, :cond_5

    sget-object v0, LCj/a;->h:Loh/x;

    const/16 v5, 0x80

    move v9, v6

    move v6, v5

    move v5, v9

    goto :goto_0

    :cond_5
    sget-object v0, LCj/a;->g:Loh/x;

    :goto_0
    new-array v7, v6, [B

    div-int/lit8 v6, v6, 0x2

    invoke-static {v7, v6, v2, v3}, Lorg/bouncycastle/crypto/util/w;->b([BIILjava/math/BigInteger;)V

    invoke-static {v7, v6, v5, p0}, Lorg/bouncycastle/crypto/util/w;->b([BIILjava/math/BigInteger;)V

    :try_start_0
    new-instance p0, Lhi/h0;

    new-instance v2, Lhi/b;

    invoke-direct {v2, v0, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v0, Loh/C0;

    invoke-direct {v0, v7}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v2, v0}, Lhi/h0;-><init>(Lhi/b;Loh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_6
    instance-of v1, v0, LXi/K;

    if-eqz v1, :cond_7

    new-instance v1, Lki/j;

    check-cast v0, LXi/K;

    invoke-virtual {v0}, LXi/K;->j()Loh/x;

    move-result-object v0

    invoke-direct {v1, v0}, Lki/j;-><init>(Loh/x;)V

    move-object v0, v1

    goto :goto_1

    :cond_7
    new-instance v1, Lki/l;

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v4

    new-instance v5, Lki/n;

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v3

    invoke-direct {v5, v3, v2}, Lki/n;-><init>(Ljk/i;Z)V

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v0, Lki/j;

    invoke-direct {v0, v1}, Lki/j;-><init>(Lki/l;)V

    :goto_1
    invoke-virtual {p0}, LXi/M;->e()Ljk/i;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljk/i;->l(Z)[B

    move-result-object p0

    new-instance v1, Lhi/h0;

    new-instance v2, Lhi/b;

    sget-object v3, Lki/r;->I5:Loh/x;

    invoke-direct {v2, v3, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v1, v2, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v1

    :cond_8
    instance-of v0, p0, LXi/R0;

    if-eqz v0, :cond_9

    check-cast p0, LXi/R0;

    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v2, Lqj/a;->c:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, LXi/R0;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v0

    :cond_9
    instance-of v0, p0, LXi/O0;

    if-eqz v0, :cond_a

    check-cast p0, LXi/O0;

    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v2, Lqj/a;->b:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, LXi/O0;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v0

    :cond_a
    instance-of v0, p0, LXi/T;

    if-eqz v0, :cond_b

    check-cast p0, LXi/T;

    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v2, Lqj/a;->e:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, LXi/T;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v0

    :cond_b
    instance-of v0, p0, LXi/P;

    if-eqz v0, :cond_c

    check-cast p0, LXi/P;

    new-instance v0, Lhi/h0;

    new-instance v1, Lhi/b;

    sget-object v2, Lqj/a;->d:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    invoke-virtual {p0}, LXi/P;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lhi/h0;-><init>(Lhi/b;[B)V

    return-object v0

    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([BIILjava/math/BigInteger;)V
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
