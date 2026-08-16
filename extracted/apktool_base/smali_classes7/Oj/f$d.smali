.class public LOj/f$d;
.super LOj/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(LBi/f;I)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, LOj/f$d;-><init>(LBi/f;ILBi/y;LBi/y;)V

    return-void
.end method

.method public constructor <init>(LBi/f;ILBi/y;LBi/y;)V
    .locals 3

    .line 2
    new-instance v0, LLi/L;

    new-instance v1, LCi/p;

    invoke-direct {v1}, LCi/p;-><init>()V

    new-instance v2, LOi/z;

    invoke-direct {v2, p3}, LOi/z;-><init>(LBi/y;)V

    new-instance p3, LSi/k;

    invoke-direct {p3, p4}, LSi/k;-><init>(LBi/y;)V

    new-instance p4, LWi/e;

    invoke-direct {p4, p1}, LWi/e;-><init>(LBi/f;)V

    invoke-direct {v0, v1, v2, p3, p4}, LLi/L;-><init>(LBi/e;LBi/w;LBi/I;LBi/h;)V

    invoke-direct {p0, v0, p2}, LOj/f;-><init>(LLi/L;I)V

    return-void
.end method
