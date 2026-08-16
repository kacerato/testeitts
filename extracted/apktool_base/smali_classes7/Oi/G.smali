.class public LOi/G;
.super LBi/L;
.source "SourceFile"


# instance fields
.field public final d:LBi/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->b()LBi/y;

    move-result-object v0

    invoke-direct {p0, v0}, LOi/G;-><init>(LBi/y;)V

    return-void
.end method

.method public constructor <init>(LBi/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LBi/L;-><init>()V

    iput-object p1, p0, LOi/G;->d:LBi/y;

    return-void
.end method


# virtual methods
.method public d(I)LBi/k;
    .locals 0

    invoke-virtual {p0, p1}, LOi/G;->e(I)LBi/k;

    move-result-object p1

    return-object p1
.end method

.method public e(I)LBi/k;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, LOi/G;->k(I)[B

    move-result-object v0

    new-instance v1, LXi/o0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, LXi/o0;-><init>([BII)V

    return-object v1
.end method

.method public f(II)LBi/k;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-virtual {p0, v0}, LOi/G;->k(I)[B

    move-result-object v0

    new-instance v1, LXi/w0;

    new-instance v2, LXi/o0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, LXi/o0;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, LXi/w0;-><init>(LBi/k;[BII)V

    return-object v1
.end method

.method public final k(I)[B
    .locals 8

    iget-object v0, p0, LOi/G;->d:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    new-array v2, p1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, LOi/G;->d:LBi/y;

    iget-object v6, p0, LBi/L;->a:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, LBi/y;->update([BII)V

    iget-object v5, p0, LOi/G;->d:LBi/y;

    iget-object v6, p0, LBi/L;->b:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, LBi/y;->update([BII)V

    iget-object v5, p0, LOi/G;->d:LBi/y;

    invoke-interface {v5, v1, v3}, LBi/y;->c([BI)I

    if-le p1, v0, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, p1

    :goto_1
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    sub-int/2addr p1, v5

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    iget-object v5, p0, LOi/G;->d:LBi/y;

    invoke-interface {v5}, LBi/y;->reset()V

    iget-object v5, p0, LOi/G;->d:LBi/y;

    invoke-interface {v5, v1, v3, v0}, LBi/y;->update([BII)V

    goto :goto_0
.end method

.method public l([B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, LBi/L;->j([B[BI)V

    return-void
.end method
