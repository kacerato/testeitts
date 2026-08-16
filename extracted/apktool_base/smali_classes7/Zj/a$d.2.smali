.class public LZj/a$d;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LSi/i;

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v1

    invoke-static {v1}, LTi/r;->u(LBi/f;)LTi/s;

    move-result-object v1

    invoke-direct {v0, v1}, LSi/i;-><init>(LTi/s;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;-><init>(LBi/I;)V

    return-void
.end method
