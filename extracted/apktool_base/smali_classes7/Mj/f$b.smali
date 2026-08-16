.class public LMj/f$b;
.super LMj/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

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

    invoke-direct {v0, v1, v2, v3}, LLi/L;-><init>(LBi/e;LBi/w;LBi/I;)V

    invoke-direct {p0, v0}, LMj/f;-><init>(LLi/L;)V

    return-void
.end method
