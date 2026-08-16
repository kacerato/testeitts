.class public final Lkg/t;
.super LBf/d;
.source "SourceFile"

# interfaces
.implements Ljg/j;
.implements LBf/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBf/d;",
        "Ljg/j<",
        "TT;>;",
        "LBf/e;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Ljg/j;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lyf/j;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:I
    .annotation build LLf/g;
    .end annotation
.end field

.field public e:Lyf/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lyf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljg/j;Lyf/j;)V
    .locals 2
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TT;>;",
            "Lyf/j;",
            ")V"
        }
    .end annotation

    sget-object v0, Lkg/q;->b:Lkg/q;

    sget-object v1, Lyf/l;->b:Lyf/l;

    invoke-direct {p0, v0, v1}, LBf/d;-><init>(Lyf/f;Lyf/j;)V

    iput-object p1, p0, Lkg/t;->b:Ljg/j;

    iput-object p2, p0, Lkg/t;->c:Lyf/j;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lkg/t$a;->b:Lkg/t$a;

    invoke-interface {p2, p1, v0}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lkg/t;->d:I

    return-void
.end method


# virtual methods
.method public final A(Lyf/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p1}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0}, Leg/N0;->A(Lyf/j;)V

    iget-object v1, p0, Lkg/t;->e:Lyf/j;

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0, v1, p2}, Lkg/t;->z(Lyf/j;Lyf/j;Ljava/lang/Object;)V

    iput-object v0, p0, Lkg/t;->e:Lyf/j;

    :cond_0
    iput-object p1, p0, Lkg/t;->f:Lyf/f;

    invoke-static {}, Lkg/u;->a()LMf/q;

    move-result-object p1

    iget-object v0, p0, Lkg/t;->b:Ljg/j;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2, p0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput-object p2, p0, Lkg/t;->f:Lyf/f;

    :cond_1
    return-object p1
.end method

.method public final Q(Lkg/l;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lkg/l;->b:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but then emission attempt of value \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lag/D;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lkg/t;->A(Lyf/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, LBf/h;->c(Lyf/f;)V

    :cond_0
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Lkg/l;

    invoke-interface {p2}, Lyf/f;->getContext()Lyf/j;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkg/l;-><init>(Ljava/lang/Throwable;Lyf/j;)V

    iput-object v0, p0, Lkg/t;->e:Lyf/j;

    throw p1
.end method

.method public getCallerFrame()LBf/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkg/t;->f:Lyf/f;

    instance-of v1, v0, LBf/e;

    if-eqz v1, :cond_0

    check-cast v0, LBf/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkg/t;->e:Lyf/j;

    if-nez v0, :cond_0

    sget-object v0, Lyf/l;->b:Lyf/l;

    :cond_0
    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lnf/i0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lkg/l;

    invoke-virtual {p0}, Lkg/t;->getContext()Lyf/j;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lkg/l;-><init>(Ljava/lang/Throwable;Lyf/j;)V

    iput-object v1, p0, Lkg/t;->e:Lyf/j;

    :cond_0
    iget-object v0, p0, Lkg/t;->f:Lyf/f;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public releaseIntercepted()V
    .locals 0

    invoke-super {p0}, LBf/d;->releaseIntercepted()V

    return-void
.end method

.method public final z(Lyf/j;Lyf/j;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "Lyf/j;",
            "TT;)V"
        }
    .end annotation

    instance-of v0, p2, Lkg/l;

    if-eqz v0, :cond_0

    check-cast p2, Lkg/l;

    invoke-virtual {p0, p2, p3}, Lkg/t;->Q(Lkg/l;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lkg/v;->a(Lkg/t;Lyf/j;)V

    return-void
.end method
