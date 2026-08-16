.class public Lbj/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbj/k$b;
    }
.end annotation


# instance fields
.field public final g:Lbj/k$b;

.field public final h:[B

.field public i:Z

.field public j:LXi/O;

.field public k:LXi/P;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbj/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbj/k$b;-><init>(Lbj/k$a;)V

    iput-object v0, p0, Lbj/k;->g:Lbj/k$b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lbj/k;->h:[B

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

    iput-boolean p1, p0, Lbj/k;->i:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p2

    check-cast v1, LXi/O;

    iput-object v1, p0, Lbj/k;->j:LXi/O;

    :goto_0
    iput-object v0, p0, Lbj/k;->k:LXi/P;

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lbj/k;->j:LXi/O;

    move-object v0, p2

    check-cast v0, LXi/P;

    goto :goto_0

    :goto_1
    const-string v0, "Ed25519"

    const/16 v1, 0x80

    invoke-static {v0, v1, p2, p1}, Lbj/A;->a(Ljava/lang/String;ILBi/k;Z)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, Lbj/k;->reset()V

    return-void
.end method

.method public b([B)Z
    .locals 3

    iget-boolean v0, p0, Lbj/k;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbj/k;->k:LXi/P;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbj/k;->g:Lbj/k$b;

    iget-object v2, p0, Lbj/k;->h:[B

    invoke-virtual {v1, v0, v2, p1}, Lbj/k$b;->b(LXi/P;[B[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed25519ctxSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()[B
    .locals 3

    iget-boolean v0, p0, Lbj/k;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbj/k;->j:LXi/O;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbj/k;->g:Lbj/k$b;

    iget-object v2, p0, Lbj/k;->h:[B

    invoke-virtual {v1, v0, v2}, Lbj/k$b;->a(LXi/O;[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519ctxSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lbj/k;->g:Lbj/k$b;

    invoke-virtual {v0}, Lbj/k$b;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbj/k;->g:Lbj/k$b;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lbj/k;->g:Lbj/k$b;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
