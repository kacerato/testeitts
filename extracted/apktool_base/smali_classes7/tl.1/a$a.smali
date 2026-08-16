.class public Ltl/a$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/a;
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

    const-string v0, "KeyFactory.BIKE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.bike.BIKEKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.BIKE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.bike.BIKEKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyGenerator.BIKE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.bike.BIKEKeyGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lul/d;

    invoke-direct {v0}, Lul/d;-><init>()V

    const-string v1, "Cipher.BIKE"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.bike.BIKECipherSpi$Base"

    invoke-interface {p1, v1, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Cipher."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lqh/a;->k3:Loh/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BIKE"

    invoke-interface {p1, v1, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.bike.BIKECipherSpi$BIKE128"

    sget-object v4, Lqh/a;->l3:Loh/x;

    const-string v5, "BIKE128"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.bike.BIKECipherSpi$BIKE192"

    sget-object v4, Lqh/a;->m3:Loh/x;

    const-string v5, "BIKE192"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.bike.BIKECipherSpi$BIKE256"

    sget-object v4, Lqh/a;->n3:Loh/x;

    const-string v5, "BIKE256"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    invoke-virtual {p0, p1, v2, v3, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
