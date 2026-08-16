.class public LRi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public final a:LXi/F0;

.field public final b:I

.field public c:LBi/w;


# direct methods
.method public constructor <init>(LXi/F0;ILBi/w;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LXi/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LRi/d;->a:LXi/F0;

    iput p2, p0, LRi/d;->b:I

    iput-object p3, p0, LRi/d;->c:LBi/w;

    new-instance p2, LHi/c;

    invoke-virtual {p1}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object p3

    invoke-static {p3}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result p3

    sget-object v0, LBi/o;->DECRYPTION:LBi/o;

    const-string v1, "RSAKem"

    invoke-direct {p2, v1, p3, p1, v0}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {p2}, LBi/r;->a(LBi/n;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "private key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LRi/d;->a:LXi/F0;

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public b([B)[B
    .locals 4

    iget-object v0, p0, LRi/d;->a:LXi/F0;

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, LRi/d;->a:LXi/F0;

    invoke-virtual {v1}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, LRi/d;->c:LBi/w;

    iget v2, p0, LRi/d;->b:I

    invoke-static {v1, v0, p1, v2}, LRi/e;->b(LBi/w;Ljava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object p1

    return-object p1
.end method
