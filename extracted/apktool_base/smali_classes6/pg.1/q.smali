.class public final Lpg/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lpg/c<",
            "-TR;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lpg/t;

    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lpg/t;-><init>(Lyf/j;)V

    invoke-interface {p0, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lpg/t;->X(Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(LMf/l;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lpg/c<",
            "-TR;>;",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Lpg/t;

    const/4 p0, 0x3

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 p0, 0x0

    throw p0
.end method
