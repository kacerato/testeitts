.class public final Lyf/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyf/j$b;Lyf/j$c;)Lyf/j$b;
    .locals 2
    .param p0    # Lyf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lyf/j$b;",
            ">(",
            "Lyf/j$b;",
            "Lyf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/w;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lyf/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lyf/b;

    invoke-interface {p0}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyf/b;->a(Lyf/j$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lyf/b;->b(Lyf/j$b;)Lyf/j$b;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {p0}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v0

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final b(Lyf/j$b;Lyf/j$c;)Lyf/j;
    .locals 1
    .param p0    # Lyf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j$b;",
            "Lyf/j$c<",
            "*>;)",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lnf/w;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lyf/b;

    if-eqz v0, :cond_1

    check-cast p1, Lyf/b;

    invoke-interface {p0}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lyf/b;->a(Lyf/j$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lyf/b;->b(Lyf/j$b;)Lyf/j$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Lyf/l;->b:Lyf/l;

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v0

    if-ne v0, p1, :cond_2

    sget-object p0, Lyf/l;->b:Lyf/l;

    :cond_2
    return-object p0
.end method
