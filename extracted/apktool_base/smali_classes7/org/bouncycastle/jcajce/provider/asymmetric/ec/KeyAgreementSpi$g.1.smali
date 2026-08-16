.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$g;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LCi/f;

    invoke-direct {v0}, LCi/f;-><init>()V

    const/4 v1, 0x0

    const-string v2, "ECDHC"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;LBi/e;LBi/w;)V

    return-void
.end method
