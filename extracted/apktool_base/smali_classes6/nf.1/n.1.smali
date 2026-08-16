.class public final Lnf/n;
.super Lnf/m;
.source "SourceFile"

# interfaces
.implements Lyf/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lnf/m<",
        "TT;TR;>;",
        "Lyf/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public b:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "-",
            "Lnf/m<",
            "**>;",
            "Ljava/lang/Object;",
            "-",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lyf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/q;Ljava/lang/Object;)V
    .locals 1
    .param p1    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/q<",
            "-",
            "Lnf/m<",
            "TT;TR;>;-TT;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;TT;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnf/m;-><init>(Lkotlin/jvm/internal/x;)V

    iput-object p1, p0, Lnf/n;->b:LMf/q;

    iput-object p2, p0, Lnf/n;->c:Ljava/lang/Object;

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p0, Lnf/n;->d:Lyf/f;

    invoke-static {}, Lnf/l;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnf/n;->e:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic f(Lnf/n;Lyf/f;)V
    .locals 0

    iput-object p1, p0, Lnf/n;->d:Lyf/f;

    return-void
.end method

.method public static final synthetic g(Lnf/n;LMf/q;)V
    .locals 0

    iput-object p1, p0, Lnf/n;->b:LMf/q;

    return-void
.end method

.method public static final synthetic h(Lnf/n;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lnf/n;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lnf/n;->d:Lyf/f;

    iput-object p1, p0, Lnf/n;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, LBf/h;->c(Lyf/f;)V

    :cond_0
    return-object p1
.end method

.method public c(Lnf/k;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lnf/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lnf/k<",
            "TU;TS;>;TU;",
            "Lyf/f<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p1}, Lnf/k;->a()LMf/q;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.coroutines.SuspendFunction2<kotlin.DeepRecursiveScope<*, *>, kotlin.Any?, kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lnf/n;->b:LMf/q;

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lnf/n;->b:LMf/q;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lnf/n;->j(LMf/q;Lyf/f;)Lyf/f;

    move-result-object p1

    iput-object p1, p0, Lnf/n;->d:Lyf/f;

    goto :goto_0

    :cond_0
    invoke-static {p3, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lnf/n;->d:Lyf/f;

    :goto_0
    iput-object p2, p0, Lnf/n;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {p3}, LBf/h;->c(Lyf/f;)V

    :cond_1
    return-object p1
.end method

.method public getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyf/l;->b:Lyf/l;

    return-object v0
.end method

.method public final j(LMf/q;Lyf/f;)Lyf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/q<",
            "-",
            "Lnf/m<",
            "**>;",
            "Ljava/lang/Object;",
            "-",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;)",
            "Lyf/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lyf/l;->b:Lyf/l;

    new-instance v1, Lnf/n$a;

    invoke-direct {v1, v0, p0, p1, p2}, Lnf/n$a;-><init>(Lyf/j;Lnf/n;LMf/q;Lyf/f;)V

    return-object v1
.end method

.method public final l()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lnf/n;->e:Ljava/lang/Object;

    iget-object v1, p0, Lnf/n;->d:Lyf/f;

    if-nez v1, :cond_1

    invoke-static {v0}, Lnf/j0;->n(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-static {}, Lnf/l;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lnf/i0;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v0, p0, Lnf/n;->b:LMf/q;

    iget-object v2, p0, Lnf/n;->c:Ljava/lang/Object;

    instance-of v3, v0, LBf/a;

    if-nez v3, :cond_2

    invoke-static {v0, p0, v2, v1}, LAf/c;->k(LMf/q;Ljava/lang/Object;Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMf/q;

    invoke-interface {v0, p0, v2, v1}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {v0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    sget-object v2, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {v0}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lnf/l;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lnf/n;->e:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lnf/n;->d:Lyf/f;

    iput-object p1, p0, Lnf/n;->e:Ljava/lang/Object;

    return-void
.end method
