.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$c;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->h()LBi/y;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->h()LBi/y;

    move-result-object v1

    const/16 v2, 0x20

    const/16 v3, 0x10

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$b;-><init>(LBi/y;LBi/y;II)V

    return-void
.end method
