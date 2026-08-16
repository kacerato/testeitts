.class public final Ljg/r$c;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/q;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0xdd,
        0x1aa
    }
    m = "invokeSuspend"
    n = {
        "downstream",
        "values",
        "lastValue",
        "timeoutMillis",
        "downstream",
        "values",
        "lastValue"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/r;->e(Ljg/i;LMf/l;)Ljg/i;
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
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n18#2:416\n18#2:418\n1#3:417\n55#4,8:419\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n218#1:416\n221#1:418\n228#1:419,8\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,415:1\n18#2:416\n18#2:418\n1#3:417\n55#4,8:419\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n218#1:416\n221#1:418\n228#1:419,8\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/l;Ljg/i;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-TT;",
            "Ljava/lang/Long;",
            ">;",
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-",
            "Ljg/r$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/r$c;->g:LMf/l;

    iput-object p2, p0, Ljg/r$c;->h:Ljg/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljg/r$c;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljg/r$c;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/m0$h;

    iget-object v5, p0, Ljg/r$c;->f:Ljava/lang/Object;

    check-cast v5, Lgg/D;

    iget-object v6, p0, Ljg/r$c;->e:Ljava/lang/Object;

    check-cast v6, Ljg/j;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    :cond_0
    move-object v7, v6

    move-object v6, v5

    move-object v5, v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Ljg/r$c;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/m0$g;

    iget-object v5, p0, Ljg/r$c;->b:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/m0$h;

    iget-object v6, p0, Ljg/r$c;->f:Ljava/lang/Object;

    check-cast v6, Lgg/D;

    iget-object v7, p0, Ljg/r$c;->e:Ljava/lang/Object;

    check-cast v7, Ljg/j;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Ljg/r$c;->e:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Leg/S;

    iget-object p1, p0, Ljg/r$c;->f:Ljava/lang/Object;

    check-cast p1, Ljg/j;

    new-instance v8, Ljg/r$c$c;

    iget-object v1, p0, Ljg/r$c;->h:Ljg/i;

    invoke-direct {v8, v1, v4}, Ljg/r$c$c;-><init>(Ljg/i;Lyf/f;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lgg/z;->f(Leg/S;Lyf/j;ILMf/p;ILjava/lang/Object;)Lgg/D;

    move-result-object v1

    new-instance v5, Lkotlin/jvm/internal/m0$h;

    invoke-direct {v5}, Lkotlin/jvm/internal/m0$h;-><init>()V

    move-object v7, p1

    move-object v6, v1

    :goto_0
    iget-object p1, v5, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object v1, Lkg/s;->c:Lmg/T;

    if-eq p1, v1, :cond_a

    new-instance v1, Lkotlin/jvm/internal/m0$g;

    invoke-direct {v1}, Lkotlin/jvm/internal/m0$g;-><init>()V

    iget-object p1, v5, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    if-eqz p1, :cond_7

    iget-object v8, p0, Ljg/r$c;->g:LMf/l;

    sget-object v9, Lkg/s;->a:Lmg/T;

    if-ne p1, v9, :cond_4

    move-object p1, v4

    :cond_4
    invoke-interface {v8, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    iput-wide v10, v1, Lkotlin/jvm/internal/m0$g;->b:J

    const-wide/16 v12, 0x0

    cmp-long p1, v10, v12

    if-ltz p1, :cond_8

    cmp-long p1, v10, v12

    if-nez p1, :cond_7

    iget-object p1, v5, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    if-ne p1, v9, :cond_5

    move-object p1, v4

    :cond_5
    iput-object v7, p0, Ljg/r$c;->e:Ljava/lang/Object;

    iput-object v6, p0, Ljg/r$c;->f:Ljava/lang/Object;

    iput-object v5, p0, Ljg/r$c;->b:Ljava/lang/Object;

    iput-object v1, p0, Ljg/r$c;->c:Ljava/lang/Object;

    iput v3, p0, Ljg/r$c;->d:I

    invoke-interface {v7, p1, p0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    iput-object v4, v5, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    :cond_7
    move-object p1, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Debounce timeout should not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    new-instance v7, Lpg/l;

    invoke-interface {p0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v8

    invoke-direct {v7, v8}, Lpg/l;-><init>(Lyf/j;)V

    iget-object v8, v1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    if-eqz v8, :cond_9

    iget-wide v8, p1, Lkotlin/jvm/internal/m0$g;->b:J

    new-instance p1, Ljg/r$c$a;

    invoke-direct {p1, v6, v1, v4}, Ljg/r$c$a;-><init>(Ljg/j;Lkotlin/jvm/internal/m0$h;Lyf/f;)V

    invoke-static {v7, v8, v9, p1}, Lpg/b;->a(Lpg/c;JLMf/l;)V

    :cond_9
    invoke-interface {v5}, Lgg/D;->r()Lpg/g;

    move-result-object p1

    new-instance v8, Ljg/r$c$b;

    invoke-direct {v8, v1, v6, v4}, Ljg/r$c$b;-><init>(Lkotlin/jvm/internal/m0$h;Ljg/j;Lyf/f;)V

    invoke-interface {v7, p1, v8}, Lpg/c;->d(Lpg/g;LMf/p;)V

    iput-object v6, p0, Ljg/r$c;->e:Ljava/lang/Object;

    iput-object v5, p0, Ljg/r$c;->f:Ljava/lang/Object;

    iput-object v1, p0, Ljg/r$c;->b:Ljava/lang/Object;

    iput-object v4, p0, Ljg/r$c;->c:Ljava/lang/Object;

    iput v2, p0, Ljg/r$c;->d:I

    invoke-virtual {v7, p0}, Lpg/l;->X(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_a
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Leg/S;

    check-cast p2, Ljg/j;

    check-cast p3, Lyf/f;

    invoke-virtual {p0, p1, p2, p3}, Ljg/r$c;->z(Leg/S;Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z(Leg/S;Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 3
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

    new-instance v0, Ljg/r$c;

    iget-object v1, p0, Ljg/r$c;->g:LMf/l;

    iget-object v2, p0, Ljg/r$c;->h:Ljg/i;

    invoke-direct {v0, v1, v2, p3}, Ljg/r$c;-><init>(LMf/l;Ljg/i;Lyf/f;)V

    iput-object p1, v0, Ljg/r$c;->e:Ljava/lang/Object;

    iput-object p2, v0, Ljg/r$c;->f:Ljava/lang/Object;

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {v0, p1}, Ljg/r$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
