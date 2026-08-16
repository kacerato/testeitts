.class public LKj/j$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/j;
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
    .locals 8

    const-string v0, "KeyFactory.XDH"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$XDH"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.X448"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$X448"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.X25519"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$X25519"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.EDDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$EdDSA"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ED448"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$Ed448"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ED25519"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyFactorySpi$Ed25519"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.EDDSA"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.SignatureSpi$EdDSA"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.ED448"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.SignatureSpi$Ed448"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.ED25519"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.edec.SignatureSpi$Ed25519"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lqj/a;->e:Loh/x;

    const-string v1, "ED448"

    const-string v2, "Alg.Alias.Signature"

    invoke-interface {p1, v2, v0, v1}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    sget-object v1, Lqj/a;->d:Loh/x;

    const-string v3, "ED25519"

    invoke-interface {p1, v2, v1, v3}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.EDDSA"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$EdDSA"

    invoke-interface {p1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.ED448"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$Ed448"

    invoke-interface {p1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.ED25519"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$Ed25519"

    invoke-interface {p1, v2, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator"

    invoke-interface {p1, v2, v0, v3}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    invoke-interface {p1, v2, v1, v4}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    const-string v3, "KeyAgreement.XDH"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$XDH"

    invoke-interface {p1, v3, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "KeyAgreement.X448"

    const-string v4, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448"

    invoke-interface {p1, v3, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "KeyAgreement.X25519"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519"

    invoke-interface {p1, v3, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lqj/a;->c:Loh/x;

    const-string v6, "KeyAgreement"

    invoke-interface {p1, v6, v3, v4}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    sget-object v4, Lqj/a;->b:Loh/x;

    invoke-interface {p1, v6, v4, v5}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X25519WITHSHA256CKDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA256CKDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X25519WITHSHA384CKDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA384CKDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X25519WITHSHA512CKDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA512CKDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X448WITHSHA256CKDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA256CKDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X448WITHSHA384CKDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA384CKDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X448WITHSHA512CKDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA512CKDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X25519WITHSHA256KDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA256KDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X448WITHSHA512KDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA512KDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X25519UWITHSHA256KDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519UwithSHA256KDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X448UWITHSHA512KDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448UwithSHA512KDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X448withSHA512HKDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X448withSHA512HKDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyAgreement.X25519withSHA256HKDF"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyAgreementSpi$X25519withSHA256HKDF"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyPairGenerator.XDH"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$XDH"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyPairGenerator.X448"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$X448"

    invoke-interface {p1, v5, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "KeyPairGenerator.X25519"

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.edec.KeyPairGeneratorSpi$X25519"

    invoke-interface {p1, v5, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2, v3, v6}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    invoke-interface {p1, v2, v4, v7}, LTj/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    const-string v2, "Cipher.XIES"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIES"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithSHA1"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHSHA1"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithSHA256"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA256"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHSHA256"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithSHA384"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA384"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHSHA384"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithSHA512"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA512"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHSHA512"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithAES-CBC"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithAESCBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHAES-CBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithSHA1andAES-CBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHSHA1ANDAES-CBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithSHA256andAES-CBC"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA256andAESCBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHSHA256ANDAES-CBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithSHA384andAES-CBC"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA384andAESCBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHSHA384ANDAES-CBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESwithSHA512andAES-CBC"

    const-string v5, "org.bouncycastle.jcajce.provider.asymmetric.edec.IESCipher$XIESwithSHA512andAESCBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Cipher.XIESWITHSHA512ANDAES-CBC"

    invoke-interface {p1, v2, v5}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, LOj/h$e;

    invoke-direct {v2}, LOj/h$e;-><init>()V

    const-string v5, "XDH"

    invoke-virtual {p0, p1, v3, v5, v2}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v2, LOj/h$d;

    invoke-direct {v2}, LOj/h$d;-><init>()V

    invoke-virtual {p0, p1, v4, v5, v2}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v2, LOj/h$b;

    invoke-direct {v2}, LOj/h$b;-><init>()V

    const-string v3, "EDDSA"

    invoke-virtual {p0, p1, v0, v3, v2}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v0, LOj/h$a;

    invoke-direct {v0}, LOj/h$a;-><init>()V

    invoke-virtual {p0, p1, v1, v3, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
