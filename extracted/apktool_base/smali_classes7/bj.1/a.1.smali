.class public Lbj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;


# instance fields
.field public final g:LBi/s;

.field public final h:LBi/y;

.field public final i:Lbj/b;

.field public j:Z


# direct methods
.method public constructor <init>(LBi/s;LBi/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj/a;->g:LBi/s;

    iput-object p2, p0, Lbj/a;->h:LBi/y;

    sget-object p1, Lbj/z;->a:Lbj/z;

    iput-object p1, p0, Lbj/a;->i:Lbj/b;

    return-void
.end method

.method public constructor <init>(LBi/t;LBi/y;Lbj/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj/a;->g:LBi/s;

    iput-object p2, p0, Lbj/a;->h:LBi/y;

    iput-object p3, p0, Lbj/a;->i:Lbj/b;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    iput-boolean p1, p0, Lbj/a;->j:Z

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
    invoke-virtual {p0}, Lbj/a;->reset()V

    iget-object v0, p0, Lbj/a;->g:LBi/s;

    invoke-interface {v0, p1, p2}, LBi/s;->a(ZLBi/k;)V

    return-void
.end method

.method public b([B)Z
    .locals 5

    iget-boolean v0, p0, Lbj/a;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbj/a;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lbj/a;->h:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    iget-object v1, p0, Lbj/a;->i:Lbj/b;

    invoke-virtual {p0}, Lbj/a;->g()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lbj/b;->a(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lbj/a;->g:LBi/s;

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-interface {v1, v0, v3, p1}, LBi/s;->c([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DSADigestSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()[B
    .locals 5

    iget-boolean v0, p0, Lbj/a;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbj/a;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lbj/a;->h:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    iget-object v1, p0, Lbj/a;->g:LBi/s;

    invoke-interface {v1, v0}, LBi/s;->b([B)[Ljava/math/BigInteger;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lbj/a;->i:Lbj/b;

    invoke-virtual {p0}, Lbj/a;->g()Ljava/math/BigInteger;

    move-result-object v3

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {v1, v3, v2, v0}, Lbj/b;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to encode signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSADigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lbj/a;->g:LBi/s;

    instance-of v1, v0, LBi/t;

    if-eqz v1, :cond_0

    check-cast v0, LBi/t;

    invoke-interface {v0}, LBi/t;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lbj/a;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbj/a;->h:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lbj/a;->h:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
