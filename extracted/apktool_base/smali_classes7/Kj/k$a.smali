.class public LKj/k$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/k;
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
    .locals 3

    const-string v0, "AlgorithmParameterGenerator.ELGAMAL"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.elgamal.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameterGenerator.ElGamal"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameters.ELGAMAL"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.elgamal.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameters.ElGamal"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cipher.ELGAMAL"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.elgamal.CipherSpi$NoPadding"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cipher.ElGamal"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.ELGAMAL/ECB/PKCS1PADDING"

    const-string v1, "ELGAMAL/PKCS1"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.ELGAMAL/NONE/PKCS1PADDING"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Cipher.ELGAMAL/NONE/NOPADDING"

    const-string v1, "ELGAMAL"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cipher.ELGAMAL/PKCS1"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.elgamal.CipherSpi$PKCS1v1_5Padding"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ELGAMAL"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.elgamal.KeyFactorySpi"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.ElGamal"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ELGAMAL"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.elgamal.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.ElGamal"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LPj/g;

    invoke-direct {v0}, LPj/g;-><init>()V

    sget-object v2, LBj/b;->l:Loh/x;

    invoke-virtual {p0, p1, v2, v1, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v2, v1}, Lbk/b;->m(LTj/a;Loh/x;Ljava/lang/String;)V

    return-void
.end method
