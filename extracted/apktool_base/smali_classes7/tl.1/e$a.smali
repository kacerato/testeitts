.class public Ltl/e$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/e;
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

    const-string v0, "KeyFactory.FALCON"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lqh/a;->r1:Loh/x;

    new-instance v7, Lxl/c$b;

    invoke-direct {v7}, Lxl/c$b;-><init>()V

    const-string v4, "FALCON-512"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi$Falcon512"

    move-object v2, p0

    move-object v3, p1

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lbk/b;->c(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->s1:Loh/x;

    new-instance v13, Lxl/c$a;

    invoke-direct {v13}, Lxl/c$a;-><init>()V

    const-string v10, "FALCON-1024"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi$Falcon1024"

    move-object v8, p0

    move-object v9, p1

    move-object v12, v1

    invoke-virtual/range {v8 .. v13}, Lbk/b;->c(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;Lbk/c;)V

    const-string v2, "KeyPairGenerator.FALCON"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi"

    invoke-interface {p1, v2, v3}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi$Falcon512"

    const-string v3, "FALCON-512"

    invoke-virtual {p0, p1, v3, v2, v0}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi$Falcon1024"

    const-string v4, "FALCON-1024"

    invoke-virtual {p0, p1, v4, v2, v1}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Base"

    sget-object v5, Lqh/a;->q1:Loh/x;

    const-string v6, "FALCON"

    invoke-virtual {p0, p1, v6, v2, v5}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Falcon512"

    invoke-virtual {p0, p1, v3, v2, v0}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Falcon1024"

    invoke-virtual {p0, p1, v4, v0, v1}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    return-void
.end method
