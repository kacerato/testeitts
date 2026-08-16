.class public Ltl/p$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/p;
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
    .locals 4

    const-string v0, "KeyFactory.SABER"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.SABER"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyGenerator.SABER"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.saber.SABERKeyGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LJl/d;

    invoke-direct {v0}, LJl/d;-><init>()V

    const-string v1, "Cipher.SABER"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.saber.SABERCipherSpi$Base"

    invoke-interface {p1, v1, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Cipher."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lqh/a;->f2:Loh/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SABER"

    invoke-interface {p1, v1, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v3, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v2, v3}, Lbk/b;->n(LTj/a;Loh/x;Ljava/lang/String;)V

    return-void
.end method
