.class public Lorg/bouncycastle/jce/ECKeyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/ECKeyUtil$UnexpectedException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lorg/bouncycastle/jce/ECKeyUtil;->b(Ljava/security/PrivateKey;Ljava/security/Provider;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/NoSuchProviderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/security/PrivateKey;Ljava/security/Provider;)Ljava/security/PrivateKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    invoke-static {v0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v0

    invoke-virtual {v0}, LXh/v;->y()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, Lyh/a;->m:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, LXh/v;->y()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v1

    invoke-virtual {v1}, Lki/j;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lki/j;->x()Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object v1

    invoke-virtual {v1}, Lki/l;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lki/l;

    invoke-virtual {v1}, Lki/l;->v()Ljk/e;

    move-result-object v3

    invoke-virtual {v1}, Lki/l;->u()Lki/n;

    move-result-object v4

    invoke-virtual {v1}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Lki/j;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lki/l;

    sget-object v2, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {v2}, LTj/c;->b()Lhk/e;

    move-result-object v3

    invoke-virtual {v3}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    new-instance v4, Lki/n;

    invoke-interface {v2}, LTj/c;->b()Lhk/e;

    move-result-object v5

    invoke-virtual {v5}, Lhk/e;->b()Ljk/i;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lki/n;-><init>(Ljk/i;Z)V

    invoke-interface {v2}, LTj/c;->b()Lhk/e;

    move-result-object v5

    invoke-virtual {v5}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, LTj/c;->b()Lhk/e;

    move-result-object v2

    invoke-virtual {v2}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v3, v4, v5, v2}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_1
    :goto_0
    new-instance v2, Lki/j;

    invoke-direct {v2, v1}, Lki/j;-><init>(Lki/l;)V

    new-instance v1, LXh/v;

    new-instance v3, Lhi/b;

    sget-object v4, Lki/r;->I5:Loh/x;

    invoke-direct {v3, v4, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v0}, LXh/v;->E()Loh/g;

    move-result-object v0

    invoke-direct {v1, v3, v0}, LXh/v;-><init>(Lhi/b;Loh/g;)V

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    const-string p1, "cannot convert GOST key to explicit parameters."

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p1, Lorg/bouncycastle/jce/ECKeyUtil$UnexpectedException;

    invoke-direct {p1, p0}, Lorg/bouncycastle/jce/ECKeyUtil$UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    throw p0

    :goto_3
    throw p0
.end method

.method public static c(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lorg/bouncycastle/jce/ECKeyUtil;->d(Ljava/security/PublicKey;Ljava/security/Provider;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/NoSuchProviderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/security/PublicKey;Ljava/security/Provider;)Ljava/security/PublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    invoke-static {v0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, Lyh/a;->m:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lhi/h0;->u()Lhi/b;

    move-result-object v1

    invoke-virtual {v1}, Lhi/b;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, Lki/j;->u(Ljava/lang/Object;)Lki/j;

    move-result-object v1

    invoke-virtual {v1}, Lki/j;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lki/j;->x()Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->j(Loh/x;)Lki/l;

    move-result-object v1

    invoke-virtual {v1}, Lki/l;->E()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lki/l;

    invoke-virtual {v1}, Lki/l;->v()Ljk/e;

    move-result-object v3

    invoke-virtual {v1}, Lki/l;->u()Lki/n;

    move-result-object v4

    invoke-virtual {v1}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Lki/j;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lki/l;

    sget-object v2, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {v2}, LTj/c;->b()Lhk/e;

    move-result-object v3

    invoke-virtual {v3}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    new-instance v4, Lki/n;

    invoke-interface {v2}, LTj/c;->b()Lhk/e;

    move-result-object v5

    invoke-virtual {v5}, Lhk/e;->b()Ljk/i;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lki/n;-><init>(Ljk/i;Z)V

    invoke-interface {v2}, LTj/c;->b()Lhk/e;

    move-result-object v5

    invoke-virtual {v5}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2}, LTj/c;->b()Lhk/e;

    move-result-object v2

    invoke-virtual {v2}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v3, v4, v5, v2}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_1
    :goto_0
    new-instance v2, Lki/j;

    invoke-direct {v2, v1}, Lki/j;-><init>(Lki/l;)V

    new-instance v1, Lhi/h0;

    new-instance v3, Lhi/b;

    sget-object v4, Lki/r;->I5:Loh/x;

    invoke-direct {v3, v4, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v0}, Lhi/h0;->z()Loh/c;

    move-result-object v0

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lhi/h0;-><init>(Lhi/b;[B)V

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot convert GOST key to explicit parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p1, Lorg/bouncycastle/jce/ECKeyUtil$UnexpectedException;

    invoke-direct {p1, p0}, Lorg/bouncycastle/jce/ECKeyUtil$UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    throw p0

    :goto_3
    throw p0
.end method
