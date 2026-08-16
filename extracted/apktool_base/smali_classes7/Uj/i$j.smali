.class public LUj/i$j;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LSi/k;

    new-instance v1, LIi/v;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, LIi/v;-><init>(I)V

    invoke-direct {v0, v1}, LSi/k;-><init>(LBi/y;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
