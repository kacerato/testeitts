.class public final Lgg/u$K;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x172,
        0x173
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "index",
        "$this$produce",
        "index"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/u;->d0(Lgg/D;Lyf/j;)Lgg/D;
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
        "-",
        "Lpf/d0<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lgg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/D<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg/D;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/D<",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lgg/u$K;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/u$K;->f:Lgg/D;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 2
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

    new-instance v0, Lgg/u$K;

    iget-object v1, p0, Lgg/u$K;->f:Lgg/D;

    invoke-direct {v0, v1, p2}, Lgg/u$K;-><init>(Lgg/D;Lyf/f;)V

    iput-object p1, v0, Lgg/u$K;->e:Ljava/lang/Object;

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
            "-",
            "Lpf/d0<",
            "Ljava/lang/Object;",
            ">;>;",
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
    invoke-virtual {p0, p1, p2}, Lgg/u$K;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lgg/u$K;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lgg/u$K;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgg/B;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lgg/u$K;->invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lgg/u$K;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lgg/u$K;->c:I

    iget-object v4, p0, Lgg/u$K;->b:Ljava/lang/Object;

    check-cast v4, Lgg/n;

    iget-object v5, p0, Lgg/u$K;->e:Ljava/lang/Object;

    check-cast v5, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object p1, v5

    move-object v8, v4

    move v4, v1

    move-object v1, v8

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lgg/u$K;->c:I

    iget-object v4, p0, Lgg/u$K;->b:Ljava/lang/Object;

    check-cast v4, Lgg/n;

    iget-object v5, p0, Lgg/u$K;->e:Ljava/lang/Object;

    check-cast v5, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lgg/u$K;->e:Ljava/lang/Object;

    check-cast p1, Lgg/B;

    iget-object v1, p0, Lgg/u$K;->f:Lgg/D;

    invoke-interface {v1}, Lgg/D;->iterator()Lgg/n;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    iput-object p1, p0, Lgg/u$K;->e:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$K;->b:Ljava/lang/Object;

    iput v4, p0, Lgg/u$K;->c:I

    iput v3, p0, Lgg/u$K;->d:I

    invoke-interface {v1, p0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, v5

    move-object v5, p1

    move-object p1, v8

    move v9, v4

    move-object v4, v1

    move v1, v9

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v4}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p1

    new-instance v6, Lpf/d0;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v1, p1}, Lpf/d0;-><init>(ILjava/lang/Object;)V

    iput-object v5, p0, Lgg/u$K;->e:Ljava/lang/Object;

    iput-object v4, p0, Lgg/u$K;->b:Ljava/lang/Object;

    iput v7, p0, Lgg/u$K;->c:I

    iput v2, p0, Lgg/u$K;->d:I

    invoke-interface {v5, v6, p0}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, v4

    move-object p1, v5

    move v4, v7

    goto :goto_0

    :cond_5
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
