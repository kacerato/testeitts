.class public Lorg/bouncycastle/crypto/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ssh-rsa"

.field public static final b:Ljava/lang/String; = "ecdsa"

.field public static final c:Ljava/lang/String; = "ssh-ed25519"

.field public static final d:Ljava/lang/String; = "ssh-dss"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXi/c;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_6

    instance-of v0, p0, LXi/F0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LXi/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p0, LXi/F0;

    new-instance v0, Lorg/bouncycastle/crypto/util/t;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/t;-><init>()V

    const-string v1, "ssh-rsa"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/t;->e(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/util/t;->e(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/t;->a()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSAKeyParamaters was for encryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p0, LXi/M;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/util/t;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/t;-><init>()V

    check-cast p0, LXi/M;

    invoke-virtual {p0}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/u;->d(LXi/G;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ecdsa-sha2-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, LXi/M;->e()Ljk/i;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljk/i;->l(Z)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/util/t;->f([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/t;->a()[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to derive ssh curve name for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LXi/J;->d()LXi/G;

    move-result-object p0

    invoke-virtual {p0}, LXi/G;->a()Ljk/e;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p0, LXi/B;

    if-eqz v0, :cond_4

    check-cast p0, LXi/B;

    invoke-virtual {p0}, LXi/x;->d()LXi/z;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/util/t;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/util/t;-><init>()V

    const-string v2, "ssh-dss"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/t;->e(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, LXi/z;->c()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/t;->e(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, LXi/z;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/util/t;->e(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, LXi/B;->e()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/crypto/util/t;->e(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/t;->a()[B

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, LXi/P;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/util/t;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/util/t;-><init>()V

    const-string v1, "ssh-ed25519"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/t;->h(Ljava/lang/String;)V

    check-cast p0, LXi/P;

    invoke-virtual {p0}, LXi/P;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/util/t;->f([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/t;->a()[B

    move-result-object p0

    return-object p0

    :cond_5
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

    const-string p0, " to public key"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cipherParameters was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lorg/bouncycastle/crypto/util/s;)LXi/c;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssh-rsa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->c()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v3, LXi/F0;

    invoke-direct {v3, v2, v1, v0}, LXi/F0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "ssh-dss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->c()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->c()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, LXi/B;

    new-instance v5, LXi/z;

    invoke-direct {v5, v0, v1, v2}, LXi/z;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v4, v3, v5}, LXi/B;-><init>(Ljava/math/BigInteger;LXi/z;)V

    :goto_0
    move-object v3, v4

    goto :goto_1

    :cond_1
    const-string v1, "ecdsa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/u;->b(Ljava/lang/String;)Loh/x;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/u;->g(Loh/x;)Lki/l;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lki/l;->v()Ljk/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object v1

    new-instance v4, LXi/M;

    invoke-virtual {v0, v1}, Ljk/e;->l([B)Ljk/i;

    move-result-object v0

    new-instance v1, LXi/K;

    invoke-direct {v1, v2, v3}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-direct {v4, v0, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find curve for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " using curve name "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v1, "ssh-ed25519"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->d()[B

    move-result-object v0

    array-length v1, v0

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    new-instance v3, LXi/P;

    invoke-direct {v3, v0, v2}, LXi/P;-><init>([BI)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "public key value of wrong length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/s;->b()Z

    move-result p0

    if-nez p0, :cond_6

    return-object v3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "decoded key has trailing data"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([B)LXi/c;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/util/s;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/util/s;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/k;->b(Lorg/bouncycastle/crypto/util/s;)LXi/c;

    move-result-object p0

    return-object p0
.end method
