.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$Q;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Q"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LCi/i;

    invoke-direct {v0}, LCi/i;-><init>()V

    new-instance v1, LOi/z;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->h()LBi/y;

    move-result-object v2

    invoke-direct {v1, v2}, LOi/z;-><init>(LBi/y;)V

    const-string v2, "ECMQVwithSHA256KDF"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;LBi/e;LBi/w;)V

    return-void
.end method
