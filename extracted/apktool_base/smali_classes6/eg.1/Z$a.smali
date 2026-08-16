.class public final Leg/Z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Leg/Z;)V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-static {p0}, Leg/K0$a;->a(Leg/K0;)V

    return-void
.end method

.method public static b(Leg/Z;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .locals 0
    .param p0    # Leg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/Z<",
            "+TT;>;TR;",
            "LMf/p<",
            "-TR;-",
            "Lyf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Leg/K0$a;->d(Leg/K0;Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Leg/Z;Lyf/j$c;)Lyf/j$b;
    .locals 0
    .param p0    # Leg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::",
            "Lyf/j$b;",
            ">(",
            "Leg/Z<",
            "+TT;>;",
            "Lyf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Leg/K0$a;->e(Leg/K0;Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Leg/Z;Lyf/j$c;)Lyf/j;
    .locals 0
    .param p0    # Leg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/Z<",
            "+TT;>;",
            "Lyf/j$c<",
            "*>;)",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Leg/K0$a;->h(Leg/K0;Lyf/j$c;)Lyf/j;

    move-result-object p0

    return-object p0
.end method

.method public static e(Leg/Z;Leg/K0;)Leg/K0;
    .locals 0
    .param p0    # Leg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/Z<",
            "+TT;>;",
            "Leg/K0;",
            ")",
            "Leg/K0;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Leg/K0$a;->i(Leg/K0;Leg/K0;)Leg/K0;

    move-result-object p0

    return-object p0
.end method

.method public static f(Leg/Z;Lyf/j;)Lyf/j;
    .locals 0
    .param p0    # Leg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/Z<",
            "+TT;>;",
            "Lyf/j;",
            ")",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Leg/K0$a;->j(Leg/K0;Lyf/j;)Lyf/j;

    move-result-object p0

    return-object p0
.end method
