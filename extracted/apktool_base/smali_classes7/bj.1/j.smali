.class public Lbj/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbj/j$b;
    }
.end annotation


# instance fields
.field public final g:Lbj/j$b;

.field public h:Z

.field public i:LXi/O;

.field public j:LXi/P;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbj/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbj/j$b;-><init>(Lbj/j$a;)V

    iput-object v0, p0, Lbj/j;->g:Lbj/j$b;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    iput-boolean p1, p0, Lbj/j;->h:Z

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move-object v1, p2

    check-cast v1, LXi/O;

    iput-object v1, p0, Lbj/j;->i:LXi/O;

    :goto_0
    iput-object v0, p0, Lbj/j;->j:LXi/P;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lbj/j;->i:LXi/O;

    move-object v0, p2

    check-cast v0, LXi/P;

    goto :goto_0

    :goto_1
    const-string v0, "Ed25519"

    const/16 v1, 0x80

    invoke-static {v0, v1, p2, p1}, Lbj/A;->a(Ljava/lang/String;ILBi/k;Z)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, Lbj/j;->reset()V

    return-void
.end method

.method public b([B)Z
    .locals 2

    iget-boolean v0, p0, Lbj/j;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbj/j;->j:LXi/P;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbj/j;->g:Lbj/j$b;

    invoke-virtual {v1, v0, p1}, Lbj/j$b;->b(LXi/P;[B)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed25519Signer not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()[B
    .locals 2

    iget-boolean v0, p0, Lbj/j;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbj/j;->i:LXi/O;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbj/j;->g:Lbj/j$b;

    invoke-virtual {v1, v0}, Lbj/j$b;->a(LXi/O;)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519Signer not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lbj/j;->g:Lbj/j$b;

    invoke-virtual {v0}, Lbj/j$b;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbj/j;->g:Lbj/j$b;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lbj/j;->g:Lbj/j$b;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
