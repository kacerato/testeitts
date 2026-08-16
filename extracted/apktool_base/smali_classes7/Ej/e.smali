.class public LEj/e;
.super LDj/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(LFk/S;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LDj/n;-><init>(LFk/S;)V

    return-void
.end method

.method public constructor <init>(LXi/c;)V
    .locals 0

    .line 2
    check-cast p1, LXi/M;

    invoke-static {p1}, LEj/e;->b(LXi/M;)LFk/S;

    move-result-object p1

    invoke-direct {p0, p1}, LDj/n;-><init>(LFk/S;)V

    return-void
.end method

.method public static b(LXi/M;)LFk/S;
    .locals 4

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

    new-instance v0, LFk/S;

    sget-object v1, LFk/m0;->f:LFk/m0;

    new-instance v2, LFk/a$a;

    invoke-direct {v2}, LFk/a$a;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LFk/a$a;->b(I)LFk/a$a;

    move-result-object v2

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v3

    invoke-virtual {v3}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v3, p0}, LFk/k;->G(Ljava/math/BigInteger;Ljava/math/BigInteger;)LFk/k;

    move-result-object p0

    invoke-virtual {v2, p0}, LFk/a$a;->c(LFk/j;)LFk/a$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/a$a;->a()LFk/a;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LFk/S;-><init>(LFk/m0;LFk/a;)V

    return-object v0

    :cond_0
    sget-object v1, Lbi/b;->u:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LFk/S;

    sget-object v1, LFk/m0;->f:LFk/m0;

    new-instance v2, LFk/a$a;

    invoke-direct {v2}, LFk/a$a;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LFk/a$a;->b(I)LFk/a$a;

    move-result-object v2

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v3

    invoke-virtual {v3}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object p0

    invoke-virtual {p0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v3, p0}, LFk/k;->G(Ljava/math/BigInteger;Ljava/math/BigInteger;)LFk/k;

    move-result-object p0

    invoke-virtual {v2, p0}, LFk/a$a;->c(LFk/j;)LFk/a$a;

    move-result-object p0

    invoke-virtual {p0}, LFk/a$a;->a()LFk/a;

    move-result-object p0

    invoke-direct {v0, v1, p0}, LFk/S;-><init>(LFk/m0;LFk/a;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown curve in public encryption key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c()LXi/c;
    .locals 6

    iget-object v0, p0, LDj/n;->a:LFk/S;

    invoke-virtual {v0}, LFk/S;->x()LFk/a;

    move-result-object v0

    invoke-virtual {v0}, LFk/a;->y()I

    move-result v1

    const-string v2, "unknown key type"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    sget-object v1, Lbi/b;->u:Loh/x;

    invoke-static {v1}, Lbi/a;->j(Loh/x;)Lki/l;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, LZh/d;->H:Loh/x;

    invoke-static {v1}, LSh/c;->d(Loh/x;)Lki/l;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lki/l;->v()Ljk/e;

    move-result-object v4

    iget-object v5, p0, LDj/n;->a:LFk/S;

    invoke-virtual {v5}, LFk/S;->x()LFk/a;

    move-result-object v5

    invoke-virtual {v5}, LFk/a;->x()Loh/g;

    move-result-object v5

    instance-of v5, v5, LFk/j;

    if-eqz v5, :cond_4

    invoke-virtual {v0}, LFk/a;->x()Loh/g;

    move-result-object v0

    check-cast v0, LFk/j;

    instance-of v5, v0, LFk/k;

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v0}, LFk/j;->u()[B

    move-result-object v0

    goto :goto_2

    :cond_2
    instance-of v5, v0, LFk/l;

    if-eqz v5, :cond_3

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v0}, Ljk/e;->l([B)Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    new-instance v2, LXi/M;

    new-instance v4, LXi/K;

    invoke-direct {v4, v1, v3}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-direct {v2, v0, v4}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "extension to public verification key not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
