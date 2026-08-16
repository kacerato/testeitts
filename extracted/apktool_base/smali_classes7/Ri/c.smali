.class public LRi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/E;


# instance fields
.field public a:LBi/w;

.field public b:Ljava/security/SecureRandom;

.field public c:LXi/J;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(LBi/w;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRi/c;->a:LBi/w;

    iput-object p2, p0, LRi/c;->b:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, LRi/c;->d:Z

    iput-boolean p1, p0, LRi/c;->e:Z

    iput-boolean p1, p0, LRi/c;->f:Z

    return-void
.end method

.method public constructor <init>(LBi/w;Ljava/security/SecureRandom;ZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRi/c;->a:LBi/w;

    iput-object p2, p0, LRi/c;->b:Ljava/security/SecureRandom;

    iput-boolean p3, p0, LRi/c;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, LRi/c;->e:Z

    goto :goto_0

    :cond_0
    iput-boolean p4, p0, LRi/c;->e:Z

    :goto_0
    iput-boolean p5, p0, LRi/c;->f:Z

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, LXi/J;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LXi/J;

    iput-object v0, p0, LRi/c;->c:LXi/J;

    new-instance v1, LHi/c;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-static {v0}, LHi/b;->b(Ljk/e;)I

    move-result v0

    sget-object v2, LBi/o;->ANY:LBi/o;

    const-string v3, "ECIESKem"

    invoke-direct {v1, v3, v0, p1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v1}, LBi/r;->a(LBi/n;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EC key required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([BIII)LBi/k;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, LRi/c;->c:LXi/J;

    instance-of v1, v0, LXi/L;

    if-eqz v1, :cond_0

    move-object v3, v0

    check-cast v3, LXi/L;

    new-instance v0, LRi/a;

    iget-object v5, p0, LRi/c;->a:LBi/w;

    iget-boolean v6, p0, LRi/c;->d:Z

    iget-boolean v7, p0, LRi/c;->e:Z

    iget-boolean v8, p0, LRi/c;->f:Z

    move-object v2, v0

    move v4, p4

    invoke-direct/range {v2 .. v8}, LRi/a;-><init>(LXi/L;ILBi/w;ZZZ)V

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-virtual {v0, p1}, LRi/a;->b([B)[B

    move-result-object p1

    new-instance p2, LXi/o0;

    invoke-direct {p2, p1}, LXi/o0;-><init>([B)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Private key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([BII)LBi/k;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, LRi/c;->c:LXi/J;

    instance-of v0, v0, LXi/M;

    if-eqz v0, :cond_0

    new-instance v0, LRi/b;

    iget-object v3, p0, LRi/c;->a:LBi/w;

    iget-object v4, p0, LRi/c;->b:Ljava/security/SecureRandom;

    iget-boolean v5, p0, LRi/c;->d:Z

    iget-boolean v6, p0, LRi/c;->e:Z

    iget-boolean v7, p0, LRi/c;->f:Z

    move-object v1, v0

    move v2, p3

    invoke-direct/range {v1 .. v7}, LRi/b;-><init>(ILBi/w;Ljava/security/SecureRandom;ZZZ)V

    iget-object p3, p0, LRi/c;->c:LXi/J;

    invoke-virtual {v0, p3}, LRi/b;->a(LXi/c;)LBi/P;

    move-result-object p3

    invoke-interface {p3}, LBi/P;->e()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, LXi/o0;

    invoke-interface {p3}, LBi/P;->f()[B

    move-result-object p2

    invoke-direct {p1, p2}, LXi/o0;-><init>([B)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d([BI)LBi/k;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, LRi/c;->b([BIII)LBi/k;

    move-result-object p1

    return-object p1
.end method

.method public e([BI)LBi/k;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LRi/c;->c([BII)LBi/k;

    move-result-object p1

    return-object p1
.end method
