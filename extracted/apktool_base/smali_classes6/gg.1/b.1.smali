.class public final Lgg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;)Lgg/E;
    .locals 1
    .param p0    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/S;",
            "Lyf/j;",
            "I",
            "Leg/U;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;",
            "LMf/p<",
            "-",
            "Lgg/c<",
            "TE;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lgg/E<",
            "TE;>;"
        }
    .end annotation

    .annotation build Leg/a1;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Leg/L;->d(Leg/S;Lyf/j;)Lyf/j;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x6

    invoke-static {p2, p1, p1, v0, p1}, Lgg/o;->d(ILgg/i;LMf/l;ILjava/lang/Object;)Lgg/l;

    move-result-object p1

    invoke-virtual {p3}, Leg/U;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lgg/x;

    invoke-direct {p2, p0, p1, p5}, Lgg/x;-><init>(Lyf/j;Lgg/l;LMf/p;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lgg/a;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lgg/a;-><init>(Lyf/j;Lgg/l;Z)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p2, p4}, Leg/R0;->w(LMf/l;)Leg/m0;

    :cond_1
    invoke-virtual {p2, p3, p2, p5}, Leg/a;->B1(Leg/U;Ljava/lang/Object;LMf/p;)V

    return-object p2
.end method

.method public static synthetic b(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;ILjava/lang/Object;)Lgg/E;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget-object p1, Lyf/l;->b:Lyf/l;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    sget-object p3, Leg/U;->DEFAULT:Leg/U;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const/4 p4, 0x0

    :cond_3
    move-object v4, p4

    move-object v0, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lgg/b;->a(Leg/S;Lyf/j;ILeg/U;LMf/l;LMf/p;)Lgg/E;

    move-result-object p0

    return-object p0
.end method
