.class public final Lgg/x;
.super Lgg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lgg/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public f:Lyf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;Lgg/l;LMf/p;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "Lgg/l<",
            "TE;>;",
            "LMf/p<",
            "-",
            "Lgg/c<",
            "TE;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgg/a;-><init>(Lyf/j;Lgg/l;Z)V

    invoke-static {p3, p0, p0}, LAf/c;->c(LMf/p;Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    iput-object p1, p0, Lgg/x;->f:Lyf/f;

    return-void
.end method

.method public static final synthetic D1(Lgg/x;Lpg/m;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgg/x;->F1(Lpg/m;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic E1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final F1(Lpg/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lgg/x;->h1()V

    invoke-super {p0}, Lgg/m;->j()Lpg/i;

    move-result-object v0

    invoke-interface {v0}, Lpg/k;->c()LMf/q;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public J(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lgg/m;->J(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-virtual {p0}, Leg/R0;->start()Z

    return p1
.end method

.method public M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Leg/R0;->start()Z

    invoke-super {p0, p1, p2}, Lgg/m;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public h1()V
    .locals 1

    iget-object v0, p0, Lgg/x;->f:Lyf/f;

    invoke-static {v0, p0}, Lng/a;->e(Lyf/f;Lyf/f;)V

    return-void
.end method

.method public j()Lpg/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpg/i<",
            "TE;",
            "Lgg/E<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lpg/j;

    sget-object v0, Lgg/x$a;->b:Lgg/x$a;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LMf/q;

    invoke-super {p0}, Lgg/m;->j()Lpg/i;

    move-result-object v0

    invoke-interface {v0}, Lpg/k;->b()LMf/q;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lpg/j;-><init>(Ljava/lang/Object;LMf/q;LMf/q;LMf/q;ILkotlin/jvm/internal/x;)V

    return-object v7
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lnf/g0;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    invoke-virtual {p0}, Leg/R0;->start()Z

    invoke-super {p0, p1}, Lgg/m;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Leg/R0;->start()Z

    invoke-super {p0, p1}, Lgg/m;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
