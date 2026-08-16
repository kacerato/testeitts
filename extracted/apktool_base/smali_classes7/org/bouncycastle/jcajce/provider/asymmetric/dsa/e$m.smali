.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$m;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->t()LBi/y;

    move-result-object v0

    new-instance v1, Lbj/d;

    invoke-direct {v1}, Lbj/d;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;-><init>(LBi/y;LBi/t;)V

    return-void
.end method
