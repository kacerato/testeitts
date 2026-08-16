.class public LUj/x$D;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUj/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "D"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LSi/k;

    new-instance v1, LIi/U;

    const/16 v2, 0x400

    invoke-direct {v1, v2, v2}, LIi/U;-><init>(II)V

    invoke-direct {v0, v1}, LSi/k;-><init>(LBi/y;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
