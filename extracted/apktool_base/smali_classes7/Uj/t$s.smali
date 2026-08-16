.class public LUj/t$s;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, LSi/k;

    new-instance v1, LIi/N;

    invoke-direct {v1, p1}, LIi/N;-><init>(I)V

    invoke-direct {v0, v1}, LSi/k;-><init>(LBi/y;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
