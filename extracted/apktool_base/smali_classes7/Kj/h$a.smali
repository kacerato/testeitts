.class public LKj/h$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/h;
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
    .locals 14

    const-string v0, "KeyFactory.ECGOST3410"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.GOST-3410-2001"

    const-string v1, "ECGOST3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.ECGOST-3410"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lyh/a;->m:Loh/x;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/c;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/c;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v2, Lyh/a;->D:Loh/x;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/c;

    invoke-direct {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/c;-><init>()V

    invoke-virtual {p0, p1, v2, v1, v3}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v0, v1}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    const-string v2, "KeyPairGenerator.ECGOST3410"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyPairGeneratorSpi"

    invoke-interface {p1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.KeyPairGenerator.ECGOST-3410"

    invoke-interface {p1, v2, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.KeyPairGenerator.GOST-3410-2001"

    invoke-interface {p1, v2, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Signature.ECGOST3410"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.SignatureSpi"

    invoke-interface {p1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.ECGOST-3410"

    invoke-interface {p1, v2, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Alg.Alias.Signature.GOST-3410-2001"

    invoke-interface {p1, v2, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "KeyAgreement.ECGOST3410"

    const-string v3, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.KeyAgreementSpi$ECVKO"

    invoke-interface {p1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alg.Alias.KeyAgreement."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyAgreement.GOST-3410-2001"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lyh/a;->C:Loh/x;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameters.ECGOST3410"

    const-string v2, "org.bouncycastle.jcajce.provider.asymmetric.ec.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameters.ECGOST3410-2012"

    invoke-interface {p1, v0, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.AlgorithmParameters.GOST-3410-2001"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.ecgost.SignatureSpi"

    sget-object v9, Lyh/a;->o:Loh/x;

    const-string v6, "GOST3411"

    const-string v7, "ECGOST3410"

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "KeyFactory.ECGOST3410-2012"

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.GOST-3410-2012"

    const-string v1, "ECGOST3410-2012"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.KeyFactory.ECGOST-3410-2012"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LCj/a;->g:Loh/x;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/e;

    invoke-direct {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/e;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v2, LCj/a;->l:Loh/x;

    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/e;

    invoke-direct {v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/e;-><init>()V

    invoke-virtual {p0, p1, v2, v1, v4}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v0, v1}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    sget-object v4, LCj/a;->h:Loh/x;

    new-instance v5, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/e;

    invoke-direct {v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/e;-><init>()V

    invoke-virtual {p0, p1, v4, v1, v5}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v5, LCj/a;->m:Loh/x;

    new-instance v6, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/e;

    invoke-direct {v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/e;-><init>()V

    invoke-virtual {p0, p1, v5, v1, v6}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v4, v1}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    const-string v6, "KeyPairGenerator.ECGOST3410-2012"

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyPairGeneratorSpi"

    invoke-interface {p1, v6, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Alg.Alias.KeyPairGenerator.GOST-3410-2012"

    invoke-interface {p1, v6, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Signature.ECGOST3410-2012-256"

    const-string v6, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi256"

    invoke-interface {p1, v1, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.GOST-3410-2012-256"

    const-string v6, "ECGOST3410-2012-256"

    invoke-interface {p1, v1, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.GOST3411WITHECGOST3410-2012-256"

    invoke-interface {p1, v1, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi256"

    sget-object v12, LCj/a;->i:Loh/x;

    const-string v9, "GOST3411-2012-256"

    const-string v10, "ECGOST3410-2012-256"

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "Signature.ECGOST3410-2012-512"

    const-string v7, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi512"

    invoke-interface {p1, v1, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.ECGOST3410-2012-512"

    const-string v7, "ECGOST3410-2012-512"

    invoke-interface {p1, v1, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.GOST-3410-2012-512"

    invoke-interface {p1, v1, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Alg.Alias.Signature.GOST3411WITHECGOST3410-2012-512"

    invoke-interface {p1, v1, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.ECGOST2012SignatureSpi512"

    sget-object v13, LCj/a;->j:Loh/x;

    const-string v10, "GOST3411-2012-512"

    const-string v11, "ECGOST3410-2012-512"

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "KeyAgreement.ECGOST3410-2012-256"

    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyAgreementSpi$ECVKO256"

    invoke-interface {p1, v1, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KeyAgreement.ECGOST3410-2012-512"

    const-string v8, "org.bouncycastle.jcajce.provider.asymmetric.ecgost12.KeyAgreementSpi$ECVKO512"

    invoke-interface {p1, v1, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
