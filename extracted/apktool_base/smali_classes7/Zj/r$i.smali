.class public LZj/r$i;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LLi/K;

    invoke-direct {v0}, LLi/K;-><init>()V

    invoke-static {v0}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;)V

    return-void
.end method
