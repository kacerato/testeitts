.class public LZj/i$h;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LSi/l;

    new-instance v1, LLi/u;

    invoke-direct {v1}, LLi/u;-><init>()V

    new-instance v2, LWi/c;

    invoke-direct {v2}, LWi/c;-><init>()V

    invoke-direct {v0, v1, v2}, LSi/l;-><init>(LBi/f;LWi/a;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
