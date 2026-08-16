.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i$b;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(LBi/y;LBi/y;II)V
    .locals 6

    new-instance v1, LCi/f;

    invoke-direct {v1}, LCi/f;-><init>()V

    new-instance v2, LOi/z;

    invoke-direct {v2, p1}, LOi/z;-><init>(LBi/y;)V

    new-instance v3, LSi/k;

    invoke-direct {v3, p2}, LSi/k;-><init>(LBi/y;)V

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/i;-><init>(LCi/f;LOi/z;LBi/I;II)V

    return-void
.end method
