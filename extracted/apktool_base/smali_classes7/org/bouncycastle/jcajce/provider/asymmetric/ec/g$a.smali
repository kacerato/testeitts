.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/g$a;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lbj/y;

    invoke-static {}, LIi/L;->x()LBi/O;

    move-result-object v1

    invoke-direct {v0, v1}, Lbj/y;-><init>(LBi/y;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/g;-><init>(Lbj/y;)V

    return-void
.end method
