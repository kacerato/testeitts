.class public final LTf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LTf/f;)Ljava/util/Random;
    .locals 1
    .param p0    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LTf/a;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LTf/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTf/a;->r()Ljava/util/Random;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, LTf/c;

    invoke-direct {v0, p0}, LTf/c;-><init>(LTf/f;)V

    :cond_2
    return-object v0
.end method

.method public static final b(Ljava/util/Random;)LTf/f;
    .locals 1
    .param p0    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LTf/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LTf/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTf/c;->a()LTf/f;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, LTf/d;

    invoke-direct {v0, p0}, LTf/d;-><init>(Ljava/util/Random;)V

    :cond_2
    return-object v0
.end method

.method public static final c()LTf/f;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    sget-object v0, LEf/n;->a:LEf/m;

    invoke-virtual {v0}, LEf/m;->b()LTf/f;

    move-result-object v0

    return-object v0
.end method

.method public static final d(II)D
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x1b

    shl-long/2addr v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-double p0, v0

    const-wide/high16 v0, 0x4340000000000000L    # 9.007199254740992E15

    div-double/2addr p0, v0

    return-wide p0
.end method
