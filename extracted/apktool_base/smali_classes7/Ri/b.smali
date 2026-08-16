.class public LRi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/B;


# static fields
.field public static final g:Ljava/math/BigInteger;


# instance fields
.field public a:LBi/w;

.field public b:Ljava/security/SecureRandom;

.field public final c:I

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LRi/b;->g:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILBi/w;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LRi/b;->c:I

    iput-object p2, p0, LRi/b;->a:LBi/w;

    iput-object p3, p0, LRi/b;->b:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, LRi/b;->d:Z

    iput-boolean p1, p0, LRi/b;->e:Z

    iput-boolean p1, p0, LRi/b;->f:Z

    return-void
.end method

.method public constructor <init>(ILBi/w;Ljava/security/SecureRandom;ZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LRi/b;->a:LBi/w;

    iput-object p3, p0, LRi/b;->b:Ljava/security/SecureRandom;

    iput p1, p0, LRi/b;->c:I

    iput-boolean p4, p0, LRi/b;->d:Z

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, LRi/b;->e:Z

    goto :goto_0

    :cond_0
    iput-boolean p5, p0, LRi/b;->e:Z

    :goto_0
    iput-boolean p6, p0, LRi/b;->f:Z

    return-void
.end method

.method public static c(ZLBi/w;I[B[B)[B
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {p3, p4}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p0

    invoke-static {p4, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    move-object p4, p0

    :cond_0
    :try_start_0
    new-instance p0, LXi/n0;

    const/4 p3, 0x0

    invoke-direct {p0, p4, p3}, LXi/n0;-><init>([B[B)V

    invoke-interface {p1, p0}, LBi/w;->c(LBi/x;)V

    new-array p0, p2, [B

    invoke-interface {p1, p0, v0, p2}, LBi/w;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p4, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p4, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    throw p0
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 6

    instance-of v0, p1, LXi/J;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LXi/M;

    new-instance v1, LHi/c;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v2

    invoke-virtual {v2}, LXi/G;->a()Ljk/e;

    move-result-object v2

    invoke-static {v2}, LHi/b;->b(Ljk/e;)I

    move-result v2

    sget-object v3, LBi/o;->ENCRYPTION:LBi/o;

    const-string v4, "ECIESKem"

    invoke-direct {v1, v4, v2, p1, v3}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object p1

    invoke-virtual {p1}, LXi/G;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, LRi/b;->g:Ljava/math/BigInteger;

    iget-object v5, p0, LRi/b;->b:Ljava/security/SecureRandom;

    invoke-static {v4, v2, v5}, Lorg/bouncycastle/util/b;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    iget-boolean v5, p0, LRi/b;->e:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {p0}, LRi/b;->b()Ljk/h;

    move-result-object v3

    invoke-virtual {p1}, LXi/G;->b()Ljk/i;

    move-result-object p1

    invoke-interface {v3, p1, v4}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljk/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljk/e;->E([Ljk/i;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {v1, v0}, Ljk/i;->l(Z)[B

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [B

    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->e()[B

    move-result-object p1

    new-instance v0, LRi/g;

    iget-boolean v3, p0, LRi/b;->f:Z

    iget-object v4, p0, LRi/b;->a:LBi/w;

    iget v5, p0, LRi/b;->c:I

    invoke-static {v3, v4, v5, v1, p1}, LRi/b;->c(ZLBi/w;I[B[B)[B

    move-result-object p1

    invoke-direct {v0, p1, v2}, LRi/g;-><init>([B[B)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EC key required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljk/h;
    .locals 1

    new-instance v0, Ljk/k;

    invoke-direct {v0}, Ljk/k;-><init>()V

    return-object v0
.end method
