.class public LXf/x;
.super LXf/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LXf/r;-><init>()V

    return-void
.end method

.method public static final A()LXf/m;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    invoke-static {}, LXf/x;->l()LXf/m;

    move-result-object v0

    return-object v0
.end method

.method public static B(Ljava/lang/Object;)LXf/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LXf/x$e;

    invoke-direct {v0, p0}, LXf/x$e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final varargs C([Ljava/lang/Object;)LXf/m;
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lpf/A;->T5([Ljava/lang/Object;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static final D(LXf/m;)LXf/m;
    .locals 1
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+TT;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LTf/f;->b:LTf/f$a;

    invoke-static {p0, v0}, LXf/x;->E(LXf/m;LTf/f;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static final E(LXf/m;LTf/f;)LXf/m;
    .locals 2
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LTf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+TT;>;",
            "LTf/f;",
            ")",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/x$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LXf/x$g;-><init>(LXf/m;LTf/f;Lyf/f;)V

    invoke-static {v0}, LXf/q;->b(LMf/p;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static final F(LXf/m;)Lnf/Z;
    .locals 4
    .param p0    # LXf/m;
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
            "LXf/m<",
            "+",
            "Lnf/Z<",
            "+TT;+TR;>;>;)",
            "Lnf/Z<",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnf/Z;

    invoke-virtual {v2}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LMf/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LXf/x;->w(LMf/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, LXf/x;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, LXf/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(LXf/m;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, LXf/x;->p(LXf/m;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, LXf/x;->q(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final i(LMf/a;)LXf/m;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/a<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/x$a;

    invoke-direct {v0, p0}, LXf/x$a;-><init>(LMf/a;)V

    return-object v0
.end method

.method public static j(Ljava/util/Iterator;)LXf/m;
    .locals 1
    .param p0    # Ljava/util/Iterator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/x$b;

    invoke-direct {v0, p0}, LXf/x$b;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, LXf/x;->k(LXf/m;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static k(LXf/m;)LXf/m;
    .locals 1
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+TT;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LXf/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LXf/a;

    invoke-direct {v0, p0}, LXf/a;-><init>(LXf/m;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static l()LXf/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LXf/g;->a:LXf/g;

    return-object v0
.end method

.method public static final m(LXf/m;LMf/p;LMf/l;)LXf/m;
    .locals 2
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+TT;>;",
            "LMf/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TC;>;",
            "LMf/l<",
            "-TC;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;)",
            "LXf/m<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/x$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LXf/x$c;-><init>(LXf/m;LMf/p;LMf/l;Lyf/f;)V

    invoke-static {v0}, LXf/q;->b(LMf/p;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static final n(LXf/m;)LXf/m;
    .locals 1
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+",
            "LXf/m<",
            "+TT;>;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/u;

    invoke-direct {v0}, LXf/u;-><init>()V

    invoke-static {p0, v0}, LXf/x;->o(LXf/m;LMf/l;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static final o(LXf/m;LMf/l;)LXf/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+TT;>;",
            "LMf/l<",
            "-TT;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;)",
            "LXf/m<",
            "TR;>;"
        }
    .end annotation

    instance-of v0, p0, LXf/U;

    if-eqz v0, :cond_0

    check-cast p0, LXf/U;

    invoke-virtual {p0, p1}, LXf/U;->e(LMf/l;)LXf/m;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LXf/i;

    new-instance v1, LXf/w;

    invoke-direct {v1}, LXf/w;-><init>()V

    invoke-direct {v0, p0, v1, p1}, LXf/i;-><init>(LXf/m;LMf/l;LMf/l;)V

    return-object v0
.end method

.method public static final p(LXf/m;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final s(LXf/m;)LXf/m;
    .locals 1
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "flattenSequenceOfIterable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/v;

    invoke-direct {v0}, LXf/v;-><init>()V

    invoke-static {p0, v0}, LXf/x;->o(LXf/m;LMf/l;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static final t(LMf/a;)LXf/m;
    .locals 2
    .param p0    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/a<",
            "+TT;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/j;

    new-instance v1, LXf/t;

    invoke-direct {v1, p0}, LXf/t;-><init>(LMf/a;)V

    invoke-direct {v0, p0, v1}, LXf/j;-><init>(LMf/a;LMf/l;)V

    invoke-static {v0}, LXf/x;->k(LXf/m;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static u(LMf/a;LMf/l;)LXf/m;
    .locals 1
    .param p0    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/a<",
            "+TT;>;",
            "LMf/l<",
            "-TT;+TT;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "seedFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/j;

    invoke-direct {v0, p0, p1}, LXf/j;-><init>(LMf/a;LMf/l;)V

    return-object v0
.end method

.method public static v(Ljava/lang/Object;LMf/l;)LXf/m;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LEf/i;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LMf/l<",
            "-TT;+TT;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, LXf/g;->a:LXf/g;

    goto :goto_0

    :cond_0
    new-instance v0, LXf/j;

    new-instance v1, LXf/s;

    invoke-direct {v1, p0}, LXf/s;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, LXf/j;-><init>(LMf/a;LMf/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final w(LMf/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final y(LXf/m;LMf/a;)LXf/m;
    .locals 2
    .param p0    # LXf/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+TT;>;",
            "LMf/a<",
            "+",
            "LXf/m<",
            "+TT;>;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LXf/x$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LXf/x$d;-><init>(LXf/m;LMf/a;Lyf/f;)V

    invoke-static {v0}, LXf/q;->b(LMf/p;)LXf/m;

    move-result-object p0

    return-object p0
.end method

.method public static final z(LXf/m;)LXf/m;
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LXf/m<",
            "+TT;>;)",
            "LXf/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, LXf/x;->l()LXf/m;

    move-result-object p0

    :cond_0
    return-object p0
.end method
