.class public Lbj/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;


# instance fields
.field public final g:LBi/y;

.field public final h:[B

.field public i:Z

.field public j:LXi/O;

.field public k:LXi/P;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lpk/b;->j()LBi/y;

    move-result-object v0

    iput-object v0, p0, Lbj/l;->g:LBi/y;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lbj/l;->h:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'context\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    iput-boolean p1, p0, Lbj/l;->i:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p2

    check-cast v1, LXi/O;

    iput-object v1, p0, Lbj/l;->j:LXi/O;

    :goto_0
    iput-object v0, p0, Lbj/l;->k:LXi/P;

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lbj/l;->j:LXi/O;

    move-object v0, p2

    check-cast v0, LXi/P;

    goto :goto_0

    :goto_1
    const-string v0, "Ed25519"

    const/16 v1, 0x80

    invoke-static {v0, v1, p2, p1}, Lbj/A;->a(Ljava/lang/String;ILBi/k;Z)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, Lbj/l;->reset()V

    return-void
.end method

.method public b([B)Z
    .locals 10

    iget-boolean v0, p0, Lbj/l;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbj/l;->k:LXi/P;

    if-eqz v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-eq v2, v0, :cond_0

    iget-object p1, p0, Lbj/l;->g:LBi/y;

    invoke-interface {p1}, LBi/y;->reset()V

    return v1

    :cond_0
    new-array v5, v2, [B

    iget-object v0, p0, Lbj/l;->g:LBi/y;

    invoke-interface {v0, v5, v1}, LBi/y;->c([BI)I

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lbj/l;->k:LXi/P;

    iget-object v4, p0, Lbj/l;->h:[B

    const/16 v7, 0x40

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v8, p1

    invoke-virtual/range {v2 .. v9}, LXi/P;->g(I[B[BII[BI)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Prehash digest failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed25519phSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()[B
    .locals 9

    iget-boolean v0, p0, Lbj/l;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbj/l;->j:LXi/O;

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    new-array v4, v0, [B

    iget-object v1, p0, Lbj/l;->g:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, LBi/y;->c([BI)I

    move-result v1

    if-ne v0, v1, :cond_0

    new-array v0, v0, [B

    iget-object v1, p0, Lbj/l;->j:LXi/O;

    iget-object v3, p0, Lbj/l;->h:[B

    const/16 v6, 0x40

    const/4 v8, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, LXi/O;->g(I[B[BII[BI)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prehash digest failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519phSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lbj/l;->g:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbj/l;->g:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lbj/l;->g:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
