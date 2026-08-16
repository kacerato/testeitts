.class public abstract Ljk/i$c;
.super Ljk/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
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

    iget-object v0, p0, Ljk/i;->b:Ljk/f;

    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    iget-object v2, p0, Ljk/i;->a:Ljk/e;

    invoke-virtual {v2}, Ljk/e;->p()Ljk/f;

    move-result-object v2

    iget-object v3, p0, Ljk/i;->a:Ljk/e;

    invoke-virtual {v3}, Ljk/e;->r()Ljk/f;

    move-result-object v3

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->j()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljk/f;->i()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljk/f;->p()Ljk/f;

    move-result-object v4

    invoke-virtual {v4}, Ljk/f;->p()Ljk/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v4

    invoke-virtual {v2, v5}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljk/f;->i()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljk/f;->p()Ljk/f;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v6

    invoke-virtual {v1, v4}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v2, v5}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v3, v6}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljk/f;->p()Ljk/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->u()Z

    move-result v0

    return v0
.end method
