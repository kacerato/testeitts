.class public final Ljg/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/t;->d(Ljg/i;LMf/q;)Ljg/i;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n147#2,13:114\n160#2,6:128\n329#3:127\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n159#1:127\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n147#2,13:114\n160#2,6:128\n329#3:127\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n159#1:127\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljg/i;

.field public final synthetic c:LMf/q;


# direct methods
.method public constructor <init>(Ljg/i;LMf/q;)V
    .locals 0

    iput-object p1, p0, Ljg/t$b;->b:Ljg/i;

    iput-object p2, p0, Ljg/t$b;->c:LMf/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Ljg/t$b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/t$b$a;

    iget v1, v0, Ljg/t$b$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/t$b$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/t$b$a;

    invoke-direct {v0, p0, p2}, Ljg/t$b$a;-><init>(Ljg/t$b;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/t$b$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/t$b$a;->c:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ljg/t$b$a;->e:Ljava/lang/Object;

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
    iget-object p1, v0, Ljg/t$b$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    iget-object p1, v0, Ljg/t$b$a;->f:Ljava/lang/Object;

    check-cast p1, Ljg/j;

    iget-object v2, v0, Ljg/t$b$a;->e:Ljava/lang/Object;

    check-cast v2, Ljg/t$b;

    :try_start_1
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Ljg/t$b;->b:Ljg/i;

    iput-object p0, v0, Ljg/t$b$a;->e:Ljava/lang/Object;

    iput-object p1, v0, Ljg/t$b$a;->f:Ljava/lang/Object;

    iput v5, v0, Ljg/t$b$a;->c:I

    invoke-interface {p2, p1, v0}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    new-instance p2, Lkg/t;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v4

    invoke-direct {p2, p1, v4}, Lkg/t;-><init>(Ljg/j;Lyf/j;)V

    :try_start_3
    iget-object p1, v2, Ljg/t$b;->c:LMf/q;

    iput-object p2, v0, Ljg/t$b$a;->e:Ljava/lang/Object;

    iput-object v6, v0, Ljg/t$b$a;->f:Ljava/lang/Object;

    iput v3, v0, Ljg/t$b$a;->c:I

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p1, p2, v6, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, Lkg/t;->releaseIntercepted()V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :catchall_2
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_3
    invoke-virtual {p1}, Lkg/t;->releaseIntercepted()V

    throw p2

    :catchall_3
    move-exception p1

    move-object v2, p0

    :goto_4
    new-instance p2, Ljg/a0;

    invoke-direct {p2, p1}, Ljg/a0;-><init>(Ljava/lang/Throwable;)V

    iget-object v2, v2, Ljg/t$b;->c:LMf/q;

    iput-object p1, v0, Ljg/t$b$a;->e:Ljava/lang/Object;

    iput-object v6, v0, Ljg/t$b$a;->f:Ljava/lang/Object;

    iput v4, v0, Ljg/t$b$a;->c:I

    invoke-static {p2, v2, p1, v0}, Ljg/t;->a(Ljg/j;LMf/q;Ljava/lang/Throwable;Lyf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_5
    throw p1
.end method
