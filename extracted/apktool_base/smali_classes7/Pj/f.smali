.class public LPj/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/PrivateKey;)LXi/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lfk/g;

    if-eqz v0, :cond_0

    check-cast p0, Lfk/g;

    new-instance v0, LXi/X;

    invoke-interface {p0}, Lfk/g;->getX()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, LXi/W;

    invoke-interface {p0}, Lfk/f;->getParameters()Lhk/j;

    move-result-object v3

    invoke-virtual {v3}, Lhk/j;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Lfk/f;->getParameters()Lhk/j;

    move-result-object p0

    invoke-virtual {p0}, Lhk/j;->a()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, LXi/X;-><init>(Ljava/math/BigInteger;LXi/W;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/crypto/interfaces/DHPrivateKey;

    new-instance v0, LXi/X;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, LXi/W;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, LXi/X;-><init>(Ljava/math/BigInteger;LXi/W;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify private key for El Gamal."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/security/PublicKey;)LXi/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lfk/h;

    if-eqz v0, :cond_0

    check-cast p0, Lfk/h;

    new-instance v0, LXi/Y;

    invoke-interface {p0}, Lfk/h;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, LXi/W;

    invoke-interface {p0}, Lfk/f;->getParameters()Lhk/j;

    move-result-object v3

    invoke-virtual {v3}, Lhk/j;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Lfk/f;->getParameters()Lhk/j;

    move-result-object p0

    invoke-virtual {p0}, Lhk/j;->a()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, LXi/Y;-><init>(Ljava/math/BigInteger;LXi/W;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    new-instance v0, LXi/Y;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, LXi/W;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, LXi/Y;-><init>(Ljava/math/BigInteger;LXi/W;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify public key for El Gamal."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
