.class public Ltl/k$a;
.super Lbk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltl/k;
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
    .locals 3

    const-string v0, "KeyFactory.NH"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.newhope.NHKeyFactorySpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.NH"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.newhope.NHKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyAgreement.NH"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.newhope.KeyAgreementSpi"

    invoke-interface {p1, v0, v1}, LTj/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LEl/d;

    invoke-direct {v0}, LEl/d;-><init>()V

    sget-object v1, LXk/m;->v:Loh/x;

    const-string v2, "NH"

    invoke-virtual {p0, p1, v1, v2, v0}, Lbk/b;->l(LTj/a;Loh/x;Ljava/lang/String;Lbk/c;)V

    return-void
.end method
