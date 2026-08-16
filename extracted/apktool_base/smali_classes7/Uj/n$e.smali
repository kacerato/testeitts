.class public LUj/n$e;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LSi/k;

    new-instance v1, LIi/G;

    invoke-direct {v1}, LIi/G;-><init>()V

    invoke-direct {v0, v1}, LSi/k;-><init>(LBi/y;)V

    const/4 v1, 0x2

    const/16 v2, 0xa0

    invoke-direct {p0, v0, v1, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;III)V

    return-void
.end method
