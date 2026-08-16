.class public final Leg/A1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0}, Leg/N0;->A(Lyf/j;)V

    invoke-static {p0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v1

    instance-of v2, v1, Lmg/l;

    if-eqz v2, :cond_0

    check-cast v1, Lmg/l;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lmg/l;->e:Leg/M;

    invoke-virtual {v2, v0}, Leg/M;->isDispatchNeeded(Lyf/j;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {v1, v0, v2}, Lmg/l;->p(Lyf/j;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v2, Leg/z1;

    invoke-direct {v2}, Leg/z1;-><init>()V

    invoke-interface {v0, v2}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object v0

    sget-object v3, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {v1, v0, v3}, Lmg/l;->p(Lyf/j;Ljava/lang/Object;)V

    iget-boolean v0, v2, Leg/z1;->b:Z

    if-eqz v0, :cond_4

    invoke-static {v1}, Lmg/m;->f(Lmg/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, LBf/h;->c(Lyf/f;)V

    :cond_5
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    return-object v0

    :cond_6
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method
