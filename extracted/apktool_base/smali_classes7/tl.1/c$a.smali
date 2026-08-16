.class public Ltl/c$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/c;
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
    .locals 6

    const-string v0, "KeyFactory.CMCE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCEKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.CMCE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCEKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyGenerator.CMCE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCEKeyGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lvl/d;

    invoke-direct {v0}, Lvl/d;-><init>()V

    const-string v1, "Cipher.CMCE"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$Base"

    invoke-interface {p1, v1, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Cipher."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lqh/a;->N1:Loh/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CMCE"

    invoke-interface {p1, v1, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE348864"

    sget-object v4, Lqh/a;->O1:Loh/x;

    const-string v5, "mceliece348864"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE460896"

    sget-object v4, Lqh/a;->Q1:Loh/x;

    const-string v5, "mceliece460896"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE6688128"

    sget-object v4, Lqh/a;->S1:Loh/x;

    const-string v5, "mceliece6688128"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE6960119"

    sget-object v4, Lqh/a;->U1:Loh/x;

    const-string v5, "mceliece6960119"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.cmce.CMCECipherSpi$MCE8192128"

    sget-object v4, Lqh/a;->W1:Loh/x;

    const-string v5, "mceliece8192128"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    invoke-virtual {p0, p1, v2, v3, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v2, v3}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    return-void
.end method
