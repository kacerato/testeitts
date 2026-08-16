.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$s;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LIi/B;

    invoke-direct {v0}, LIi/B;-><init>()V

    new-instance v1, Lbj/d;

    invoke-direct {v1}, Lbj/d;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;-><init>(LBi/y;LBi/t;)V

    return-void
.end method
