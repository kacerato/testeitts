.class public LUj/y$e;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, LSi/k;

    new-instance v1, LIi/X;

    invoke-direct {v1}, LIi/X;-><init>()V

    invoke-direct {v0, v1}, LSi/k;-><init>(LBi/y;)V

    const/4 v1, 0x3

    const/16 v2, 0xc0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;III)V

    return-void
.end method
