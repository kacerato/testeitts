.class public LZj/r$c;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LLi/K;

    invoke-direct {v0}, LLi/K;-><init>()V

    invoke-static {v0}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object v0

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;I)V

    return-void
.end method
