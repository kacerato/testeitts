.class public final Ljg/r$e;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/q;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2"
    f = "Delay.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1a7
    }
    m = "invokeSuspend"
    n = {
        "downstream",
        "values",
        "lastValue",
        "ticker"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/r;->h(Ljg/i;J)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/q<",
        "Leg/S;",
        "Ljg/j<",
        "-TT;>;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n55#2,8:416\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n*L\n284#1:416,8\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n55#2,8:416\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$sample$2\n*L\n284#1:416,8\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:J

.field public final synthetic h:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjg/i;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-",
            "Ljg/r$e;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Ljg/r$e;->g:J

    iput-object p3, p0, Ljg/r$e;->h:Ljg/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljg/r$e;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljg/r$e;->c:Ljava/lang/Object;

    check-cast v1, Lgg/D;

    iget-object v4, p0, Ljg/r$e;->b:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/m0$h;

    iget-object v5, p0, Ljg/r$e;->f:Ljava/lang/Object;

    check-cast v5, Lgg/D;

    iget-object v6, p0, Ljg/r$e;->e:Ljava/lang/Object;

    check-cast v6, Ljg/j;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Ljg/r$e;->e:Ljava/lang/Object;

    check-cast p1, Leg/S;

    iget-object v1, p0, Ljg/r$e;->f:Ljava/lang/Object;

    check-cast v1, Ljg/j;

    new-instance v7, Ljg/r$e$c;

    iget-object v4, p0, Ljg/r$e;->h:Ljg/i;

    invoke-direct {v7, v4, v3}, Ljg/r$e$c;-><init>(Ljg/i;Lyf/f;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lgg/z;->f(Leg/S;Lyf/j;ILMf/p;ILjava/lang/Object;)Lgg/D;

    move-result-object v11

    new-instance v12, Lkotlin/jvm/internal/m0$h;

    invoke-direct {v12}, Lkotlin/jvm/internal/m0$h;-><init>()V

    iget-wide v5, p0, Ljg/r$e;->g:J

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v4 .. v10}, Ljg/k;->z0(Leg/S;JJILjava/lang/Object;)Lgg/D;

    move-result-object p1

    move-object v6, v1

    move-object v5, v11

    move-object v4, v12

    move-object v1, p1

    :cond_2
    :goto_0
    iget-object p1, v4, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object v7, Lkg/s;->c:Lmg/T;

    if-eq p1, v7, :cond_3

    new-instance p1, Lpg/l;

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v7

    invoke-direct {p1, v7}, Lpg/l;-><init>(Lyf/j;)V

    invoke-interface {v5}, Lgg/D;->r()Lpg/g;

    move-result-object v7

    new-instance v8, Ljg/r$e$a;

    invoke-direct {v8, v4, v1, v3}, Ljg/r$e$a;-><init>(Lkotlin/jvm/internal/m0$h;Lgg/D;Lyf/f;)V

    invoke-interface {p1, v7, v8}, Lpg/c;->d(Lpg/g;LMf/p;)V

    invoke-interface {v1}, Lgg/D;->I()Lpg/g;

    move-result-object v7

    new-instance v8, Ljg/r$e$b;

    invoke-direct {v8, v4, v6, v3}, Ljg/r$e$b;-><init>(Lkotlin/jvm/internal/m0$h;Ljg/j;Lyf/f;)V

    invoke-interface {p1, v7, v8}, Lpg/c;->d(Lpg/g;LMf/p;)V

    iput-object v6, p0, Ljg/r$e;->e:Ljava/lang/Object;

    iput-object v5, p0, Ljg/r$e;->f:Ljava/lang/Object;

    iput-object v4, p0, Ljg/r$e;->b:Ljava/lang/Object;

    iput-object v1, p0, Ljg/r$e;->c:Ljava/lang/Object;

    iput v2, p0, Ljg/r$e;->d:I

    invoke-virtual {p1, p0}, Lpg/l;->X(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_3
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Leg/S;

    check-cast p2, Ljg/j;

    check-cast p3, Lyf/f;

    invoke-virtual {p0, p1, p2, p3}, Ljg/r$e;->z(Leg/S;Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z(Leg/S;Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p1    # Leg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/S;",
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

    new-instance v0, Ljg/r$e;

    iget-wide v1, p0, Ljg/r$e;->g:J

    iget-object v3, p0, Ljg/r$e;->h:Ljg/i;

    invoke-direct {v0, v1, v2, v3, p3}, Ljg/r$e;-><init>(JLjg/i;Lyf/f;)V

    iput-object p1, v0, Ljg/r$e;->e:Ljava/lang/Object;

    iput-object p2, v0, Ljg/r$e;->f:Ljava/lang/Object;

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {v0, p1}, Ljg/r$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
