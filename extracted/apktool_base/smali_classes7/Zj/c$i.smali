.class public LZj/c$i;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LTi/r;

    new-instance v1, LLi/f;

    invoke-direct {v1}, LLi/f;-><init>()V

    invoke-direct {v0, v1}, LTi/r;-><init>(LBi/f;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LTi/a;)V

    return-void
.end method
