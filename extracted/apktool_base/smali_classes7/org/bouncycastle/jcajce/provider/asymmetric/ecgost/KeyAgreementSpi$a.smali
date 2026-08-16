.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi$a;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LCi/j;

    new-instance v1, LIi/l;

    invoke-direct {v1}, LIi/l;-><init>()V

    invoke-direct {v0, v1}, LCi/j;-><init>(LBi/y;)V

    const/4 v1, 0x0

    const-string v2, "ECGOST3410"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi;-><init>(Ljava/lang/String;LCi/j;LBi/w;)V

    return-void
.end method
