.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;
.source "SourceFile"

# interfaces
.implements Lbk/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$a;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$b;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$c;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$d;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$e;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j$g;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:LTj/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;LTj/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, Lki/r;->I5:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;-><init>(Ljava/lang/String;Lhi/h0;LTj/c;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in key not recognised"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LXh/v;)Ljava/security/PrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, Lki/r;->I5:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;-><init>(Ljava/lang/String;LXh/v;LTj/c;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in key not recognised"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lhk/f;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->a:Ljava/lang/String;

    check-cast p1, Lhk/f;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;-><init>(Ljava/lang/String;Lhk/f;LTj/c;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->a:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;-><init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;LTj/c;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Lck/t;

    if-eqz v0, :cond_2

    check-cast p1, Lck/t;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, LZh/a;->u(Ljava/lang/Object;)LZh/a;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->a:Ljava/lang/String;

    new-instance v2, LXh/v;

    new-instance v3, Lhi/b;

    sget-object v4, Lki/r;->I5:Loh/x;

    invoke-virtual {p1}, LZh/a;->y()Loh/v;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v2, v3, p1}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;-><init>(Ljava/lang/String;LXh/v;LTj/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    :try_start_0
    instance-of v0, p1, Lhk/g;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->a:Ljava/lang/String;

    check-cast p1, Lhk/g;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;-><init>(Ljava/lang/String;Lhk/g;LTj/c;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->a:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, v1, p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;-><init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;LTj/c;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Lck/u;

    if-eqz v0, :cond_3

    check-cast p1, Lck/u;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/k;->c([B)LXi/c;

    move-result-object p1

    instance-of v0, p1, LXi/M;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, LXi/M;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    new-instance v1, Lhk/g;

    check-cast p1, LXi/M;

    invoke-virtual {p1}, LXi/M;->e()Ljk/i;

    move-result-object p1

    new-instance v8, Lhk/e;

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, LXi/G;->f()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lhk/e;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p1, v8}, Lhk/g;-><init>(Ljk/i;Lhk/e;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "openssh key is not ec public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :goto_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid KeySpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-class v0, Ljava/security/spec/KeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    instance-of v1, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object p2

    :cond_1
    sget-object p2, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {p2}, LTj/c;->b()Lhk/e;

    move-result-object p2

    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {p2}, Lhk/e;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p2}, Lhk/e;->e()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object p2

    :cond_4
    sget-object p2, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {p2}, LTj/c;->b()Lhk/e;

    move-result-object p2

    new-instance v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lhk/e;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p2}, Lhk/e;->e()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->a(Ljk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->h(Ljava/security/spec/EllipticCurve;Lhk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v0

    :cond_5
    const-class v0, Lhk/g;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Lhk/g;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lhk/g;-><init>(Ljk/i;Lhk/e;)V

    return-object p2

    :cond_6
    sget-object p2, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {p2}, LTj/c;->b()Lhk/e;

    move-result-object p2

    new-instance v0, Lhk/g;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lhk/g;-><init>(Ljk/i;Lhk/e;)V

    return-object v0

    :cond_7
    const-class v0, Lhk/f;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance p2, Lhk/f;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->g(Ljava/security/spec/ECParameterSpec;)Lhk/e;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lhk/f;-><init>(Ljava/math/BigInteger;Lhk/e;)V

    return-object p2

    :cond_8
    sget-object p2, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {p2}, LTj/c;->b()Lhk/e;

    move-result-object p2

    new-instance v0, Lhk/f;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lhk/f;-><init>(Ljava/math/BigInteger;Lhk/e;)V

    return-object v0

    :cond_9
    const-class v0, Lck/u;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "invalid key type: "

    if-eqz v0, :cond_b

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_b

    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    if-eqz p2, :cond_a

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->getParameters()Lhk/e;

    move-result-object p2

    :try_start_0
    new-instance v0, Lck/u;

    new-instance v1, LXi/M;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->Ne()Ljk/i;

    move-result-object p1

    new-instance v8, LXi/G;

    invoke-virtual {p2}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {p2}, Lhk/e;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {p2}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p2}, Lhk/e;->e()[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v1, p1, v8}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/k;->a(LXi/c;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lck/u;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to produce encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    const-class v0, Lck/t;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_d

    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    if-eqz p2, :cond_c

    :try_start_1
    new-instance p2, Lck/t;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-virtual {p1}, LXh/v;->E()Loh/g;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lck/t;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot encoded key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/c;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    return-object p1
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;-><init>(Ljava/security/interfaces/ECPublicKey;LTj/c;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/j;->b:LTj/c;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;-><init>(Ljava/security/interfaces/ECPrivateKey;LTj/c;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key type unknown"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
