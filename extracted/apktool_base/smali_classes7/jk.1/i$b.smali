.class public abstract Ljk/i$b;
.super Ljk/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljk/e;Ljk/f;Ljk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljk/i;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-void
.end method

.method public constructor <init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Ljk/i;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-void
.end method


# virtual methods
.method public D()Z
    .locals 7

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    iget-object v1, p0, Ljk/i;->b:Ljk/f;

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v2

    invoke-virtual {v0}, Ljk/e;->r()Ljk/f;

    move-result-object v3

    invoke-virtual {v0}, Ljk/e;->t()I

    move-result v0

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Ljk/i;->d:[Ljk/f;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljk/f;->i()Z

    move-result v4

    invoke-virtual {v1}, Ljk/f;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljk/f;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v5, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljk/f;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljk/f;->p()Ljk/f;

    move-result-object v4

    invoke-virtual {v4}, Ljk/f;->p()Ljk/f;

    move-result-object v6

    invoke-virtual {v5, v0}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v4}, Ljk/f;->m(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v1, v3, v6}, Ljk/f;->r(Ljk/f;Ljk/f;)Ljk/f;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v4, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v4, v1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v4

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Ljk/i;->d:[Ljk/f;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljk/f;->i()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Ljk/f;->p()Ljk/f;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v5

    invoke-virtual {v4, v0}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v3, v5}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 6

    iget-object v0, p0, Ljk/i;->a:Ljk/e;

    invoke-virtual {v0}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljk/d;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->f()Ljk/f;

    move-result-object v0

    check-cast v0, Ljk/f$a;

    invoke-virtual {v0}, Ljk/f$a;->y()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sget-object v1, Ljk/d;->e:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    iget-object v4, p0, Ljk/i;->a:Ljk/e;

    move-object v5, v4

    check-cast v5, Ljk/e$b;

    invoke-virtual {v4}, Ljk/e;->p()Ljk/f;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljk/e$b;->Q(Ljk/f;)Ljk/f;

    move-result-object v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, Ljk/i;->g()Ljk/f;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    check-cast v0, Ljk/f$a;

    invoke-virtual {v0}, Ljk/f$a;->y()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    :cond_4
    invoke-super {p0}, Ljk/i;->E()Z

    move-result v0

    return v0
.end method

.method public F(Ljk/f;)Ljk/i;
    .locals 4

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->j()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Ljk/i;->F(Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v0

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->p()[Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1}, Ljk/f;->p()Ljk/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v2, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    filled-new-array {p1}, [Ljk/f;

    move-result-object p1

    invoke-virtual {v1, v3, v0, p1}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v0

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljk/f;->d(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->p()[Ljk/f;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljk/f;)Ljk/i;
    .locals 0

    invoke-virtual {p0, p1}, Ljk/i$b;->F(Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljk/f;)Ljk/i;
    .locals 3

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->j()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Ljk/i;->H(Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v0

    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->p()[Ljk/f;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljk/f;)Ljk/i;
    .locals 0

    invoke-virtual {p0, p1}, Ljk/i$b;->H(Ljk/f;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public J(Ljk/i;)Ljk/i;
    .locals 1

    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljk/i;->A()Ljk/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public O()Ljk/i$b;
    .locals 5

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->t()I

    move-result v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    iget-object v3, p0, Ljk/i;->d:[Ljk/f;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2}, Ljk/f;->p()Ljk/f;

    move-result-object v2

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v3}, Ljk/f;->p()Ljk/f;

    move-result-object v3

    filled-new-array {v3}, [Ljk/f;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object v0

    :goto_1
    check-cast v0, Ljk/i$b;

    return-object v0

    :cond_3
    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v2}, Ljk/f;->p()Ljk/f;

    move-result-object v2

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljk/e;->j(Ljk/f;Ljk/f;)Ljk/i;

    move-result-object v0

    goto :goto_1
.end method

.method public P(I)Ljk/i$b;
    .locals 5

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->t()I

    move-result v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unsupported coordinate system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    iget-object v3, p0, Ljk/i;->d:[Ljk/f;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, p1}, Ljk/f;->s(I)Ljk/f;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljk/f;->s(I)Ljk/f;

    move-result-object v1

    invoke-virtual {v3, p1}, Ljk/f;->s(I)Ljk/f;

    move-result-object p1

    filled-new-array {p1}, [Ljk/f;

    move-result-object p1

    invoke-virtual {v0, v2, v1, p1}, Ljk/e;->k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;

    move-result-object p1

    :goto_1
    check-cast p1, Ljk/i$b;

    return-object p1

    :cond_3
    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v2, p1}, Ljk/f;->s(I)Ljk/f;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljk/f;->s(I)Ljk/f;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljk/e;->j(Ljk/f;Ljk/f;)Ljk/i;

    move-result-object p1

    goto :goto_1
.end method
