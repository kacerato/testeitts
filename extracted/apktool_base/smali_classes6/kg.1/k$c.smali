.class public final Lkg/k$c;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1"
    f = "Combine.kt"
    i = {
        0x0
    }
    l = {
        0x7e
    }
    m = "invokeSuspend"
    n = {
        "second"
    }
    s = {
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/k;->b(Ljg/i;Ljg/i;LMf/q;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Leg/S;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TT2;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TT1;>;"
        }
    .end annotation
.end field

.field public final synthetic g:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "TT1;TT2;",
            "Lyf/f<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljg/j;Ljg/i;Ljg/i;LMf/q;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TR;>;",
            "Ljg/i<",
            "+TT2;>;",
            "Ljg/i<",
            "+TT1;>;",
            "LMf/q<",
            "-TT1;-TT2;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lkg/k$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkg/k$c;->d:Ljg/j;

    iput-object p2, p0, Lkg/k$c;->e:Ljg/i;

    iput-object p3, p0, Lkg/k$c;->f:Ljg/i;

    iput-object p4, p0, Lkg/k$c;->g:LMf/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "*>;)",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lkg/k$c;

    iget-object v1, p0, Lkg/k$c;->d:Ljg/j;

    iget-object v2, p0, Lkg/k$c;->e:Ljg/i;

    iget-object v3, p0, Lkg/k$c;->f:Ljg/i;

    iget-object v4, p0, Lkg/k$c;->g:LMf/q;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkg/k$c;-><init>(Ljg/j;Ljg/i;Ljg/i;LMf/q;Lyf/f;)V

    iput-object p1, v6, Lkg/k$c;->c:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Leg/S;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/S;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/k$c;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lkg/k$c;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lkg/k$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Leg/S;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lkg/k$c;->invoke(Leg/S;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v8, p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, v8, Lkg/k$c;->b:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v9, :cond_0

    iget-object v0, v8, Lkg/k$c;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lgg/D;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object v1, v8, Lkg/k$c;->c:Ljava/lang/Object;

    check-cast v1, Leg/S;

    new-instance v5, Lkg/k$c$c;

    iget-object v2, v8, Lkg/k$c;->e:Ljg/i;

    invoke-direct {v5, v2, v10}, Lkg/k$c$c;-><init>(Ljg/i;Lyf/f;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lgg/z;->f(Leg/S;Lyf/j;ILMf/p;ILjava/lang/Object;)Lgg/D;

    move-result-object v7

    invoke-static {v10, v9, v10}, Leg/N0;->c(Leg/K0;ILjava/lang/Object;)Leg/B;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v7

    check-cast v3, Lgg/E;

    new-instance v4, Lkg/k$c$a;

    iget-object v5, v8, Lkg/k$c;->d:Ljg/j;

    invoke-direct {v4, v2, v5}, Lkg/k$c$a;-><init>(Leg/B;Ljg/j;)V

    invoke-interface {v3, v4}, Lgg/E;->F(LMf/l;)V

    :try_start_1
    invoke-interface {v1}, Leg/S;->getCoroutineContext()Lyf/j;

    move-result-object v13

    invoke-static {v13}, Lmg/Z;->b(Lyf/j;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1}, Leg/S;->getCoroutineContext()Lyf/j;

    move-result-object v1

    invoke-interface {v1, v2}, Lyf/j;->plus(Lyf/j;)Lyf/j;

    move-result-object v1

    sget-object v2, Lnf/P0;->a:Lnf/P0;

    new-instance v4, Lkg/k$c$b;

    iget-object v12, v8, Lkg/k$c;->f:Ljg/i;

    iget-object v3, v8, Lkg/k$c;->d:Ljg/j;

    iget-object v5, v8, Lkg/k$c;->g:LMf/q;

    const/16 v18, 0x0

    move-object v11, v4

    move-object v15, v7

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-direct/range {v11 .. v18}, Lkg/k$c$b;-><init>(Ljg/i;Lyf/j;Ljava/lang/Object;Lgg/D;Ljg/j;LMf/q;Lyf/f;)V

    iput-object v7, v8, Lkg/k$c;->c:Ljava/lang/Object;

    iput v9, v8, Lkg/k$c;->b:I
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v12, v7

    move-object v7, v11

    :try_start_2
    invoke-static/range {v1 .. v7}, Lkg/e;->d(Lyf/j;Ljava/lang/Object;Ljava/lang/Object;LMf/p;Lyf/f;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v1, v12

    :goto_0
    invoke-static {v1, v10, v9, v10}, Lgg/D$a;->b(Lgg/D;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_1
    move-object v1, v12

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_2
    move-object v1, v12

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v12, v7

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v12, v7

    goto :goto_2

    :goto_3
    :try_start_3
    iget-object v2, v8, Lkg/k$c;->d:Ljg/j;

    invoke-static {v0, v2}, Lkg/o;->b(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljg/j;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_4
    sget-object v0, Lnf/P0;->a:Lnf/P0;

    return-object v0

    :goto_5
    invoke-static {v1, v10, v9, v10}, Lgg/D$a;->b(Lgg/D;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw v0
.end method
