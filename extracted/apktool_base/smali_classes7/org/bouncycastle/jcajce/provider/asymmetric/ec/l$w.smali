.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$w;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->f()LBi/y;

    move-result-object v0

    new-instance v1, Lbj/f;

    new-instance v2, Lbj/q;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->f()LBi/y;

    move-result-object v3

    invoke-direct {v2, v3}, Lbj/q;-><init>(LBi/y;)V

    invoke-direct {v1, v2}, Lbj/f;-><init>(Lbj/c;)V

    sget-object v2, Lbj/z;->a:Lbj/z;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;-><init>(LBi/y;LBi/t;Lbj/b;)V

    return-void
.end method
