.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([I)[I
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget p0, p0, v3

    aput p0, v1, v3

    goto :goto_0

    :cond_0
    array-length v2, p0

    if-ne v2, v0, :cond_6

    aget v0, p0, v3

    aget v2, p0, v4

    const/4 v5, 0x2

    if-ge v0, v2, :cond_2

    aget v6, p0, v5

    if-ge v0, v6, :cond_2

    aput v0, v1, v3

    if-ge v2, v6, :cond_1

    aput v2, v1, v4

    aput v6, v1, v5

    goto :goto_0

    :cond_1
    aput v6, v1, v4

    aget p0, p0, v4

    aput p0, v1, v5

    goto :goto_0

    :cond_2
    aget v0, p0, v5

    if-ge v2, v0, :cond_4

    aput v2, v1, v3

    aget p0, p0, v3

    if-ge p0, v0, :cond_3

    aput p0, v1, v4

    aput v0, v1, v5

    goto :goto_0

    :cond_3
    aput v0, v1, v4

    aput p0, v1, v5

    goto :goto_0

    :cond_4
    aput v0, v1, v3

    aget v0, p0, v3

    if-ge v0, v2, :cond_5

    aput v0, v1, v4

    aget p0, p0, v4

    aput p0, v1, v5

    goto :goto_0

    :cond_5
    aput v2, v1, v4

    aput v0, v1, v5

    :goto_0
    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Trinomials and pentanomials supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljk/i;Lhk/e;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, Lhk/e;->b()Ljk/i;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lorg/bouncycastle/util/i;

    invoke-virtual {p0, v1}, Ljk/i;->l(Z)[B

    move-result-object p0

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v3

    invoke-virtual {v3}, Ljk/f;->e()[B

    move-result-object v3

    invoke-virtual {v0}, Ljk/e;->r()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->e()[B

    move-result-object v0

    invoke-virtual {p1, v1}, Ljk/i;->l(Z)[B

    move-result-object p1

    invoke-static {p0, v3, v0, p1}, Lorg/bouncycastle/util/a;->D([B[B[B[B)[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/util/i;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/util/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lorg/bouncycastle/util/i;

    invoke-virtual {p0, v1}, Ljk/i;->l(Z)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/util/i;-><init>([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/util/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/security/PrivateKey;)LXi/c;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lfk/d;

    if-eqz v0, :cond_2

    check-cast p0, Lfk/d;

    invoke-interface {p0}, Lfk/b;->getParameters()Lhk/e;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {v0}, LTj/c;->b()Lhk/e;

    move-result-object v0

    :cond_0
    invoke-interface {p0}, Lfk/b;->getParameters()Lhk/e;

    move-result-object v1

    instance-of v1, v1, Lhk/c;

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lfk/b;->getParameters()Lhk/e;

    move-result-object v1

    check-cast v1, Lhk/c;

    invoke-virtual {v1}, Lhk/c;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, LXi/L;

    invoke-interface {p0}, Lfk/d;->m1()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v10, LXi/K;

    invoke-static {v1}, Lki/e;->h(Ljava/lang/String;)Loh/x;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v6

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, Lhk/e;->e()[B

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, LXi/K;-><init>(Loh/x;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v2, p0, v10}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    return-object v2

    :cond_1
    new-instance v1, LXi/L;

    invoke-interface {p0}, Lfk/d;->m1()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v8, LXi/G;

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lhk/e;->e()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v8}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    return-object v1

    :cond_2
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object v0

    new-instance v1, LXi/L;

    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v8, LXi/G;

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lhk/e;->e()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v8}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    return-object v1

    :cond_3
    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/a;->p(LXh/v;)Ljava/security/PrivateKey;

    move-result-object p0

    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->c(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify EC private key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :try_start_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "no encoding for EC private key"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EC private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/security/PublicKey;)LXi/c;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lfk/e;

    if-eqz v0, :cond_0

    check-cast p0, Lfk/e;

    invoke-interface {p0}, Lfk/b;->getParameters()Lhk/e;

    move-result-object v0

    new-instance v1, LXi/M;

    invoke-interface {p0}, Lfk/e;->Ne()Ljk/i;

    move-result-object p0

    new-instance v8, LXi/G;

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lhk/e;->e()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v8}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object v0

    new-instance v1, LXi/M;

    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object p0

    new-instance v8, LXi/G;

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lhk/e;->e()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p0, v8}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/a;->q(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object p0

    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->d(Ljava/security/PublicKey;)LXi/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "cannot identify EC public key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :try_start_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "no encoding for EC public key"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EC public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Loh/x;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lki/e;->f(Loh/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(LTj/c;Lhk/e;)LXi/G;
    .locals 12

    instance-of v0, p1, Lhk/c;

    if-eqz v0, :cond_0

    check-cast p1, Lhk/c;

    invoke-virtual {p1}, Lhk/c;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->l(Ljava/lang/String;)Loh/x;

    move-result-object v1

    new-instance p0, LXi/K;

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object v2

    invoke-virtual {p1}, Lhk/e;->b()Ljk/i;

    move-result-object v3

    invoke-virtual {p1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lhk/e;->e()[B

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LXi/K;-><init>(Loh/x;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, LTj/c;->b()Lhk/e;

    move-result-object p0

    new-instance p1, LXi/G;

    invoke-virtual {p0}, Lhk/e;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p0}, Lhk/e;->b()Ljk/i;

    move-result-object v2

    invoke-virtual {p0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lhk/e;->e()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    new-instance p0, LXi/G;

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object v7

    invoke-virtual {p1}, Lhk/e;->b()Ljk/i;

    move-result-object v8

    invoke-virtual {p1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p1}, Lhk/e;->e()[B

    move-result-object v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    return-object p0
.end method

.method public static g(LTj/c;Lki/j;)LXi/G;
    .locals 6

    invoke-virtual {p1}, Lki/j;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lki/j;->x()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, LTj/c;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lki/l;

    :cond_0
    new-instance p0, LXi/K;

    invoke-direct {p0, p1, v0}, LXi/K;-><init>(Loh/x;Lki/l;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lki/j;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, LTj/c;->b()Lhk/e;

    move-result-object p0

    new-instance p1, LXi/G;

    invoke-virtual {p0}, Lhk/e;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p0}, Lhk/e;->b()Ljk/i;

    move-result-object v2

    invoke-virtual {p0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lhk/e;->e()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lki/j;->x()Loh/B;

    move-result-object p0

    invoke-static {p0}, Lki/l;->B(Ljava/lang/Object;)Lki/l;

    move-result-object p0

    new-instance p1, LXi/G;

    invoke-virtual {p0}, Lki/l;->v()Ljk/e;

    move-result-object v1

    invoke-virtual {p0}, Lki/l;->z()Ljk/i;

    move-result-object v2

    invoke-virtual {p0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lki/l;->D()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static h(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i$a;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i$a;-><init>(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Lki/l;
    .locals 1

    invoke-static {p0}, LJi/a;->j(Ljava/lang/String;)Lki/l;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lki/e;->b(Ljava/lang/String;)Lki/l;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static j(Loh/x;)Lki/l;
    .locals 1

    invoke-static {p0}, LJi/a;->l(Loh/x;)Lki/l;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lki/e;->d(Loh/x;)Lki/l;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static k(Lhk/e;)Loh/x;
    .locals 5

    invoke-static {}, Lki/e;->g()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lki/e;->b(Ljava/lang/String;)Lki/l;

    move-result-object v2

    invoke-virtual {v2}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lki/l;->v()Ljk/e;

    move-result-object v3

    invoke-virtual {p0}, Lhk/e;->a()Ljk/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljk/e;->n(Ljk/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lki/l;->z()Ljk/i;

    move-result-object v2

    invoke-virtual {p0}, Lhk/e;->b()Ljk/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljk/i;->e(Ljk/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lki/e;->h(Ljava/lang/String;)Loh/x;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Loh/x;
    .locals 2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->m(Ljava/lang/String;)Loh/x;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Lki/e;->h(Ljava/lang/String;)Loh/x;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Loh/x;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Loh/x;

    invoke-direct {v0, p0}, Loh/x;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static n(LTj/c;Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 0

    if-nez p1, :cond_2

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, LTj/c;->b()Lhk/e;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public static o(Ljava/lang/String;Ljava/math/BigInteger;Lhk/e;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljk/k;

    invoke-direct {v2}, Ljk/k;-><init>()V

    invoke-virtual {p2}, Lhk/e;->b()Ljk/i;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljk/b;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " Private Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->b(Ljk/i;Lhk/e;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            X: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            Y: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljk/i;Lhk/e;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " Public Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->b(Ljk/i;Lhk/e;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            X: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            Y: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
