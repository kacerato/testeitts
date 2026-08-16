.class public Ltl/d$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/d;
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

    const-string v0, "KeyFactory.DILITHIUM"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lqh/a;->u1:Loh/x;

    new-instance v7, Lwl/c$a;

    invoke-direct {v7}, Lwl/c$a;-><init>()V

    const-string v4, "DILITHIUM2"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base2"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lbk/b;->c(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->v1:Loh/x;

    new-instance v13, Lwl/c$c;

    invoke-direct {v13}, Lwl/c$c;-><init>()V

    const-string v10, "DILITHIUM3"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base3"

    move-object v8, p0

    move-object v9, p1

    move-object v12, v1

    invoke-virtual/range {v8 .. v13}, Lbk/b;->c(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;Lbk/c;)V

    sget-object v8, Lqh/a;->w1:Loh/x;

    new-instance v7, Lwl/c$e;

    invoke-direct {v7}, Lwl/c$e;-><init>()V

    const-string v4, "DILITHIUM5"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyFactorySpi$Base5"

    move-object v6, v8

    invoke-virtual/range {v2 .. v7}, Lbk/b;->c(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;Lbk/c;)V

    const-string v2, "KeyPairGenerator.DILITHIUM"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi"

    invoke-interface {p1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base2"

    const-string v3, "DILITHIUM2"

    invoke-virtual {p0, p1, v3, v2, v0}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base3"

    const-string v4, "DILITHIUM3"

    invoke-virtual {p0, p1, v4, v2, v1}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.dilithium.DilithiumKeyPairGeneratorSpi$Base5"

    const-string v5, "DILITHIUM5"

    invoke-virtual {p0, p1, v5, v2, v8}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base"

    sget-object v6, Lqh/a;->t1:Loh/x;

    const-string v7, "DILITHIUM"

    invoke-virtual {p0, p1, v7, v2, v6}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base2"

    invoke-virtual {p0, p1, v3, v2, v0}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base3"

    invoke-virtual {p0, p1, v4, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.dilithium.SignatureSpi$Base5"

    invoke-virtual {p0, p1, v5, v0, v8}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    return-void
.end method
