.class public LLi/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/b;


# instance fields
.field public a:LLi/g0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1

    iget-object v0, p0, LLi/h0;->a:LLi/g0;

    if-nez v0, :cond_0

    new-instance v0, LLi/g0;

    invoke-direct {v0}, LLi/g0;-><init>()V

    iput-object v0, p0, LLi/h0;->a:LLi/g0;

    :cond_0
    iget-object v0, p0, LLi/h0;->a:LLi/g0;

    invoke-virtual {v0, p1, p2}, LLi/g0;->f(ZLBi/k;)V

    return-void
.end method

.method public b([BII)[B
    .locals 1

    iget-object v0, p0, LLi/h0;->a:LLi/g0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, LLi/g0;->a([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, LLi/g0;->g(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, LLi/g0;->b(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RSA engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LLi/h0;->a:LLi/g0;

    invoke-virtual {v0}, LLi/g0;->d()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LLi/h0;->a:LLi/g0;

    invoke-virtual {v0}, LLi/g0;->c()I

    move-result v0

    return v0
.end method
