.class public Lorg/bouncycastle/jce/provider/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHj/q;


# static fields
.field public static final g:I = 0x3a98

.field public static final h:I = 0x8000

.field public static final i:Ljava/util/Map;


# instance fields
.field public final b:Lorg/bouncycastle/jce/provider/M;

.field public final c:Ldk/f;

.field public d:LHj/r;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/L;->i:Ljava/util/Map;

    new-instance v1, Loh/x;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->U0:Loh/x;

    const-string v3, "SHA224WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->R0:Loh/x;

    const-string v3, "SHA256WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->S0:Loh/x;

    const-string v3, "SHA384WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->T0:Loh/x;

    const-string v3, "SHA512WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lyh/a;->n:Loh/x;

    const-string v3, "GOST3411WITHGOST3410"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lyh/a;->o:Loh/x;

    const-string v3, "GOST3411WITHECGOST3410"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LCj/a;->i:Loh/x;

    const-string v3, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LCj/a;->j:Loh/x;

    const-string v3, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmj/a;->d:Loh/x;

    const-string v3, "SHA1WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmj/a;->e:Loh/x;

    const-string v3, "SHA224WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmj/a;->f:Loh/x;

    const-string v3, "SHA256WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmj/a;->g:Loh/x;

    const-string v3, "SHA384WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmj/a;->h:Loh/x;

    const-string v3, "SHA512WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmj/a;->i:Loh/x;

    const-string v3, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lpj/a;->s:Loh/x;

    const-string v3, "SHA1WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lpj/a;->t:Loh/x;

    const-string v3, "SHA224WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lpj/a;->u:Loh/x;

    const-string v3, "SHA256WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lpj/a;->v:Loh/x;

    const-string v3, "SHA384WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lpj/a;->w:Loh/x;

    const-string v3, "SHA512WITHCVC-ECDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ltj/a;->a:Loh/x;

    const-string v3, "XMSS"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ltj/a;->b:Loh/x;

    const-string v3, "XMSSMT"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Loh/x;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Loh/x;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v3, "MD2WITHRSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Loh/x;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v1, v3}, Loh/x;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHDSA"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lki/r;->E5:Loh/x;

    const-string v4, "SHA1WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lki/r;->K5:Loh/x;

    const-string v4, "SHA224WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lki/r;->L5:Loh/x;

    const-string v4, "SHA256WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lki/r;->M5:Loh/x;

    const-string v4, "SHA384WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lki/r;->N5:Loh/x;

    const-string v4, "SHA512WITHECDSA"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LBj/b;->k:Loh/x;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LBj/b;->j:Loh/x;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->a0:Loh/x;

    const-string v2, "SHA224WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->b0:Loh/x;

    const-string v2, "SHA256WITHDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/provider/M;Ldk/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/L;->b:Lorg/bouncycastle/jce/provider/M;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/L;->c:Ldk/f;

    return-void
.end method

.method public static c(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static g(Loh/x;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ldk/h;->b(Loh/x;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "SHA3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static h(Ljava/security/cert/X509Certificate;)Ljava/net/URI;
    .locals 5

    sget-object v0, Lhi/B;->B:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-static {p0}, Lhi/j;->y(Ljava/lang/Object;)Lhi/j;

    move-result-object p0

    invoke-virtual {p0}, Lhi/j;->x()[Lhi/a;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-object v2, p0, v1

    sget-object v3, Lhi/a;->e:Loh/x;

    invoke-virtual {v2}, Lhi/a;->v()Loh/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lhi/a;->u()Lhi/E;

    move-result-object v2

    invoke-virtual {v2}, Lhi/E;->g()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-virtual {v2}, Lhi/E;->x()Loh/g;

    move-result-object v2

    check-cast v2, Loh/J;

    invoke-interface {v2}, Loh/J;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static i(Lhi/b;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Loh/A0;->c:Loh/A0;

    invoke-virtual {v1, v0}, Loh/B;->z(Loh/g;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lhi/b;->u()Loh/x;

    move-result-object v1

    sget-object v2, LXh/t;->Q0:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LXh/B;->v(Ljava/lang/Object;)LXh/B;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LXh/B;->u()Lhi/b;

    move-result-object p0

    invoke-virtual {p0}, Lhi/b;->u()Loh/x;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/L;->g(Loh/x;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WITHRSAANDMGF1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jce/provider/L;->i:Ljava/util/Map;

    invoke-virtual {p0}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lhi/b;->u()Loh/x;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(LVh/a;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ldk/f;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, LVh/a;->z()LVh/l;

    move-result-object p0

    invoke-virtual {p0}, LVh/l;->y()LVh/j;

    move-result-object p0

    invoke-virtual {p0}, LVh/j;->x()[B

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p0, "SHA1"

    invoke-interface {p3, p0}, Ldk/f;->m(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    invoke-static {p0, p3}, Lorg/bouncycastle/jce/provider/L;->c(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object p3

    invoke-static {v0, p3}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p2

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/bouncycastle/jce/provider/L;->c(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_1
    sget-object p3, Lgi/b;->U:Lfi/f;

    invoke-virtual {p0}, LVh/j;->y()Lfi/d;

    move-result-object p0

    invoke-static {p3, p0}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {p3, v0}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p2

    invoke-static {p3, p2}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object p2

    invoke-virtual {p0, p2}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(LVh/j;Ljava/security/cert/X509Certificate;Ldk/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, LVh/j;->x()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "SHA1"

    invoke-interface {p2, p0}, Ldk/f;->m(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jce/provider/L;->c(Ljava/security/MessageDigest;Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p0

    return p0

    :cond_0
    sget-object p2, Lgi/b;->U:Lfi/f;

    invoke-virtual {p0}, LVh/j;->y()Lfi/d;

    move-result-object p0

    invoke-static {p2, p0}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p2, p1}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static p(LVh/a;LHj/r;[BLjava/security/cert/X509Certificate;Ldk/f;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const-string v0, "OCSP response failure: "

    :try_start_0
    invoke-virtual {p0}, LVh/a;->u()Loh/E;

    move-result-object v1

    invoke-virtual {p0}, LVh/a;->y()Lhi/b;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jce/provider/L;->i(Lhi/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Ldk/f;->a(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {p1}, LHj/r;->d()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-static {p0, v3, p3, p4}, Lorg/bouncycastle/jce/provider/L;->j(LVh/a;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ldk/f;)Ljava/security/cert/X509Certificate;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "OCSP responder certificate not found"

    invoke-direct {p0, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :catch_2
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    goto :goto_1

    :cond_2
    const-string p3, "X.509"

    invoke-interface {p4, p3}, Ldk/f;->r(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p3

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, LHj/r;->d()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, LHj/r;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    invoke-virtual {p0}, LVh/a;->z()LVh/l;

    move-result-object v1

    invoke-virtual {v1}, LVh/l;->y()LVh/j;

    move-result-object v1

    invoke-static {v1, p3, p4}, Lorg/bouncycastle/jce/provider/L;->o(LVh/j;Ljava/security/cert/X509Certificate;Ldk/f;)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_6

    sget-object v1, Lhi/M;->m:Lhi/M;

    invoke-virtual {v1}, Lhi/M;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {v2, p3}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    :goto_1
    invoke-virtual {p0}, LVh/a;->z()LVh/l;

    move-result-object p3

    const-string p4, "DER"

    invoke-virtual {p3, p4}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p0}, LVh/a;->x()Loh/r0;

    move-result-object p3

    invoke-virtual {p3}, Loh/c;->J()[B

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/security/Signature;->verify([B)Z

    move-result p3

    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p0}, LVh/a;->z()LVh/l;

    move-result-object p0

    invoke-virtual {p0}, LVh/l;->z()Lhi/C;

    move-result-object p0

    sget-object p3, LVh/e;->c:Loh/x;

    invoke-virtual {p0, p3}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p0

    invoke-virtual {p0}, Lhi/B;->y()Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-static {p2, p0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "nonce mismatch in OCSP response"

    invoke-virtual {p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object p3

    invoke-virtual {p1}, LHj/r;->b()I

    move-result p4

    invoke-direct {p0, p2, v4, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p0

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_5
    return v3

    :cond_6
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "responder certificate not valid for signing OCSP responses"

    invoke-virtual {p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object p3

    invoke-virtual {p1}, LHj/r;->b()I

    move-result p4

    invoke-direct {p0, p2, v4, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "responder certificate does not match responderID"

    invoke-virtual {p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object p3

    invoke-virtual {p1}, LHj/r;->b()I

    move-result p4

    invoke-direct {p0, p2, v4, p3, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object p4

    invoke-virtual {p1}, LHj/r;->b()I

    move-result p1

    invoke-direct {p2, p3, p0, p4, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p2

    :goto_4
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object p4

    invoke-virtual {p1}, LHj/r;->b()I

    move-result p1

    invoke-direct {p2, p3, p0, p4, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p2

    :goto_5
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(LHj/r;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    const-string p1, "ocsp.enable"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/L;->e:Z

    const-string p1, "ocsp.responderURL"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/L;->f:Ljava/lang/String;

    return-void
.end method

.method public check(Ljava/security/cert/Certificate;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/L;->b:Lorg/bouncycastle/jce/provider/M;

    invoke-virtual {v0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->b:Lorg/bouncycastle/jce/provider/M;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/L;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v4, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v2}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v3}, LHj/r;->b()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/L;->h(Ljava/security/cert/X509Certificate;)Ljava/net/URI;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->b:Lorg/bouncycastle/jce/provider/M;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/bouncycastle/jce/provider/L;->e:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v0}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v1}, LHj/r;->b()I

    move-result v1

    const-string v2, "OCSP disabled by \"ocsp.enable\" setting"

    invoke-direct {p1, v2, v10, v0, v1}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/L;->f()Lhi/q;

    move-result-object v1

    new-instance v2, Lhi/b;

    sget-object v3, LBj/b;->i:Loh/x;

    invoke-direct {v2, v3}, Lhi/b;-><init>(Loh/x;)V

    new-instance v3, Loh/s;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v5}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v2, v1, v3}, Lorg/bouncycastle/jce/provider/L;->e(Lhi/b;Lhi/q;Loh/s;)LVh/b;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->b:Lorg/bouncycastle/jce/provider/M;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->b:Lorg/bouncycastle/jce/provider/M;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/L;->c:Ldk/f;

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/jce/provider/x;->a(LVh/b;LHj/r;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/util/List;Ldk/f;)LVh/g;

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v9

    move-object v3, v10

    goto :goto_4

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v2}, LHj/r;->b()I

    move-result v2

    const-string v3, "unable to encode OCSP response"

    invoke-direct {v0, v3, p1, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->b:Lorg/bouncycastle/jce/provider/M;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v1

    move v2, v8

    move-object v3, v10

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Extension;

    invoke-interface {v4}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v5

    sget-object v6, LVh/e;->c:Loh/x;

    invoke-virtual {v6}, Loh/x;->J()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v1, v8

    :goto_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LVh/g;->u(Ljava/lang/Object;)LVh/g;

    move-result-object v0

    new-instance v2, Loh/s;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    if-eqz v0, :cond_11

    invoke-virtual {v0}, LVh/g;->y()LVh/h;

    move-result-object p1

    invoke-virtual {p1}, LVh/h;->v()I

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v0}, LVh/g;->x()LVh/k;

    move-result-object p1

    invoke-static {p1}, LVh/k;->u(Ljava/lang/Object;)LVh/k;

    move-result-object p1

    invoke-virtual {p1}, LVh/k;->y()Loh/x;

    move-result-object v0

    sget-object v4, LVh/e;->b:Loh/x;

    invoke-virtual {v0, v4}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_2
    invoke-virtual {p1}, LVh/k;->x()Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, LVh/a;->v(Ljava/lang/Object;)LVh/a;

    move-result-object p1

    if-nez v1, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->b:Lorg/bouncycastle/jce/provider/M;

    invoke-virtual {v1}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/L;->c:Ldk/f;

    invoke-static {p1, v0, v3, v1, v4}, Lorg/bouncycastle/jce/provider/L;->p(LVh/a;LHj/r;[BLjava/security/cert/X509Certificate;Ldk/f;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5

    :catch_2
    move-exception p1

    goto/16 :goto_8

    :catch_3
    move-exception p1

    goto/16 :goto_9

    :cond_7
    :goto_5
    invoke-virtual {p1}, LVh/a;->z()LVh/l;

    move-result-object p1

    invoke-static {p1}, LVh/l;->u(Ljava/lang/Object;)LVh/l;

    move-result-object p1

    invoke-virtual {p1}, LVh/l;->A()Loh/E;

    move-result-object p1

    move-object v0, v10

    :goto_6
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v8, v1, :cond_f

    invoke-virtual {p1, v8}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, LVh/p;->w(Ljava/lang/Object;)LVh/p;

    move-result-object v1

    invoke-virtual {v1}, LVh/p;->u()LVh/b;

    move-result-object v3

    invoke-virtual {v3}, LVh/b;->z()Loh/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, LVh/p;->y()Loh/n;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v4}, LHj/r;->e()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3}, Loh/n;->I()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    new-instance p1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v0, "OCSP response expired"

    invoke-direct {p1, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_7
    if-eqz v0, :cond_a

    invoke-virtual {v0}, LVh/b;->u()Lhi/b;

    move-result-object v3

    invoke-virtual {v1}, LVh/p;->u()LVh/b;

    move-result-object v4

    invoke-virtual {v4}, LVh/b;->u()Lhi/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/L;->f()Lhi/q;

    move-result-object v0

    invoke-virtual {v1}, LVh/p;->u()LVh/b;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v2}, Lorg/bouncycastle/jce/provider/L;->d(LVh/b;Lhi/q;Loh/s;)LVh/b;

    move-result-object v0

    :cond_b
    invoke-virtual {v1}, LVh/p;->u()LVh/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, LVh/p;->v()LVh/c;

    move-result-object p1

    invoke-virtual {p1}, LVh/c;->g()I

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-virtual {v1}, LVh/p;->v()LVh/c;

    move-result-object p1

    invoke-virtual {p1}, LVh/c;->g()I

    move-result p1

    if-ne p1, v9, :cond_d

    invoke-virtual {v1}, LVh/p;->v()LVh/c;

    move-result-object p1

    invoke-virtual {p1}, LVh/c;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LVh/m;->u(Ljava/lang/Object;)LVh/m;

    move-result-object p1

    invoke-virtual {p1}, LVh/m;->x()Lhi/o;

    move-result-object v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "certificate revoked, reason=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), date="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LVh/m;->y()Loh/n;

    move-result-object p1

    invoke-virtual {p1}, Loh/n;->I()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v0}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v2}, LHj/r;->b()I

    move-result v2

    invoke-direct {v1, p1, v10, v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_d
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "certificate revoked, details unknown"

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v2}, LHj/r;->b()I

    move-result v2

    invoke-direct {p1, v0, v10, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    :goto_8
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v2}, LHj/r;->b()I

    move-result v2

    const-string v3, "unable to process OCSP response"

    invoke-direct {v0, v3, p1, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :goto_9
    throw p1

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OCSP response failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LVh/g;->y()LVh/h;

    move-result-object v0

    invoke-virtual {v0}, LVh/h;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v1}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v2}, LHj/r;->b()I

    move-result v2

    invoke-direct {p1, v0, v10, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_11
    new-instance p1, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v0}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v1}, LHj/r;->b()I

    move-result v1

    const-string v2, "no OCSP response found for certificate"

    invoke-direct {p1, v2, v10, v0, v1}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_12
    new-instance p1, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v0}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v1}, LHj/r;->b()I

    move-result v1

    const-string v2, "no OCSP response found for any certificate"

    invoke-direct {p1, v2, v10, v0, v1}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p1
.end method

.method public final d(LVh/b;Lhi/q;Loh/s;)LVh/b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual {p1}, LVh/b;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/L;->e(Lhi/b;Lhi/q;Loh/s;)LVh/b;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lhi/b;Lhi/q;Loh/s;)LVh/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/L;->c:Ldk/f;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-static {v1}, Ldk/h;->b(Loh/x;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldk/f;->m(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Loh/C0;

    invoke-virtual {p2}, Lhi/q;->C()Lfi/d;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    new-instance v2, Loh/C0;

    invoke-virtual {p2}, Lhi/q;->D()Lhi/h0;

    move-result-object p2

    invoke-virtual {p2}, Lhi/h0;->z()Loh/c;

    move-result-object p2

    invoke-virtual {p2}, Loh/c;->F()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    invoke-direct {v2, p2}, Loh/C0;-><init>([B)V

    new-instance p2, LVh/b;

    invoke-direct {p2, p1, v1, v2, p3}, LVh/b;-><init>(Lhi/b;Loh/y;Loh/y;Loh/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "problem creating ID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final f()Lhi/q;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v0}, LHj/r;->d()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot process signing cert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v3}, LHj/r;->a()Ljava/security/cert/CertPath;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    invoke-virtual {v4}, LHj/r;->b()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/L;->d:LHj/r;

    const-string p1, "ocsp.enable"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/L;->e:Z

    const-string p1, "ocsp.responderURL"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/L;->f:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "forward checking not supported"

    invoke-direct {p1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
