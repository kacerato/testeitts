.class public LZj/i$f;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, LSi/c;

    new-instance v1, LLi/u;

    invoke-direct {v1}, LLi/u;-><init>()V

    new-instance v2, LWi/c;

    invoke-direct {v2}, LWi/c;-><init>()V

    const/16 v3, 0x40

    invoke-direct {v0, v1, v3, v2}, LSi/c;-><init>(LBi/f;ILWi/a;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
