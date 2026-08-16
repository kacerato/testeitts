.class public LYk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;


# instance fields
.field public final g:LBi/y;

.field public final h:LYk/g;

.field public i:Z


# direct methods
.method public constructor <init>(LYk/g;LBi/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYk/a;->h:LYk/g;

    iput-object p2, p0, LYk/a;->g:LBi/y;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    iput-boolean p1, p0, LYk/a;->i:Z

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

    const-string p2, "Signing Requires Private Key."

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

    const-string p2, "Verification Requires Public Key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p0}, LYk/a;->reset()V

    iget-object v0, p0, LYk/a;->h:LYk/g;

    invoke-interface {v0, p1, p2}, LYk/g;->a(ZLBi/k;)V

    return-void
.end method

.method public b([B)Z
    .locals 3

    iget-boolean v0, p0, LYk/a;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LYk/a;->g:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LYk/a;->g:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    iget-object v1, p0, LYk/a;->h:LYk/g;

    invoke-interface {v1, v0, p1}, LYk/g;->d([B[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DigestingMessageSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()[B
    .locals 3

    iget-boolean v0, p0, LYk/a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LYk/a;->g:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LYk/a;->g:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    iget-object v1, p0, LYk/a;->h:LYk/g;

    invoke-interface {v1, v0}, LYk/g;->b([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DigestingMessageSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LYk/a;->g:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LYk/a;->g:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LYk/a;->g:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
