.class public final Leg/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leg/K0;)Leg/B;
    .locals 1
    .param p0    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Leg/j1;

    invoke-direct {v0, p0}, Leg/j1;-><init>(Leg/K0;)V

    return-object v0
.end method

.method public static final synthetic b(Leg/K0;)Leg/K0;
    .locals 0
    .annotation build LLf/j;
        name = "SupervisorJob"
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-static {p0}, Leg/k1;->a(Leg/K0;)Leg/B;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Leg/K0;ILjava/lang/Object;)Leg/B;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Leg/k1;->a(Leg/K0;)Leg/B;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Leg/K0;ILjava/lang/Object;)Leg/K0;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Leg/k1;->b(Leg/K0;)Leg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static final e(LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # LMf/p;
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
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Leg/i1;

    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Leg/i1;-><init>(Lyf/j;Lyf/f;)V

    invoke-static {v0, v0, p0}, Lng/b;->e(Lmg/O;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object p0
.end method
