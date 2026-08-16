.class public Ltl/o$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/o;
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

    const-string v0, "KeyFactory.RAINBOW"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.RAINBOW"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lqh/a;->B1:Loh/x;

    const-string v1, "RAINBOW-III-CLASSIC"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowIIIclassic"

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    sget-object v2, Lqh/a;->C1:Loh/x;

    const-string v3, "RAINBOW-III-CIRCUMZENITHAL"

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowIIIcircum"

    invoke-virtual {p0, p1, v3, v4, v2}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    sget-object v4, Lqh/a;->D1:Loh/x;

    const-string v5, "RAINBOW-III-COMPRESSED"

    const-string v6, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowIIIcomp"

    invoke-virtual {p0, p1, v5, v6, v4}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    sget-object v6, Lqh/a;->E1:Loh/x;

    const-string v7, "RAINBOW-V-CLASSIC"

    const-string v8, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowVclassic"

    invoke-virtual {p0, p1, v7, v8, v6}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    sget-object v8, Lqh/a;->F1:Loh/x;

    const-string v9, "RAINBOW-V-CIRCUMZENITHAL"

    const-string v10, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowVcircum"

    invoke-virtual {p0, p1, v9, v10, v8}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    sget-object v10, Lqh/a;->G1:Loh/x;

    const-string v11, "RAINBOW-V-COMPRESSED"

    const-string v12, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowVcomp"

    invoke-virtual {p0, p1, v11, v12, v10}, Lbk/b;->e(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$Base"

    sget-object v12, Lqh/a;->A1:Loh/x;

    const-string v13, "RAINBOW"

    invoke-virtual {p0, p1, v13, v11, v12}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowIIIclassic"

    invoke-virtual {p0, p1, v1, v11, v0}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowIIIcircum"

    invoke-virtual {p0, p1, v3, v1, v2}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowIIIcomp"

    invoke-virtual {p0, p1, v5, v1, v4}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowVclassic"

    invoke-virtual {p0, p1, v7, v1, v6}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowVcircum"

    invoke-virtual {p0, p1, v9, v1, v8}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    const-string v1, "RAINBOW-v-COMPRESSED"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowVcomp"

    invoke-virtual {p0, p1, v1, v3, v10}, Lbk/b;->i(LTj/a;Ljava/lang/String;Ljava/lang/String;Loh/x;)V

    new-instance v1, LIl/c;

    invoke-direct {v1}, LIl/c;-><init>()V

    invoke-virtual {p0, p1, v0, v13, v1}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v2, v13, v1}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v4, v13, v1}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v6, v13, v1}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v8, v13, v1}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    invoke-virtual {p0, p1, v10, v13, v1}, Lbk/b;->k(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
