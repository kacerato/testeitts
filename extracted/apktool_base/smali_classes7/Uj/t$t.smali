.class public LUj/t$t;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LSi/n;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, LSi/n;-><init>(I[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
