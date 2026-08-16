.class public Ltl/g$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/g;
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

    const-string v0, "KeyFactory.HQC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.hqc.HQCKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.HQC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.hqc.HQCKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyGenerator.HQC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.hqc.HQCKeyGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LAl/d;

    invoke-direct {v0}, LAl/d;-><init>()V

    const-string v1, "Cipher.HQC"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.hqc.HQCCipherSpi$Base"

    invoke-interface {p1, v1, v2}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias.Cipher."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lqh/a;->o3:Loh/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HQC"

    invoke-interface {p1, v1, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.hqc.HQCCipherSpi$HQC128"

    sget-object v4, Lqh/a;->p3:Loh/x;

    const-string v5, "HQC128"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.hqc.HQCCipherSpi$HQC192"

    sget-object v4, Lqh/a;->q3:Loh/x;

    const-string v5, "HQC192"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.hqc.HQCCipherSpi$HQC256"

    sget-object v4, Lqh/a;->r3:Loh/x;

    const-string v5, "HQC256"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    invoke-virtual {p0, p1, v2, v3, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
