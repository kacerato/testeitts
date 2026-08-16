.class public abstract LAi/h;
.super Lorg/bouncycastle/cms/r0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lli/h;LRk/e;)V
    .locals 1

    .line 1
    new-instance v0, Luh/z;

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object p1

    invoke-direct {v0, p1}, Luh/z;-><init>(Lhi/q;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/r0;-><init>(Luh/z;LQk/d;)V

    return-void
.end method

.method public constructor <init>([BLRk/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/r0;-><init>([BLQk/d;)V

    return-void
.end method
