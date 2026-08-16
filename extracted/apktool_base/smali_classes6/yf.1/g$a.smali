.class public final Lyf/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lyf/g;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lyf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lyf/g;",
            "TR;",
            "LMf/p<",
            "-TR;-",
            "Lyf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lyf/j$b$a;->a(Lyf/j$b;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lyf/g;Lyf/j$c;)Lyf/j$b;
    .locals 2
    .param p0    # Lyf/g;
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
            "Lyf/g;",
            "Lyf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    sget-object v0, Lyf/g;->J8:Lyf/g$b;

    if-ne v0, p1, :cond_2

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static c(Lyf/g;Lyf/j$c;)Lyf/j;
    .locals 1
    .param p0    # Lyf/g;
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
            "Lyf/g;",
            "Lyf/j$c<",
            "*>;)",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    sget-object v0, Lyf/g;->J8:Lyf/g$b;

    if-ne v0, p1, :cond_2

    sget-object p0, Lyf/l;->b:Lyf/l;

    :cond_2
    return-object p0
.end method

.method public static d(Lyf/g;Lyf/j;)Lyf/j;
    .locals 1
    .param p0    # Lyf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lyf/j$b$a;->d(Lyf/j$b;Lyf/j;)Lyf/j;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lyf/g;Lyf/f;)V
    .locals 0
    .param p0    # Lyf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/g;",
            "Lyf/f<",
            "*>;)V"
        }
    .end annotation

    const-string p0, "continuation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
