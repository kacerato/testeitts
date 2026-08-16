.class public Ltl/m$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/m;
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
    .locals 5

    const-string v0, "KeyFactory.NTRULPRIME"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.ntruprime.NTRULPRimeKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.NTRULPRIME"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.ntruprime.NTRULPRimeKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyGenerator.NTRULPRIME"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.ntruprime.NTRULPRimeKeyGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LGl/f;

    invoke-direct {v0}, LGl/f;-><init>()V

    const-string v1, "Cipher.NTRULPRIME"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.ntruprime.NTRULPRimeCipherSpi$Base"

    invoke-interface {p1, v1, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Cipher."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lqh/a;->W2:Loh/x;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NTRU"

    invoke-interface {p1, v1, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lqh/a;->X2:Loh/x;

    const-string v4, "NTRULPRIME"

    invoke-virtual {p0, p1, v1, v4, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->Y2:Loh/x;

    invoke-virtual {p0, p1, v1, v4, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->Z2:Loh/x;

    invoke-virtual {p0, p1, v1, v4, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->a3:Loh/x;

    invoke-virtual {p0, p1, v1, v4, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->b3:Loh/x;

    invoke-virtual {p0, p1, v1, v4, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->c3:Loh/x;

    invoke-virtual {p0, p1, v1, v4, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    const-string v0, "KeyFactory.SNTRUPRIME"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.ntruprime.SNTRUPrimeKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.SNTRUPRIME"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.ntruprime.SNTRUPrimeKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyGenerator.SNTRUPRIME"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.ntruprime.SNTRUPrimeKeyGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LGl/j;

    invoke-direct {v0}, LGl/j;-><init>()V

    const-string v1, "Cipher.SNTRUPRIME"

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.ntruprime.SNTRUPrimeCipherSpi$Base"

    invoke-interface {p1, v1, v4}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lqh/a;->d3:Loh/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lqh/a;->e3:Loh/x;

    const-string v2, "SNTRUPRIME"

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->f3:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->g3:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->h3:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->i3:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    sget-object v1, Lqh/a;->j3:Loh/x;

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
