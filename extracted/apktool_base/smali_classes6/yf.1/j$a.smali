.class public final Lyf/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lyf/j;Lyf/j$b;)Lyf/j;
    .locals 0

    invoke-static {p0, p1}, Lyf/j$a;->c(Lyf/j;Lyf/j$b;)Lyf/j;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lyf/j;Lyf/j;)Lyf/j;
    .locals 1
    .param p0    # Lyf/j;
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

    sget-object v0, Lyf/l;->b:Lyf/l;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyf/i;

    invoke-direct {v0}, Lyf/i;-><init>()V

    invoke-interface {p1, p0, v0}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyf/j;

    :goto_0
    return-object p0
.end method

.method public static c(Lyf/j;Lyf/j$b;)Lyf/j;
    .locals 3

    const-string v0, "acc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v0

    invoke-interface {p0, v0}, Lyf/j;->minusKey(Lyf/j$c;)Lyf/j;

    move-result-object p0

    sget-object v0, Lyf/l;->b:Lyf/l;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lyf/g;->J8:Lyf/g$b;

    invoke-interface {p0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v2

    check-cast v2, Lyf/g;

    if-nez v2, :cond_1

    new-instance v0, Lyf/e;

    invoke-direct {v0, p0, p1}, Lyf/e;-><init>(Lyf/j;Lyf/j$b;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Lyf/j;->minusKey(Lyf/j$c;)Lyf/j;

    move-result-object p0

    if-ne p0, v0, :cond_2

    new-instance p0, Lyf/e;

    invoke-direct {p0, p1, v2}, Lyf/e;-><init>(Lyf/j;Lyf/j$b;)V

    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance v0, Lyf/e;

    new-instance v1, Lyf/e;

    invoke-direct {v1, p0, p1}, Lyf/e;-><init>(Lyf/j;Lyf/j$b;)V

    invoke-direct {v0, v1, v2}, Lyf/e;-><init>(Lyf/j;Lyf/j$b;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method
