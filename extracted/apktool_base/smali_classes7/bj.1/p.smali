.class public Lbj/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;


# instance fields
.field public final g:LBi/b;

.field public final h:LBi/y;

.field public i:Z


# direct methods
.method public constructor <init>(LBi/b;LBi/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj/p;->g:LBi/b;

    iput-object p2, p0, Lbj/p;->h:LBi/y;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    iput-boolean p1, p0, Lbj/p;->i:Z

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LXi/x0;

    invoke-virtual {v0}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/c;

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, LXi/c;

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "signing requires private key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "verification requires public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lbj/p;->reset()V

    iget-object v0, p0, Lbj/p;->g:LBi/b;

    invoke-interface {v0, p1, p2}, LBi/b;->a(ZLBi/k;)V

    return-void
.end method

.method public b([B)Z
    .locals 5

    iget-boolean v0, p0, Lbj/p;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbj/p;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lbj/p;->h:LBi/y;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, LBi/y;->c([BI)I

    :try_start_0
    iget-object v2, p0, Lbj/p;->g:LBi/b;

    array-length v4, p1

    invoke-interface {v2, p1, v3, v4}, LBi/b;->b([BII)[B

    move-result-object p1

    array-length v2, p1

    if-ge v2, v0, :cond_0

    new-array v2, v0, [B

    array-length v4, p1

    sub-int/2addr v0, v4

    array-length v4, p1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    :cond_0
    invoke-static {p1, v1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GenericSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lbj/p;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbj/p;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lbj/p;->h:LBi/y;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, LBi/y;->c([BI)I

    iget-object v2, p0, Lbj/p;->g:LBi/b;

    invoke-interface {v2, v1, v3, v0}, LBi/b;->b([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GenericSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lbj/p;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbj/p;->h:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lbj/p;->h:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
