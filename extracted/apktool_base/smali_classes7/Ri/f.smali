.class public LRi/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/E;


# instance fields
.field public a:LBi/w;

.field public b:Ljava/security/SecureRandom;

.field public c:LXi/F0;


# direct methods
.method public constructor <init>(LBi/w;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRi/f;->a:LBi/w;

    iput-object p2, p0, LRi/f;->b:Ljava/security/SecureRandom;

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

    instance-of v0, p1, LXi/F0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LXi/F0;

    iput-object v0, p0, LRi/f;->c:LXi/F0;

    new-instance v1, LHi/c;

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result v0

    iget-object v2, p0, LRi/f;->c:LXi/F0;

    invoke-virtual {v2}, LXi/c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, LBi/o;->DECRYPTION:LBi/o;

    goto :goto_0

    :cond_0
    sget-object v2, LBi/o;->ENCRYPTION:LBi/o;

    :goto_0
    const-string v3, "RSAKem"

    invoke-direct {v1, v3, v0, p1, v2}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v1}, LBi/r;->a(LBi/n;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSA key required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([BIII)LBi/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, LRi/f;->c:LXi/F0;

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LRi/d;

    iget-object v1, p0, LRi/f;->c:LXi/F0;

    iget-object v2, p0, LRi/f;->a:LBi/w;

    invoke-direct {v0, v1, p4, v2}, LRi/d;-><init>(LXi/F0;ILBi/w;)V

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-virtual {v0, p1}, LRi/d;->b([B)[B

    move-result-object p1

    new-instance p2, LXi/o0;

    invoke-direct {p2, p1}, LXi/o0;-><init>([B)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Private key required for decryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([BII)LBi/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, LRi/f;->c:LXi/F0;

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LRi/e;

    iget-object v1, p0, LRi/f;->a:LBi/w;

    iget-object v2, p0, LRi/f;->b:Ljava/security/SecureRandom;

    invoke-direct {v0, p3, v1, v2}, LRi/e;-><init>(ILBi/w;Ljava/security/SecureRandom;)V

    iget-object p3, p0, LRi/f;->c:LXi/F0;

    invoke-virtual {v0, p3}, LRi/e;->a(LXi/c;)LBi/P;

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

    invoke-virtual {p0, p1, v1, v0, p2}, LRi/f;->b([BIII)LBi/k;

    move-result-object p1

    return-object p1
.end method

.method public e([BI)LBi/k;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, LRi/f;->c([BII)LBi/k;

    move-result-object p1

    return-object p1
.end method
