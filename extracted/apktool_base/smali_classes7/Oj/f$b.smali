.class public LOj/f$b;
.super LOj/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LOj/f$b;-><init>(LBi/y;LBi/y;)V

    return-void
.end method

.method public constructor <init>(LBi/y;LBi/y;)V
    .locals 3

    .line 2
    new-instance v0, LLi/L;

    new-instance v1, LCi/p;

    invoke-direct {v1}, LCi/p;-><init>()V

    new-instance v2, LOi/z;

    invoke-direct {v2, p1}, LOi/z;-><init>(LBi/y;)V

    new-instance p1, LSi/k;

    invoke-direct {p1, p2}, LSi/k;-><init>(LBi/y;)V

    invoke-direct {v0, v1, v2, p1}, LLi/L;-><init>(LBi/e;LBi/w;LBi/I;)V

    invoke-direct {p0, v0}, LOj/f;-><init>(LLi/L;)V

    return-void
.end method
