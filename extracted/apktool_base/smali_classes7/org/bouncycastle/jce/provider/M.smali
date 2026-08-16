.class public Lorg/bouncycastle/jce/provider/M;
.super Ljava/security/cert/PKIXRevocationChecker;
.source "SourceFile"

# interfaces
.implements LHj/q;


# static fields
.field public static final f:I = 0x3a98

.field public static final g:I = 0x8000

.field public static final h:Ljava/util/Map;


# instance fields
.field public final b:Ldk/f;

.field public final c:Lorg/bouncycastle/jce/provider/K;

.field public final d:Lorg/bouncycastle/jce/provider/L;

.field public e:LHj/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/provider/M;->h:Ljava/util/Map;

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

.method public constructor <init>(Ldk/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/M;->b:Ldk/f;

    new-instance v0, Lorg/bouncycastle/jce/provider/K;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/K;-><init>(Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/M;->c:Lorg/bouncycastle/jce/provider/K;

    new-instance v0, Lorg/bouncycastle/jce/provider/L;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jce/provider/L;-><init>(Lorg/bouncycastle/jce/provider/M;Ldk/f;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/M;->d:Lorg/bouncycastle/jce/provider/L;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(LHj/r;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/M;->e:LHj/r;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/M;->c:Lorg/bouncycastle/jce/provider/K;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/K;->b(LHj/r;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/M;->d:Lorg/bouncycastle/jce/provider/L;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/L;->b(LHj/r;)V

    return-void
.end method

.method public final c(Ljava/security/cert/PKIXRevocationChecker$Option;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Ljava/security/cert/X509Certificate;

    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/M;->c(Ljava/security/cert/PKIXRevocationChecker$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    sget-object p2, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jce/provider/M;->c(Ljava/security/cert/PKIXRevocationChecker$Option;)Z

    move-result p2

    if-eqz p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lorg/bouncycastle/jce/provider/M;->c:Lorg/bouncycastle/jce/provider/K;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/jce/provider/K;->check(Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/M;->c(Ljava/security/cert/PKIXRevocationChecker$Option;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lorg/bouncycastle/jce/provider/M;->d:Lorg/bouncycastle/jce/provider/L;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/jce/provider/L;->check(Ljava/security/cert/Certificate;)V

    goto :goto_0

    :cond_1
    throw p2

    :cond_2
    :try_start_1
    iget-object p2, p0, Lorg/bouncycastle/jce/provider/M;->d:Lorg/bouncycastle/jce/provider/L;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/jce/provider/L;->check(Ljava/security/cert/Certificate;)V
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    sget-object v0, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/M;->c(Ljava/security/cert/PKIXRevocationChecker$Option;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p0, Lorg/bouncycastle/jce/provider/M;->c:Lorg/bouncycastle/jce/provider/K;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/jce/provider/K;->check(Ljava/security/cert/Certificate;)V

    :goto_0
    return-void

    :cond_3
    throw p2
.end method

.method public getSoftFailExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/M;->d:Lorg/bouncycastle/jce/provider/L;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/L;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
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

.method public init(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/M;->e:LHj/r;

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/M;->c:Lorg/bouncycastle/jce/provider/K;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/K;->c(Z)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/M;->d:Lorg/bouncycastle/jce/provider/L;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jce/provider/L;->m(Z)V

    return-void
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
