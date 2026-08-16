.class public Lfj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lfj/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfj/a;

    invoke-direct {v0}, Lfj/a;-><init>()V

    iput-object v0, p0, Lfj/c;->a:Lfj/b;

    return-void
.end method

.method public static a(Ljk/e;)Ljava/security/spec/EllipticCurve;
    .locals 4

    invoke-virtual {p0}, Ljk/e;->v()Lrk/b;

    move-result-object v0

    invoke-static {v0}, Lfj/c;->c(Lrk/b;)Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Ljk/e;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljk/e;->r()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Ljava/security/spec/EllipticCurve;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method

.method public static b(Ljava/security/spec/EllipticCurve;Ljava/math/BigInteger;I)Ljk/e;
    .locals 7

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v4

    instance-of p0, v0, Ljava/security/spec/ECFieldFp;

    if-eqz p0, :cond_0

    new-instance p0, Ljk/e$f;

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not implemented yet!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lrk/b;)Ljava/security/spec/ECField;
    .locals 3

    invoke-static {p0}, Ljk/c;->p(Lrk/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lrk/b;->b()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    check-cast p0, Lrk/g;

    invoke-interface {p0}, Lrk/g;->d()Lrk/f;

    move-result-object p0

    invoke-interface {p0}, Lrk/f;->b()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/a;->Z([III)[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->R0([I)[I

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-interface {p0}, Lrk/f;->a()I

    move-result p0

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v1
.end method

.method public static d(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;
    .locals 1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljk/e;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(LAh/k;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lfj/c;->g(LAh/k;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {p0, p1}, Lfj/c;->i(LAh/k;)Ljava/security/spec/ECPoint;

    move-result-object p1

    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    :try_start_0
    iget-object p1, p0, Lfj/c;->a:Lfj/b;

    const-string v0, "ECDSA"

    invoke-interface {p1, v0}, Lfj/b;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/bouncycastle/eac/EACException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find algorithm ECDSA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/eac/EACException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public f(LAh/n;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-virtual {p1}, LAh/n;->v()Loh/x;

    move-result-object v0

    sget-object v1, LAh/h;->r:Loh/x;

    invoke-virtual {v0, v1}, Loh/x;->O(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, LAh/k;

    invoke-virtual {p0, p1}, Lfj/c;->e(LAh/k;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, LAh/o;

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p1}, LAh/o;->x()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, LAh/o;->y()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :try_start_0
    iget-object p1, p0, Lfj/c;->a:Lfj/b;

    const-string v1, "RSA"

    invoke-interface {p1, v1}, Lfj/b;->b(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/bouncycastle/eac/EACException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find algorithm ECDSA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/eac/EACException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g(LAh/k;)Ljava/security/spec/ECParameterSpec;
    .locals 7

    invoke-virtual {p1}, LAh/k;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LAh/k;->B()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v0, Ljk/e$f;

    invoke-virtual {p1}, LAh/k;->z()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, LAh/k;->D()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, LAh/k;->A()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, LAh/k;->y()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, LAh/k;->x()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/e;->l([B)Ljk/i;

    move-result-object v1

    invoke-virtual {p1}, LAh/k;->A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, LAh/k;->y()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0}, Lfj/c;->a(Ljk/e;)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    new-instance v3, Ljava/security/spec/ECParameterSpec;

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Ljk/i;->f()Ljk/f;

    move-result-object v5

    invoke-virtual {v5}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Ljk/i;->g()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v3, v0, v4, v2, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v3

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Public key does not contains EC Params"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Loh/x;Ljava/security/PublicKey;)LAh/n;
    .locals 13

    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    new-instance v0, LAh/o;

    invoke-interface {p2}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, LAh/o;-><init>(Loh/x;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    invoke-static {v1, v2, v3}, Lfj/c;->b(Ljava/security/spec/EllipticCurve;Ljava/math/BigInteger;I)Ljk/e;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lfj/c;->d(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v3

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-static {v2, p2}, Lfj/c;->d(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object p2

    new-instance v2, LAh/k;

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v4

    check-cast v4, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v4}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljk/i;->l(Z)[B

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p2, v1}, Ljk/i;->l(Z)[B

    move-result-object v11

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v12

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v4 .. v12}, LAh/k;-><init>(Loh/x;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;[BI)V

    return-object v2
.end method

.method public final i(LAh/k;)Ljava/security/spec/ECPoint;
    .locals 7

    invoke-virtual {p1}, LAh/k;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LAh/k;->B()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v0, Ljk/e$f;

    invoke-virtual {p1}, LAh/k;->z()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, LAh/k;->D()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, LAh/k;->A()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, LAh/k;->y()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, LAh/k;->C()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljk/e;->l([B)Ljk/i;

    move-result-object p1

    check-cast p1, Ljk/i$e;

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljk/i;->g()Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Public key does not contains EC Params"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/lang/String;)Lfj/c;
    .locals 1

    new-instance v0, Lfj/d;

    invoke-direct {v0, p1}, Lfj/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfj/c;->a:Lfj/b;

    return-object p0
.end method

.method public k(Ljava/security/Provider;)Lfj/c;
    .locals 1

    new-instance v0, Lfj/e;

    invoke-direct {v0, p1}, Lfj/e;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lfj/c;->a:Lfj/b;

    return-object p0
.end method
