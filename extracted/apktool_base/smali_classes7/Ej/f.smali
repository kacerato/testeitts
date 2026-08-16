.class public LEj/f;
.super LDj/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(LFk/T;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LDj/o;-><init>(LFk/T;)V

    return-void
.end method

.method public constructor <init>(LXi/c;)V
    .locals 0

    .line 2
    check-cast p1, LXi/M;

    invoke-static {p1}, LEj/f;->b(LXi/M;)LFk/T;

    move-result-object p1

    invoke-direct {p0, p1}, LDj/o;-><init>(LFk/T;)V

    return-void
.end method

.method public static b(LXi/M;)LFk/T;
    .locals 3

    invoke-virtual {p0}, LXi/J;->d()LXi/G;

    move-result-object v0

    check-cast v0, LXi/K;

    invoke-virtual {v0}, LXi/K;->j()Loh/x;

    move-result-object v0

    invoke-virtual {p0}, LXi/M;->e()Ljk/i;

    move-result-object p0

    sget-object v1, LZh/d;->H:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, LFk/T;

    invoke-static {}, LFk/L;->u()LFk/L$a;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, LFk/L$a;->b(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, LFk/L$a;->e(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/L$a;->a()LFk/L;

    move-result-object p0

    invoke-static {p0}, LFk/k;->F(LFk/L;)LFk/k;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LFk/T;-><init>(ILoh/g;)V

    return-object v0

    :cond_0
    sget-object v1, Lbi/b;->u:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, LFk/T;

    invoke-static {}, LFk/L;->u()LFk/L$a;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, LFk/L$a;->b(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, LFk/L$a;->e(Ljava/math/BigInteger;)LFk/L$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/L$a;->a()LFk/L;

    move-result-object p0

    invoke-static {p0}, LFk/k;->F(LFk/L;)LFk/k;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LFk/T;-><init>(ILoh/g;)V

    return-object v0

    :cond_1
    sget-object v1, Lbi/b;->y:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LFk/T;

    invoke-static {}, LFk/M;->u()LFk/M$a;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, LFk/M$a;->b(Ljava/math/BigInteger;)LFk/M$a;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, LFk/M$a;->e(Ljava/math/BigInteger;)LFk/M$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/M$a;->a()LFk/M;

    move-result-object p0

    invoke-static {p0}, LFk/l;->D(LFk/M;)LFk/l;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LFk/T;-><init>(ILoh/g;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown curve in public encryption key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c()LXi/c;
    .locals 6

    iget-object v0, p0, LDj/o;->a:LFk/T;

    invoke-virtual {v0}, LFk/T;->y()I

    move-result v0

    const-string v1, "unknown key type"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Lbi/b;->y:Loh/x;

    :goto_0
    invoke-static {v0}, Lbi/a;->j(Loh/x;)Lki/l;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lbi/b;->u:Loh/x;

    goto :goto_0

    :cond_2
    sget-object v0, LZh/d;->H:Loh/x;

    invoke-static {v0}, LSh/c;->d(Loh/x;)Lki/l;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lki/l;->v()Ljk/e;

    move-result-object v3

    iget-object v4, p0, LDj/o;->a:LFk/T;

    invoke-virtual {v4}, LFk/T;->A()Loh/g;

    move-result-object v4

    instance-of v4, v4, LFk/j;

    if-eqz v4, :cond_5

    iget-object v4, p0, LDj/o;->a:LFk/T;

    invoke-virtual {v4}, LFk/T;->A()Loh/g;

    move-result-object v4

    check-cast v4, LFk/j;

    instance-of v5, v4, LFk/k;

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v4}, LFk/j;->u()[B

    move-result-object v1

    goto :goto_3

    :cond_3
    instance-of v5, v4, LFk/l;

    if-eqz v5, :cond_4

    goto :goto_2

    :goto_3
    invoke-virtual {v3, v1}, Ljk/e;->l([B)Ljk/i;

    move-result-object v1

    invoke-virtual {v1}, Ljk/i;->B()Ljk/i;

    move-result-object v1

    new-instance v3, LXi/M;

    new-instance v4, LXi/K;

    invoke-direct {v4, v0, v2}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-direct {v3, v1, v4}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "extension to public verification key not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
