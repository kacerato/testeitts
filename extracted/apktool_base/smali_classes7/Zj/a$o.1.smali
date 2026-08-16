.class public LZj/a$o;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-static {v0}, LTi/r;->u(LBi/f;)LTi/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LTi/a;)V

    return-void
.end method
