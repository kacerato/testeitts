.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$d;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->t()LBi/y;

    move-result-object v0

    new-instance v1, Lbj/d;

    new-instance v2, Lbj/q;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->t()LBi/y;

    move-result-object v3

    invoke-direct {v2, v3}, Lbj/q;-><init>(LBi/y;)V

    invoke-direct {v1, v2}, Lbj/d;-><init>(Lbj/c;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;-><init>(LBi/y;LBi/t;)V

    return-void
.end method
