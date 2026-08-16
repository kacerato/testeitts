.class public final Ljg/t$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/t;->f(Ljg/i;LMf/p;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljg/i<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n77#2:114\n78#2,7:116\n329#3:115\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n77#1:115\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n77#2:114\n78#2,7:116\n329#3:115\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n77#1:115\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LMf/p;

.field public final synthetic c:Ljg/i;


# direct methods
.method public constructor <init>(LMf/p;Ljg/i;)V
    .locals 0

    iput-object p1, p0, Ljg/t$e;->b:LMf/p;

    iput-object p2, p0, Ljg/t$e;->c:Ljg/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/t$e$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/t$e$a;

    iget v1, v0, Ljg/t$e$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/t$e$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/t$e$a;

    invoke-direct {v0, p0, p2}, Ljg/t$e$a;-><init>(Ljg/t$e;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/t$e$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/t$e$a;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ljg/t$e$a;->g:Ljava/lang/Object;

    check-cast p1, Lkg/t;

    iget-object v2, v0, Ljg/t$e$a;->f:Ljava/lang/Object;

    check-cast v2, Ljg/j;

    iget-object v4, v0, Ljg/t$e$a;->e:Ljava/lang/Object;

    check-cast v4, Ljg/t$e;

    :try_start_0
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkg/t;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v2

    invoke-direct {p2, p1, v2}, Lkg/t;-><init>(Ljg/j;Lyf/j;)V

    :try_start_1
    iget-object v2, p0, Ljg/t$e;->b:LMf/p;

    iput-object p0, v0, Ljg/t$e$a;->e:Ljava/lang/Object;

    iput-object p1, v0, Ljg/t$e$a;->f:Ljava/lang/Object;

    iput-object p2, v0, Ljg/t$e$a;->g:Ljava/lang/Object;

    iput v4, v0, Ljg/t$e$a;->c:I

    const/4 v4, 0x6

    invoke-static {v4}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {v2, p2, v0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x7

    invoke-static {v4}, Lkotlin/jvm/internal/J;->e(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, Lkg/t;->releaseIntercepted()V

    iget-object p1, v4, Ljg/t$e;->c:Ljg/i;

    const/4 p2, 0x0

    iput-object p2, v0, Ljg/t$e$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Ljg/t$e$a;->f:Ljava/lang/Object;

    iput-object p2, v0, Ljg/t$e$a;->g:Ljava/lang/Object;

    iput v3, v0, Ljg/t$e$a;->c:I

    invoke-interface {p1, v2, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_3
    invoke-virtual {p1}, Lkg/t;->releaseIntercepted()V

    throw p2
.end method
