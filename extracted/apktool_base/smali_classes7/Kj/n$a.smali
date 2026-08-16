.class public LKj/n$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/n;
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

    const-string v0, "KeyPairGenerator.GOST3410"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.gost.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyPairGenerator.GOST-3410"

    const-string v1, "GOST3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyPairGenerator.GOST-3410-94"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.GOST3410"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.gost.KeyFactorySpi"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.GOST-3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.GOST-3410-94"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameters.GOST3410"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.gost.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameterGenerator.GOST3410"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.gost.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lyh/a;->l:Loh/x;

    new-instance v2, LQj/f;

    invoke-direct {v2}, LQj/f;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v0, v1}, Lbk/b;->m(LTj/a;Loh/x;Ljava/lang/String;)V

    const-string v0, "Signature.GOST3410"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.gost.SignatureSpi"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.GOST-3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.GOST-3410-94"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.GOST3411withGOST3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.GOST3411WITHGOST3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.GOST3411WithGOST3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.GOST3411/GOST3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Signature."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lyh/a;->n:Loh/x;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameterGenerator.GOST-3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.GOST-3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
