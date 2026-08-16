.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/PrivateKey;)LXi/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;->h()LXi/L;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->c(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/security/PublicKey;)LXi/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;->c()LXi/M;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->d(Ljava/security/PublicKey;)LXi/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/security/spec/ECGenParameterSpec;LTj/c;)Lki/l;
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->e(Ljava/lang/String;LTj/c;)Lki/l;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/security/spec/ECParameterSpec;Z)Lki/j;
    .locals 7

    instance-of v0, p0, Lhk/d;

    if-eqz v0, :cond_1

    check-cast p0, Lhk/d;

    invoke-virtual {p0}, Lhk/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->l(Ljava/lang/String;)Loh/x;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Loh/x;

    invoke-virtual {p0}, Lhk/d;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Loh/x;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Lki/j;

    invoke-direct {p0, p1}, Lki/j;-><init>(Loh/x;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lki/j;

    sget-object p1, Loh/A0;->c:Loh/A0;

    invoke-direct {p0, p1}, Lki/j;-><init>(Loh/t;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v2

    new-instance v0, Lki/l;

    new-instance v3, Lki/n;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v1

    invoke-direct {v3, v1, p1}, Lki/n;-><init>(Ljk/i;Z)V

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance p0, Lki/j;

    invoke-direct {p0, v0}, Lki/j;-><init>(Lki/l;)V

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/lang/String;LTj/c;)Lki/l;
    .locals 2

    if-eqz p0, :cond_4

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
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->f(Ljava/lang/String;)Loh/x;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->i(Ljava/lang/String;)Lki/l;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object p0

    if-nez p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, LTj/c;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lki/l;

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Loh/x;
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
