.class public LZj/D$f;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LSi/i;

    new-instance v1, LTi/r;

    new-instance v2, LLi/j0;

    invoke-direct {v2}, LLi/j0;-><init>()V

    invoke-direct {v1, v2}, LTi/r;-><init>(LBi/f;)V

    invoke-direct {v0, v1}, LSi/i;-><init>(LTi/s;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
