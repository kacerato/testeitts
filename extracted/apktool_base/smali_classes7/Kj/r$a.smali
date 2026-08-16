.class public LKj/r$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbk/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTj/a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "AlgorithmParameters.OAEP"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$OAEP"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AlgorithmParameters.PSS"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$PSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.RSAPSS"

    const-string v3, "PSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.RSASSA-PSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA224withRSA/PSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA256withRSA/PSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA384withRSA/PSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA512withRSA/PSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA224WITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA256WITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA384WITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA512WITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA3-224WITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA3-256WITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA3-384WITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.SHA3-512WITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.RAWRSAPSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.NONEWITHRSAPSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.NONEWITHRSASSA-PSS"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.AlgorithmParameters.NONEWITHRSAANDMGF1"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.RSA"

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v2, v4}, LTj/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "Cipher.RSA"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding"

    invoke-interface {v1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.RSA/RAW"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding"

    invoke-interface {v1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.RSA/PKCS1"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding"

    invoke-interface {v1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LXh/t;->H0:Loh/x;

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Cipher"

    invoke-interface {v1, v6, v2, v4, v5}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v5, Lhi/E0;->W4:Loh/x;

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v1, v6, v5, v4, v7}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    const-string v4, "Cipher.RSA/1"

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding_PrivateOnly"

    invoke-interface {v1, v4, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Cipher.RSA/2"

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding_PublicOnly"

    invoke-interface {v1, v4, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$OAEPPadding"

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v7

    const-string v8, "Cipher.RSA/OAEP"

    invoke-interface {v1, v8, v4, v7}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v4, LXh/t;->N0:Loh/x;

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$OAEPPadding"

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v1, v6, v4, v7, v8}, LTj/a;->i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.rsa.CipherSpi$ISO9796d1Padding"

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v7

    const-string v8, "Cipher.RSA/ISO9796-1"

    invoke-interface {v1, v8, v6, v7}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v6, "Alg.Alias.Cipher.RSA//RAW"

    const-string v7, "RSA"

    invoke-interface {v1, v6, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Cipher.RSA//NOPADDING"

    invoke-interface {v1, v6, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Cipher.RSA//PKCS1PADDING"

    const-string v8, "RSA/PKCS1"

    invoke-interface {v1, v6, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Cipher.RSA//OAEPPADDING"

    const-string v8, "RSA/OAEP"

    invoke-interface {v1, v6, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.Cipher.RSA//ISO9796-1PADDING"

    const-string v8, "RSA/ISO9796-1"

    invoke-interface {v1, v6, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "KeyFactory.RSA"

    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi"

    invoke-interface {v1, v6, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "KeyPairGenerator.RSA"

    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi"

    invoke-interface {v1, v6, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "KeyFactory.RSASSA-PSS"

    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi"

    invoke-interface {v1, v6, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "KeyPairGenerator.RSASSA-PSS"

    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi$PSS"

    invoke-interface {v1, v6, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, LSj/i;

    invoke-direct {v6}, LSj/i;-><init>()V

    invoke-virtual {v0, v1, v2, v7, v6}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v5, v7, v6}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v4, v7, v6}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v8, LXh/t;->Q0:Loh/x;

    invoke-virtual {v0, v1, v8, v7, v6}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {v0, v1, v2, v7}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5, v7}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    const-string v2, "OAEP"

    invoke-virtual {v0, v1, v4, v2}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v8, v3}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$PSSwithRSA"

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Signature.RSASSA-PSS"

    invoke-interface {v1, v5, v2, v4}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alg.Alias.Signature."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RSASSA-PSS"

    invoke-interface {v1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature.OID."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$noneRSA"

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Signature.RSA"

    invoke-interface {v1, v6, v2, v5}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$nonePSS"

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Signature.RAWRSASSA-PSS"

    invoke-interface {v1, v6, v2, v5}, LTj/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "Alg.Alias.Signature.RAWRSA"

    invoke-interface {v1, v2, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.NONEWITHRSA"

    invoke-interface {v1, v2, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.RAWRSAPSS"

    const-string v5, "RAWRSASSA-PSS"

    invoke-interface {v1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.NONEWITHRSAPSS"

    invoke-interface {v1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.NONEWITHRSASSA-PSS"

    invoke-interface {v1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.NONEWITHRSAANDMGF1"

    invoke-interface {v1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.RSAPSS"

    invoke-interface {v1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSA"

    const-string v4, "SHA224"

    const-string v5, "MGF1"

    invoke-virtual {v0, v1, v4, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSA"

    const-string v6, "SHA256"

    invoke-virtual {v0, v1, v6, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSA"

    const-string v7, "SHA384"

    invoke-virtual {v0, v1, v7, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSA"

    const-string v8, "SHA512"

    invoke-virtual {v0, v1, v8, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_224withRSA"

    const-string v9, "SHA512(224)"

    invoke-virtual {v0, v1, v9, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_256withRSA"

    const-string v10, "SHA512(256)"

    invoke-virtual {v0, v1, v10, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_224withRSA"

    const-string v11, "SHA3-224"

    invoke-virtual {v0, v1, v11, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_256withRSA"

    const-string v12, "SHA3-256"

    invoke-virtual {v0, v1, v12, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_384withRSA"

    const-string v13, "SHA3-384"

    invoke-virtual {v0, v1, v13, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_512withRSA"

    const-string v14, "SHA3-512"

    invoke-virtual {v0, v1, v14, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHAKE128WithRSAPSS"

    sget-object v15, Lnj/b;->o:Loh/x;

    move-object/from16 v16, v5

    const-string v5, "SHAKE128"

    invoke-virtual {v0, v1, v5, v2, v15}, LKj/r$a;->r(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHAKE256WithRSAPSS"

    sget-object v15, Lnj/b;->p:Loh/x;

    move-object/from16 v17, v3

    const-string v3, "SHAKE256"

    invoke-virtual {v0, v1, v3, v2, v15}, LKj/r$a;->r(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSAandSHAKE128"

    invoke-virtual {v0, v1, v4, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSAandSHAKE128"

    invoke-virtual {v0, v1, v6, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSAandSHAKE128"

    invoke-virtual {v0, v1, v7, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSAandSHAKE128"

    invoke-virtual {v0, v1, v8, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_224withRSAandSHAKE128"

    invoke-virtual {v0, v1, v9, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_256withRSAandSHAKE128"

    invoke-virtual {v0, v1, v10, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSAandSHAKE256"

    invoke-virtual {v0, v1, v4, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSAandSHAKE256"

    invoke-virtual {v0, v1, v6, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSAandSHAKE256"

    invoke-virtual {v0, v1, v7, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSAandSHAKE256"

    invoke-virtual {v0, v1, v8, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_224withRSAandSHAKE256"

    invoke-virtual {v0, v1, v9, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512_256withRSAandSHAKE256"

    invoke-virtual {v0, v1, v10, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_224withRSAandSHAKE128"

    invoke-virtual {v0, v1, v11, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_256withRSAandSHAKE128"

    invoke-virtual {v0, v1, v12, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_384withRSAandSHAKE128"

    invoke-virtual {v0, v1, v13, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_512withRSAandSHAKE128"

    invoke-virtual {v0, v1, v14, v5, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_224withRSAandSHAKE256"

    invoke-virtual {v0, v1, v11, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_256withRSAandSHAKE256"

    invoke-virtual {v0, v1, v12, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_384withRSAandSHAKE256"

    invoke-virtual {v0, v1, v13, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA3_512withRSAandSHAKE256"

    invoke-virtual {v0, v1, v14, v3, v2}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MD2"

    const-string v15, "MessageDigest"

    invoke-interface {v1, v15, v2}, LTj/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD2"

    move-object/from16 v18, v14

    sget-object v14, LXh/t;->I0:Loh/x;

    move-object/from16 v19, v13

    const-string v13, "MD2"

    invoke-virtual {v0, v1, v13, v2, v14}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    goto :goto_0

    :cond_0
    move-object/from16 v19, v13

    move-object/from16 v18, v14

    :goto_0
    const-string v2, "MD4"

    invoke-interface {v1, v15, v2}, LTj/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD4"

    sget-object v13, LXh/t;->J0:Loh/x;

    const-string v14, "MD4"

    invoke-virtual {v0, v1, v14, v2, v13}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    :cond_1
    const-string v2, "MD5"

    invoke-interface {v1, v15, v2}, LTj/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD5"

    sget-object v14, LXh/t;->K0:Loh/x;

    invoke-virtual {v0, v1, v2, v13, v14}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v13, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$MD5WithRSAEncryption"

    invoke-virtual {v0, v1, v2, v13}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "SHA1"

    invoke-interface {v1, v15, v2}, LTj/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "Alg.Alias.AlgorithmParameters.SHA1withRSA/PSS"

    move-object/from16 v14, v17

    invoke-interface {v1, v13, v14}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "Alg.Alias.AlgorithmParameters.SHA1WITHRSAANDMGF1"

    invoke-interface {v1, v13, v14}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA1withRSA"

    move-object/from16 v14, v16

    invoke-virtual {v0, v1, v2, v14, v13}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA1withRSAandSHAKE128"

    invoke-virtual {v0, v1, v2, v5, v13}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA1withRSAandSHAKE256"

    invoke-virtual {v0, v1, v2, v3, v5}, LKj/r$a;->q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA1"

    sget-object v5, LXh/t;->L0:Loh/x;

    invoke-virtual {v0, v1, v2, v3, v5}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA1WithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, LBj/b;->k:Loh/x;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v13, "SHA1WITHRSA"

    invoke-interface {v1, v3, v13}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alg.Alias.Signature.OID."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SHA1WITHRSA"

    invoke-interface {v1, v3, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA1WithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA224"

    sget-object v3, LXh/t;->U0:Loh/x;

    invoke-virtual {v0, v1, v4, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA256"

    sget-object v3, LXh/t;->R0:Loh/x;

    invoke-virtual {v0, v1, v6, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA384"

    sget-object v3, LXh/t;->S0:Loh/x;

    invoke-virtual {v0, v1, v7, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512"

    sget-object v3, LXh/t;->T0:Loh/x;

    invoke-virtual {v0, v1, v8, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512_224"

    sget-object v3, LXh/t;->V0:Loh/x;

    invoke-virtual {v0, v1, v9, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512_256"

    sget-object v3, LXh/t;->W0:Loh/x;

    invoke-virtual {v0, v1, v10, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA3_224"

    sget-object v3, LSh/d;->m0:Loh/x;

    invoke-virtual {v0, v1, v11, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA3_256"

    sget-object v3, LSh/d;->n0:Loh/x;

    invoke-virtual {v0, v1, v12, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA3_384"

    sget-object v3, LSh/d;->o0:Loh/x;

    move-object/from16 v5, v19

    invoke-virtual {v0, v1, v5, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA3_512"

    sget-object v3, LSh/d;->p0:Loh/x;

    move-object/from16 v5, v18

    invoke-virtual {v0, v1, v5, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA224WithRSAEncryption"

    invoke-virtual {v0, v1, v4, v2}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA256WithRSAEncryption"

    invoke-virtual {v0, v1, v6, v2}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA384WithRSAEncryption"

    invoke-virtual {v0, v1, v7, v2}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA512WithRSAEncryption"

    invoke-virtual {v0, v1, v8, v2}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA512_224WithRSAEncryption"

    invoke-virtual {v0, v1, v9, v2}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA512_256WithRSAEncryption"

    invoke-virtual {v0, v1, v10, v2}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA224WithRSAEncryption"

    invoke-virtual {v0, v1, v4, v2}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA256WithRSAEncryption"

    invoke-virtual {v0, v1, v6, v2}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA384WithRSAEncryption"

    invoke-virtual {v0, v1, v7, v2}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA512WithRSAEncryption"

    invoke-virtual {v0, v1, v8, v2}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA512_224WithRSAEncryption"

    invoke-virtual {v0, v1, v9, v2}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$SHA512_256WithRSAEncryption"

    invoke-virtual {v0, v1, v10, v2}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RIPEMD128"

    invoke-interface {v1, v15, v2}, LTj/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD128"

    sget-object v3, Lbi/b;->g:Loh/x;

    const-string v4, "RIPEMD128"

    invoke-virtual {v0, v1, v4, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD128"

    const/4 v3, 0x0

    const-string v4, "RMD128"

    invoke-virtual {v0, v1, v4, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "RMD128"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD128WithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RIPEMD128"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD128WithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "RIPEMD160"

    invoke-interface {v1, v15, v2}, LTj/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD160"

    sget-object v3, Lbi/b;->f:Loh/x;

    const-string v4, "RIPEMD160"

    invoke-virtual {v0, v1, v4, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD160"

    const/4 v3, 0x0

    const-string v4, "RMD160"

    invoke-virtual {v0, v1, v4, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "Alg.Alias.Signature.RIPEMD160WithRSA/ISO9796-2"

    const-string v3, "RIPEMD160withRSA/ISO9796-2"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.RIPEMD160withRSA/ISO9796-2"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$RIPEMD160WithRSAEncryption"

    invoke-interface {v1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RMD160"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD160WithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RIPEMD160"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$RIPEMD160WithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "RIPEMD256"

    invoke-interface {v1, v15, v2}, LTj/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD256"

    sget-object v3, Lbi/b;->h:Loh/x;

    const-string v4, "RIPEMD256"

    invoke-virtual {v0, v1, v4, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD256"

    const/4 v3, 0x0

    const-string v4, "RMD256"

    invoke-virtual {v0, v1, v4, v2, v3}, LKj/r$a;->o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    :cond_6
    const-string v2, "WHIRLPOOL"

    invoke-interface {v1, v15, v2}, LTj/a;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Whirlpool"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$WhirlpoolWithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WHIRLPOOL"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$WhirlpoolWithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Whirlpool"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$WhirlpoolWithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WHIRLPOOL"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.rsa.X931SignatureSpi$WhirlpoolWithRSAEncryption"

    invoke-virtual {v0, v1, v2, v3}, LKj/r$a;->s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final o(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WITHRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "withRSA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WithRSA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/RSA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "WITHRSAENCRYPTION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "withRSAEncryption"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "WithRSAEncryption"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, p3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias.Signature."

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Alg.Alias.Signature.OID."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, LTj/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final p(LTj/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "withRSA/ISO9796-2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WITHRSA/ISO9796-2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WithRSA/ISO9796-2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, LTj/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final q(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WITHRSAAND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MGF1"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Alg.Alias.Signature."

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "withRSA/PSS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WithRSA/PSS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WITHRSA/PSS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "withRSASSA-PSS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WithRSASSA-PSS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WITHRSASSA-PSS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "withRSAand"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WithRSAAnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, LTj/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final r(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "withRSA/PSS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WITHRSAPSS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WithRSA/PSS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "withRSASSA-PSS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WithRSASSA-PSS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WITHRSASSA-PSS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature"

    invoke-interface {p1, v0, p4, p3}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Signature."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4, p3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, LTj/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final s(LTj/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "withRSA/X9.31"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WITHRSA/X9.31"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WithRSA/X9.31"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, LKj/r;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p3}, LTj/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
