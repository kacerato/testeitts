.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l$v;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "v"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LIi/B;

    invoke-direct {v0}, LIi/B;-><init>()V

    new-instance v1, Lbj/f;

    invoke-direct {v1}, Lbj/f;-><init>()V

    sget-object v2, Lbj/z;->a:Lbj/z;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/l;-><init>(LBi/y;LBi/t;Lbj/b;)V

    return-void
.end method
