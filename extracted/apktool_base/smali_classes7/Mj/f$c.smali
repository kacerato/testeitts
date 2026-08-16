.class public LMj/f$c;
.super LMj/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v0, LLi/L;

    new-instance v1, LCi/b;

    invoke-direct {v1}, LCi/b;-><init>()V

    new-instance v2, LOi/z;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v3

    invoke-direct {v2, v3}, LOi/z;-><init>(LBi/y;)V

    new-instance v3, LSi/k;

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v4

    invoke-direct {v3, v4}, LSi/k;-><init>(LBi/y;)V

    new-instance v4, LWi/e;

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v5

    invoke-static {v5}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object v5

    invoke-direct {v4, v5}, LWi/e;-><init>(LBi/f;)V

    invoke-direct {v0, v1, v2, v3, v4}, LLi/L;-><init>(LBi/e;LBi/w;LBi/I;LBi/h;)V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, LMj/f;-><init>(LLi/L;I)V

    return-void
.end method
