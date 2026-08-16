.class public Ltl/h$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/h;
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

    const-string v0, "KeyFactory.KYBER"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lqh/a;->P2:Loh/x;

    new-instance v7, LBl/d$c;

    invoke-direct {v7}, LBl/d$c;-><init>()V

    const-string v4, "KYBER512"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber512"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lbk/b;->c(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->Q2:Loh/x;

    new-instance v13, LBl/d$e;

    invoke-direct {v13}, LBl/d$e;-><init>()V

    const-string v10, "KYBER768"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber768"

    move-object v8, p0

    move-object v9, p1

    move-object v12, v1

    invoke-virtual/range {v8 .. v13}, Lbk/b;->c(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;Lbk/c;)V

    sget-object v8, Lqh/a;->R2:Loh/x;

    new-instance v7, LBl/d$a;

    invoke-direct {v7}, LBl/d$a;-><init>()V

    const-string v4, "KYBER1024"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyFactorySpi$Kyber1024"

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lbk/b;->c(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;Lbk/c;)V

    const-string v2, "KeyPairGenerator.KYBER"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi"

    invoke-interface {p1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber512"

    const-string v3, "KYBER512"

    invoke-virtual {p0, p1, v3, v2, v0}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber768"

    const-string v4, "KYBER768"

    invoke-virtual {p0, p1, v4, v2, v1}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyPairGeneratorSpi$Kyber1024"

    const-string v5, "KYBER1024"

    invoke-virtual {p0, p1, v5, v2, v8}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "KeyGenerator.KYBER"

    const-string v6, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi"

    invoke-interface {p1, v2, v6}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber512"

    invoke-virtual {p0, p1, v3, v2, v0}, Lbk/b;->d(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber768"

    invoke-virtual {p0, p1, v4, v2, v1}, Lbk/b;->d(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberKeyGeneratorSpi$Kyber1024"

    invoke-virtual {p0, p1, v5, v2, v8}, Lbk/b;->d(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    new-instance v2, LBl/d;

    invoke-direct {v2}, LBl/d;-><init>()V

    const-string v6, "Cipher.KYBER"

    const-string v7, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Base"

    invoke-interface {p1, v6, v7}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alg.Alias.Cipher."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lqh/a;->O2:Loh/x;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "KYBER"

    invoke-interface {p1, v6, v9}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber512"

    invoke-virtual {p0, p1, v3, v6, v0}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber768"

    invoke-virtual {p0, p1, v4, v0, v1}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.kyber.KyberCipherSpi$Kyber1024"

    invoke-virtual {p0, p1, v5, v0, v8}, Lbk/b;->b(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    invoke-virtual {p0, p1, v7, v9, v2}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
