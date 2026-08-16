.class public LLi/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/b;


# instance fields
.field public a:LLi/g0;

.field public b:LXi/F0;

.field public c:Ljava/math/BigInteger;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LLi/g0;

    invoke-direct {v0}, LLi/g0;-><init>()V

    iput-object v0, p0, LLi/f0;->a:LLi/g0;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p2

    :cond_0
    check-cast p2, LXi/D0;

    iget-object v0, p0, LLi/f0;->a:LLi/g0;

    invoke-virtual {p2}, LXi/D0;->b()LXi/F0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LLi/g0;->f(ZLBi/k;)V

    iput-boolean p1, p0, LLi/f0;->d:Z

    invoke-virtual {p2}, LXi/D0;->b()LXi/F0;

    move-result-object p1

    iput-object p1, p0, LLi/f0;->b:LXi/F0;

    invoke-virtual {p2}, LXi/D0;->a()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LLi/f0;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public b([BII)[B
    .locals 1

    iget-object v0, p0, LLi/f0;->a:LLi/g0;

    invoke-virtual {v0, p1, p2, p3}, LLi/g0;->a([BII)Ljava/math/BigInteger;

    move-result-object p1

    iget-boolean p2, p0, LLi/f0;->d:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, LLi/f0;->e(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LLi/f0;->f(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    iget-object p2, p0, LLi/f0;->a:LLi/g0;

    invoke-virtual {p2, p1}, LLi/g0;->b(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LLi/f0;->a:LLi/g0;

    invoke-virtual {v0}, LLi/g0;->d()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LLi/f0;->a:LLi/g0;

    invoke-virtual {v0}, LLi/g0;->c()I

    move-result v0

    return v0
.end method

.method public final e(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, LLi/f0;->c:Ljava/math/BigInteger;

    iget-object v1, p0, LLi/f0;->b:LXi/F0;

    invoke-virtual {v1}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, LLi/f0;->b:LXi/F0;

    invoke-virtual {v2}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, LLi/f0;->b:LXi/F0;

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, LLi/f0;->b:LXi/F0;

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, LLi/f0;->c:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/bouncycastle/util/b;->n(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
