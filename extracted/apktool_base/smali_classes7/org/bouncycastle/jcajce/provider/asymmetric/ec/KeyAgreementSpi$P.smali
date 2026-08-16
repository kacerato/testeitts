.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$P;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LCi/i;

    invoke-direct {v0}, LCi/i;-><init>()V

    new-instance v1, LEi/a;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->h()LBi/y;

    move-result-object v2

    invoke-direct {v1, v2}, LEi/a;-><init>(LBi/y;)V

    const-string v2, "ECMQVwithSHA256CKDF"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;LBi/e;LBi/w;)V

    return-void
.end method
