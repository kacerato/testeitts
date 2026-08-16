.class public final Ljg/v$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/v;->h(Ljg/i;LMf/p;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljg/j<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,141:1\n86#2,5:142\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nLimit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,141:1\n86#2,5:142\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LMf/p;

.field public final synthetic c:Ljg/j;


# direct methods
.method public constructor <init>(LMf/p;Ljg/j;)V
    .locals 0

    iput-object p1, p0, Ljg/v$k;->b:LMf/p;

    iput-object p2, p0, Ljg/v$k;->c:Ljg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p2, Ljg/v$k$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/v$k$a;

    iget v1, v0, Ljg/v$k$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/v$k$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/v$k$a;

    invoke-direct {v0, p0, p2}, Ljg/v$k$a;-><init>(Ljg/v$k;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/v$k$a;->c:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/v$k$a;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ljg/v$k$a;->b:Ljava/lang/Object;

    check-cast p1, Ljg/v$k;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ljg/v$k$a;->f:Ljava/lang/Object;

    iget-object v2, v0, Ljg/v$k$a;->b:Ljava/lang/Object;

    check-cast v2, Ljg/v$k;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object v6, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v6

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Ljg/v$k;->b:LMf/p;

    iput-object p0, v0, Ljg/v$k$a;->b:Ljava/lang/Object;

    iput-object p1, v0, Ljg/v$k$a;->f:Ljava/lang/Object;

    iput v4, v0, Ljg/v$k$a;->d:I

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p2, p1, v0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x7

    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p2

    move-object p2, p1

    move-object p1, p0

    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Ljg/v$k;->c:Ljg/j;

    iput-object p1, v0, Ljg/v$k$a;->b:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Ljg/v$k$a;->f:Ljava/lang/Object;

    iput v3, v0, Ljg/v$k$a;->d:I

    invoke-interface {v2, p2, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_7
    new-instance p2, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Ljg/j;)V

    throw p2
.end method
