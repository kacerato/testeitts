.class public Lorg/bouncycastle/crypto/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "openssh-key-v1\u0000"

    invoke-static {v0}, Lorg/bouncycastle/util/w;->j(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/util/j;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/E;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/s;

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(LXi/c;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_4

    instance-of v0, p0, LXi/G0;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/p;->a(LXi/c;)LXh/v;

    move-result-object p0

    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, LXi/L;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/p;->a(LXi/c;)LXh/v;

    move-result-object p0

    invoke-virtual {p0}, LXh/v;->E()Loh/g;

    move-result-object p0

    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, LXi/A;

    if-eqz v0, :cond_2

    check-cast p0, LXi/A;

    invoke-virtual {p0}, LXi/x;->d()LXi/z;

    move-result-object v0

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    new-instance v2, Loh/s;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/s;

    invoke-virtual {v0}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/s;

    invoke-virtual {v0}, LXi/z;->c()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/s;

    invoke-virtual {v0}, LXi/z;->a()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0}, LXi/z;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, LXi/A;->e()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Loh/s;

    invoke-direct {v2, v0}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v0, Loh/s;

    invoke-virtual {p0}, LXi/A;->e()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v0}, Loh/h;->a(Loh/g;)V

    :try_start_0
    new-instance p0, Loh/G0;

    invoke-direct {p0, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode DSAPrivateKeyParameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p0, LXi/O;

    if-eqz v0, :cond_3

    check-cast p0, LXi/O;

    invoke-virtual {p0}, LXi/O;->e()LXi/P;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/util/t;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/util/t;-><init>()V

    sget-object v2, Lorg/bouncycastle/crypto/util/j;->a:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/t;->g([B)V

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/util/t;->d(I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/k;->a(LXi/c;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/util/t;->f([B)V

    new-instance v3, Lorg/bouncycastle/crypto/util/t;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/util/t;-><init>()V

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/t;->d(I)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/t;->d(I)V

    const-string v4, "ssh-ed25519"

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, LXi/P;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/util/t;->f([B)V

    invoke-virtual {p0}, LXi/O;->getEncoded()[B

    move-result-object p0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/bouncycastle/crypto/util/t;->f([B)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/util/t;->b()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/crypto/util/t;->f([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/t;->a()[B

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to openssh private key"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "param is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([B)LXi/c;
    .locals 14

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/j;->a(Loh/E;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/util/b;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v4, LXi/A;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, LXi/z;

    invoke-virtual {p0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/s;

    invoke-virtual {v2}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    check-cast v3, Loh/s;

    invoke-virtual {v3}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v5}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    check-cast p0, Loh/s;

    invoke-virtual {p0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, LXi/z;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v0, v1}, LXi/A;-><init>(Ljava/math/BigInteger;LXi/z;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/j;->a(Loh/E;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/util/b;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

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

    move-object v4, v9

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/M;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/M;

    if-eqz v0, :cond_9

    invoke-static {p0}, LZh/a;->u(Ljava/lang/Object;)LZh/a;

    move-result-object p0

    invoke-virtual {p0}, LZh/a;->y()Loh/v;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    invoke-static {v0}, Lki/e;->d(Loh/x;)Lki/l;

    move-result-object v1

    new-instance v4, LXi/L;

    invoke-virtual {p0}, LZh/a;->v()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, LXi/K;

    invoke-direct {v2, v0, v1}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-direct {v4, p0, v2}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    goto/16 :goto_1

    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/util/s;

    sget-object v2, Lorg/bouncycastle/crypto/util/j;->a:[B

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/crypto/util/s;-><init>([B[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->g()Ljava/lang/String;

    move-result-object p0

    const-string v2, "none"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->i()V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->i()V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->h()I

    move-result p0

    if-ne p0, v3, :cond_e

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/util/k;->c([B)LXi/c;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->e()[B

    move-result-object p0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->b()Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Lorg/bouncycastle/crypto/util/s;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/util/s;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->h()I

    move-result p0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->h()I

    move-result v2

    if-ne p0, v2, :cond_c

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->g()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ssh-ed25519"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object p0

    array-length v2, p0

    const/16 v3, 0x40

    if-ne v2, v3, :cond_3

    new-instance v4, LXi/O;

    invoke-direct {v4, p0, v0}, LXi/O;-><init>([BI)V

    goto/16 :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "private key value of wrong length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string v0, "ecdsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/w;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/u;->b(Ljava/lang/String;)Loh/x;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, LSh/c;->d(Loh/x;)Lki/l;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object v2

    new-instance v4, LXi/L;

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, LXi/K;

    invoke-direct {v2, v0, p0}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-direct {v4, v5, v2}, LXi/L;-><init>(Ljava/math/BigInteger;LXi/G;)V

    goto/16 :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curve not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OID not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "ssh-rsa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object p0

    invoke-direct {v6, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object p0

    invoke-direct {v7, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object p0

    invoke-direct {v8, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object p0

    invoke-direct {v13, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object p0

    invoke-direct {v9, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object p0

    invoke-direct {v10, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object p0, Lorg/bouncycastle/util/b;->b:Ljava/math/BigInteger;

    invoke-virtual {v9, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v10, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    new-instance v4, LXi/G0;

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, LXi/G0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_8
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->i()V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/s;->b()Z

    move-result p0

    if-nez p0, :cond_b

    :cond_9
    :goto_1
    if-eqz v4, :cond_a

    return-object v4

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "private key block has trailing data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "private key check values are not the same"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "decoded key has trailing data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "multiple keys not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "encrypted keys not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
