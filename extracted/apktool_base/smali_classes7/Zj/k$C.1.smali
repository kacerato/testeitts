.class public LZj/k$C;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "C"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, LSi/m;

    new-instance v1, LTi/y;

    new-instance v2, LLi/x;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, LLi/x;-><init>(I)V

    invoke-direct {v1, v2}, LTi/y;-><init>(LBi/f;)V

    invoke-direct {v0, v1, v3}, LSi/m;-><init>(LTi/y;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
