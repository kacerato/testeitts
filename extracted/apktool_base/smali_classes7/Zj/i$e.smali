.class public LZj/i$e;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, LSi/c;

    new-instance v1, LLi/u;

    invoke-direct {v1}, LLi/u;-><init>()V

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, LSi/c;-><init>(LBi/f;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
