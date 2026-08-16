.class public LYl/h;
.super LYl/k;
.source "SourceFile"


# instance fields
.field public c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(LYl/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LYl/k;-><init>(LYl/b;Ljava/math/BigInteger;)V

    iput-object p3, p0, LYl/h;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public static a(LYl/h;LYl/h;)LYl/h;
    .locals 5

    iget-object v0, p0, LYl/h;->c:Ljava/math/BigInteger;

    iget-object v1, p1, LYl/h;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v0}, LXl/a;->a(Ljava/math/BigInteger;Ljava/math/BigInteger;)LXl/a;

    move-result-object v3

    iget-object p0, p0, LYl/k;->a:LYl/b;

    invoke-virtual {p0}, LYl/b;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LYl/b;

    iget-object v4, v3, LXl/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, LYl/b;->l(Ljava/math/BigInteger;)V

    iget-object p1, p1, LYl/k;->a:LYl/b;

    invoke-virtual {p1}, LYl/b;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LYl/b;

    iget-object v1, v3, LXl/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, LYl/b;->l(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1}, LYl/b;->a(LYl/b;)V

    invoke-virtual {p0, v2}, LYl/b;->i(Ljava/math/BigInteger;)V

    new-instance p1, LYl/h;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v2}, LYl/h;-><init>(LYl/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p1
.end method
