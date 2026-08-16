.class public final Lgg/u$M;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x1e7,
        0x1d5,
        0x1d7
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "otherIterator",
        "$this$consume$iv$iv",
        "$this$produce",
        "otherIterator",
        "$this$consume$iv$iv",
        "element1",
        "$this$produce",
        "otherIterator",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "L$0",
        "L$1",
        "L$3",
        "L$5",
        "L$0",
        "L$1",
        "L$3"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/u;->g0(Lgg/D;Lgg/D;Lyf/j;LMf/p;)Lgg/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Lgg/B<",
        "-TV;>;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,479:1\n105#2:480\n82#2,6:481\n106#2,2:487\n92#2:489\n88#2,3:490\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n*L\n468#1:480\n468#1:481,6\n468#1:487,2\n468#1:489\n468#1:490,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,479:1\n105#2:480\n82#2,6:481\n106#2,2:487\n92#2:489\n88#2,3:490\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n*L\n468#1:480\n468#1:481,6\n468#1:487,2\n468#1:489\n468#1:490,3\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lgg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/D<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic j:Lgg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic k:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "TE;TR;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg/D;Lgg/D;LMf/p;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/D<",
            "+TR;>;",
            "Lgg/D<",
            "+TE;>;",
            "LMf/p<",
            "-TE;-TR;+TV;>;",
            "Lyf/f<",
            "-",
            "Lgg/u$M;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/u$M;->i:Lgg/D;

    iput-object p2, p0, Lgg/u$M;->j:Lgg/D;

    iput-object p3, p0, Lgg/u$M;->k:LMf/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 4
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

    new-instance v0, Lgg/u$M;

    iget-object v1, p0, Lgg/u$M;->i:Lgg/D;

    iget-object v2, p0, Lgg/u$M;->j:Lgg/D;

    iget-object v3, p0, Lgg/u$M;->k:LMf/p;

    invoke-direct {v0, v1, v2, v3, p2}, Lgg/u$M;-><init>(Lgg/D;Lgg/D;LMf/p;Lyf/f;)V

    iput-object p1, v0, Lgg/u$M;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgg/B;
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
            "Lgg/B<",
            "-TV;>;",
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
    invoke-virtual {p0, p1, p2}, Lgg/u$M;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lgg/u$M;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lgg/u$M;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgg/B;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lgg/u$M;->invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lgg/u$M;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lgg/u$M;->e:Ljava/lang/Object;

    check-cast v1, Lgg/n;

    iget-object v6, p0, Lgg/u$M;->d:Ljava/lang/Object;

    check-cast v6, Lgg/D;

    iget-object v7, p0, Lgg/u$M;->c:Ljava/lang/Object;

    check-cast v7, LMf/p;

    iget-object v8, p0, Lgg/u$M;->b:Ljava/lang/Object;

    check-cast v8, Lgg/n;

    iget-object v9, p0, Lgg/u$M;->h:Ljava/lang/Object;

    check-cast v9, Lgg/B;

    :try_start_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lgg/u$M;->f:Ljava/lang/Object;

    iget-object v6, p0, Lgg/u$M;->e:Ljava/lang/Object;

    check-cast v6, Lgg/n;

    iget-object v7, p0, Lgg/u$M;->d:Ljava/lang/Object;

    check-cast v7, Lgg/D;

    iget-object v8, p0, Lgg/u$M;->c:Ljava/lang/Object;

    check-cast v8, LMf/p;

    iget-object v9, p0, Lgg/u$M;->b:Ljava/lang/Object;

    check-cast v9, Lgg/n;

    iget-object v10, p0, Lgg/u$M;->h:Ljava/lang/Object;

    check-cast v10, Lgg/B;

    :try_start_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    goto/16 :goto_2

    :catchall_1
    move-exception p1

    move-object v6, v7

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lgg/u$M;->e:Ljava/lang/Object;

    check-cast v1, Lgg/n;

    iget-object v6, p0, Lgg/u$M;->d:Ljava/lang/Object;

    check-cast v6, Lgg/D;

    iget-object v7, p0, Lgg/u$M;->c:Ljava/lang/Object;

    check-cast v7, LMf/p;

    iget-object v8, p0, Lgg/u$M;->b:Ljava/lang/Object;

    check-cast v8, Lgg/n;

    iget-object v9, p0, Lgg/u$M;->h:Ljava/lang/Object;

    check-cast v9, Lgg/B;

    :try_start_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lgg/u$M;->h:Ljava/lang/Object;

    check-cast p1, Lgg/B;

    iget-object v1, p0, Lgg/u$M;->i:Lgg/D;

    invoke-interface {v1}, Lgg/D;->iterator()Lgg/n;

    move-result-object v1

    iget-object v6, p0, Lgg/u$M;->j:Lgg/D;

    iget-object v7, p0, Lgg/u$M;->k:LMf/p;

    :try_start_3
    invoke-interface {v6}, Lgg/D;->iterator()Lgg/n;

    move-result-object v8

    move-object v9, p1

    move-object v11, v8

    move-object v8, v1

    move-object v1, v11

    :goto_0
    iput-object v9, p0, Lgg/u$M;->h:Ljava/lang/Object;

    iput-object v8, p0, Lgg/u$M;->b:Ljava/lang/Object;

    iput-object v7, p0, Lgg/u$M;->c:Ljava/lang/Object;

    iput-object v6, p0, Lgg/u$M;->d:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$M;->e:Ljava/lang/Object;

    iput-object v5, p0, Lgg/u$M;->f:Ljava/lang/Object;

    iput v4, p0, Lgg/u$M;->g:I

    invoke-interface {v1, p0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v1}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object v9, p0, Lgg/u$M;->h:Ljava/lang/Object;

    iput-object v8, p0, Lgg/u$M;->b:Ljava/lang/Object;

    iput-object v7, p0, Lgg/u$M;->c:Ljava/lang/Object;

    iput-object v6, p0, Lgg/u$M;->d:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$M;->e:Ljava/lang/Object;

    iput-object p1, p0, Lgg/u$M;->f:Ljava/lang/Object;

    iput v3, p0, Lgg/u$M;->g:I

    invoke-interface {v8, p0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v10, v0, :cond_5

    return-object v0

    :cond_5
    move-object v11, v6

    move-object v6, p1

    move-object p1, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v11

    :goto_2
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v9}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v8, v6, p1}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object v10, p0, Lgg/u$M;->h:Ljava/lang/Object;

    iput-object v9, p0, Lgg/u$M;->b:Ljava/lang/Object;

    iput-object v8, p0, Lgg/u$M;->c:Ljava/lang/Object;

    iput-object v7, p0, Lgg/u$M;->d:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$M;->e:Ljava/lang/Object;

    iput-object v5, p0, Lgg/u$M;->f:Ljava/lang/Object;

    iput v2, p0, Lgg/u$M;->g:I

    invoke-interface {v10, p1, p0}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_0

    :cond_7
    :try_start_5
    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v6, v5}, Lgg/r;->b(Lgg/D;Ljava/lang/Throwable;)V

    return-object p1

    :goto_3
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v6, p1}, Lgg/r;->b(Lgg/D;Ljava/lang/Throwable;)V

    throw v0
.end method
