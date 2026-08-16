.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$t;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, LIi/Q;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    new-instance v2, Lbj/f;

    new-instance v3, Lbj/q;

    new-instance v4, LIi/Q;

    invoke-direct {v4, v1}, LIi/Q;-><init>(I)V

    invoke-direct {v3, v4}, Lbj/q;-><init>(LBi/y;)V

    invoke-direct {v2, v3}, Lbj/f;-><init>(Lbj/c;)V

    sget-object v1, Lbj/z;->a:Lbj/z;

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;-><init>(LBi/y;LBi/t;Lbj/b;)V

    return-void
.end method
