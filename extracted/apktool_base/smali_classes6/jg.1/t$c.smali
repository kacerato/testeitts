.class public final Ljg/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/t;->e(Ljg/i;LMf/p;)Ljg/i;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n182#2,7:114\n189#2,7:122\n329#3:121\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n188#1:121\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n182#2,7:114\n189#2,7:122\n329#3:121\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n188#1:121\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljg/i;

.field public final synthetic c:LMf/p;


# direct methods
.method public constructor <init>(Ljg/i;LMf/p;)V
    .locals 0

    iput-object p1, p0, Ljg/t$c;->b:Ljg/i;

    iput-object p2, p0, Ljg/t$c;->c:LMf/p;

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

    instance-of v0, p2, Ljg/t$c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/t$c$a;

    iget v1, v0, Ljg/t$c$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/t$c$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/t$c$a;

    invoke-direct {v0, p0, p2}, Ljg/t$c$a;-><init>(Ljg/t$c;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/t$c$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/t$c$a;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ljg/t$c$a;->e:Ljava/lang/Object;

    check-cast p1, Lkg/t;

    :try_start_0
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ljg/t$c$a;->g:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/m0$a;

    iget-object v2, v0, Ljg/t$c$a;->f:Ljava/lang/Object;

    check-cast v2, Ljg/j;

    iget-object v4, v0, Ljg/t$c$a;->e:Ljava/lang/Object;

    check-cast v4, Ljg/t$c;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/m0$a;

    invoke-direct {p2}, Lkotlin/jvm/internal/m0$a;-><init>()V

    iput-boolean v4, p2, Lkotlin/jvm/internal/m0$a;->b:Z

    iget-object v2, p0, Ljg/t$c;->b:Ljg/i;

    new-instance v5, Ljg/t$d;

    invoke-direct {v5, p2, p1}, Ljg/t$d;-><init>(Lkotlin/jvm/internal/m0$a;Ljg/j;)V

    iput-object p0, v0, Ljg/t$c$a;->e:Ljava/lang/Object;

    iput-object p1, v0, Ljg/t$c$a;->f:Ljava/lang/Object;

    iput-object p2, v0, Ljg/t$c$a;->g:Ljava/lang/Object;

    iput v4, v0, Ljg/t$c$a;->c:I

    invoke-interface {v2, v5, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_1
    iget-boolean p1, p1, Lkotlin/jvm/internal/m0$a;->b:Z

    if-eqz p1, :cond_6

    new-instance p1, Lkg/t;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lkg/t;-><init>(Ljg/j;Lyf/j;)V

    :try_start_1
    iget-object p2, v4, Ljg/t$c;->c:LMf/p;

    iput-object p1, v0, Ljg/t$c$a;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Ljg/t$c$a;->f:Ljava/lang/Object;

    iput-object v2, v0, Ljg/t$c$a;->g:Ljava/lang/Object;

    iput v3, v0, Ljg/t$c$a;->c:I

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p2, p1, v0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lkg/t;->releaseIntercepted()V

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Lkg/t;->releaseIntercepted()V

    throw p2

    :cond_6
    :goto_4
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
