.class public Ltl/s$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/s;
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
    .locals 11

    const-string v0, "KeyFactory.XMSS"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.XMSS"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.XMSS"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$generic"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias.Signature."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ltj/a;->a:Loh/x;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "XMSS"

    invoke-interface {p1, v0, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alg.Alias.Signature.OID."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v8}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256"

    sget-object v1, Lqh/a;->B:Loh/x;

    const-string v2, "XMSS-SHA256"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128"

    sget-object v1, Lqh/a;->D:Loh/x;

    const-string v2, "XMSS-SHAKE128"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512"

    sget-object v1, Lqh/a;->C:Loh/x;

    const-string v2, "XMSS-SHA512"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256"

    sget-object v1, Lqh/a;->E:Loh/x;

    const-string v2, "XMSS-SHAKE256"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha256andPrehash"

    sget-object v5, Lqh/a;->x:Loh/x;

    const-string v2, "SHA256"

    const-string v3, "XMSS-SHA256"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128andPrehash"

    sget-object v5, Lqh/a;->F:Loh/x;

    const-string v2, "SHAKE128"

    const-string v3, "XMSS-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake128_512andPrehash"

    sget-object v5, Lqh/a;->z:Loh/x;

    const-string v2, "SHAKE128(512)"

    const-string v3, "XMSS-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withSha512andPrehash"

    sget-object v5, Lqh/a;->y:Loh/x;

    const-string v2, "SHA512"

    const-string v3, "XMSS-SHA512"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256andPrehash"

    sget-object v5, Lqh/a;->G:Loh/x;

    const-string v2, "SHAKE256"

    const-string v3, "XMSS-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSSignatureSpi$withShake256_1024andPrehash"

    sget-object v5, Lqh/a;->A:Loh/x;

    const-string v2, "SHAKE256(1024)"

    const-string v3, "XMSS-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "Alg.Alias.Signature.SHA256WITHXMSS"

    const-string v1, "SHA256WITHXMSS-SHA256"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHAKE128WITHXMSS"

    const-string v1, "SHAKE128WITHXMSS-SHAKE128"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHAKE128(512)WITHXMSS"

    const-string v1, "SHAKE128(512)WITHXMSS-SHAKE128"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA512WITHXMSS"

    const-string v1, "SHA512WITHXMSS-SHA512"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHAKE256WITHXMSS"

    const-string v1, "SHAKE256WITHXMSS-SHAKE256"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHAKE256(1024)WITHXMSS"

    const-string v1, "SHAKE256(1024)WITHXMSS-SHAKE256"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.XMSSMT"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.XMSSMT"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.XMSSMT"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$generic"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ltj/a;->b:Loh/x;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "XMSSMT"

    invoke-interface {p1, v0, v10}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v10}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256"

    sget-object v1, Lqh/a;->M:Loh/x;

    const-string v2, "XMSSMT-SHA256"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128"

    sget-object v1, Lqh/a;->O:Loh/x;

    const-string v2, "XMSSMT-SHAKE128"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512"

    sget-object v1, Lqh/a;->N:Loh/x;

    const-string v2, "XMSSMT-SHA512"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256"

    sget-object v1, Lqh/a;->P:Loh/x;

    const-string v2, "XMSSMT-SHAKE256"

    invoke-virtual {p0, p1, v2, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha256andPrehash"

    sget-object v5, Lqh/a;->I:Loh/x;

    const-string v2, "SHA256"

    const-string v3, "XMSSMT-SHA256"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128andPrehash"

    sget-object v5, Lqh/a;->Q:Loh/x;

    const-string v2, "SHAKE128"

    const-string v3, "XMSSMT-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake128_512andPrehash"

    sget-object v5, Lqh/a;->K:Loh/x;

    const-string v2, "SHAKE128(512)"

    const-string v3, "XMSSMT-SHAKE128"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withSha512andPrehash"

    sget-object v5, Lqh/a;->J:Loh/x;

    const-string v2, "SHA512"

    const-string v3, "XMSSMT-SHA512"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256andPrehash"

    sget-object v5, Lqh/a;->R:Loh/x;

    const-string v2, "SHAKE256"

    const-string v3, "XMSSMT-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.xmss.XMSSMTSignatureSpi$withShake256_1024andPrehash"

    sget-object v5, Lqh/a;->L:Loh/x;

    const-string v2, "SHAKE256(1024)"

    const-string v3, "XMSSMT-SHAKE256"

    invoke-virtual/range {v0 .. v5}, Lbk/b;->g(LTj/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "Alg.Alias.Signature.SHA256WITHXMSSMT"

    const-string v1, "SHA256WITHXMSSMT-SHA256"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHAKE128WITHXMSSMT"

    const-string v1, "SHAKE128WITHXMSSMT-SHAKE128"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHAKE128(512)WITHXMSSMT"

    const-string v1, "SHAKE128(512)WITHXMSSMT-SHAKE128"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA512WITHXMSSMT"

    const-string v1, "SHA512WITHXMSSMT-SHA512"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHAKE256WITHXMSSMT"

    const-string v1, "SHAKE256WITHXMSSMT-SHAKE256"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHAKE256(1024)WITHXMSSMT"

    const-string v1, "SHAKE256(1024)WITHXMSSMT-SHAKE256"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LXk/m;->w:Loh/x;

    new-instance v1, LNl/f;

    invoke-direct {v1}, LNl/f;-><init>()V

    invoke-virtual {p0, p1, v0, v8, v1}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v0, LNl/f;

    invoke-direct {v0}, LNl/f;-><init>()V

    invoke-virtual {p0, p1, v7, v8, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v0, LXk/m;->F:Loh/x;

    new-instance v1, LNl/h;

    invoke-direct {v1}, LNl/h;-><init>()V

    invoke-virtual {p0, p1, v0, v10, v1}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    new-instance v0, LNl/h;

    invoke-direct {v0}, LNl/h;-><init>()V

    invoke-virtual {p0, p1, v6, v10, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
