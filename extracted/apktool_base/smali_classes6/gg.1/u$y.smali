.class public final Lgg/u$y;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x158,
        0x159,
        0x159
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "index",
        "$this$produce",
        "index",
        "$this$produce",
        "index"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/u;->G(Lgg/D;Lyf/j;LMf/q;)Lgg/D;
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
        "-TR;>;",
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

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lgg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/D<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic h:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljava/lang/Integer;",
            "TE;",
            "Lyf/f<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg/D;LMf/q;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/D<",
            "+TE;>;",
            "LMf/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lgg/u$y;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/u$y;->g:Lgg/D;

    iput-object p2, p0, Lgg/u$y;->h:LMf/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 3
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

    new-instance v0, Lgg/u$y;

    iget-object v1, p0, Lgg/u$y;->g:Lgg/D;

    iget-object v2, p0, Lgg/u$y;->h:LMf/q;

    invoke-direct {v0, v1, v2, p2}, Lgg/u$y;-><init>(Lgg/D;LMf/q;Lyf/f;)V

    iput-object p1, v0, Lgg/u$y;->f:Ljava/lang/Object;

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
            "-TR;>;",
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
    invoke-virtual {p0, p1, p2}, Lgg/u$y;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lgg/u$y;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lgg/u$y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgg/B;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lgg/u$y;->invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;

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

    iget v1, p0, Lgg/u$y;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lgg/u$y;->d:I

    iget-object v5, p0, Lgg/u$y;->b:Ljava/lang/Object;

    check-cast v5, Lgg/n;

    iget-object v6, p0, Lgg/u$y;->f:Ljava/lang/Object;

    check-cast v6, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lgg/u$y;->d:I

    iget-object v5, p0, Lgg/u$y;->c:Ljava/lang/Object;

    check-cast v5, Lgg/B;

    iget-object v6, p0, Lgg/u$y;->b:Ljava/lang/Object;

    check-cast v6, Lgg/n;

    iget-object v7, p0, Lgg/u$y;->f:Ljava/lang/Object;

    check-cast v7, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget v1, p0, Lgg/u$y;->d:I

    iget-object v5, p0, Lgg/u$y;->b:Ljava/lang/Object;

    check-cast v5, Lgg/n;

    iget-object v6, p0, Lgg/u$y;->f:Ljava/lang/Object;

    check-cast v6, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lgg/u$y;->f:Ljava/lang/Object;

    check-cast p1, Lgg/B;

    iget-object v1, p0, Lgg/u$y;->g:Lgg/D;

    invoke-interface {v1}, Lgg/D;->iterator()Lgg/n;

    move-result-object v1

    const/4 v5, 0x0

    move v9, v5

    move-object v5, v1

    move v1, v9

    :goto_0
    iput-object p1, p0, Lgg/u$y;->f:Ljava/lang/Object;

    iput-object v5, p0, Lgg/u$y;->b:Ljava/lang/Object;

    iput v1, p0, Lgg/u$y;->d:I

    iput v4, p0, Lgg/u$y;->e:I

    invoke-interface {v5, p0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    :cond_4
    move-object v9, v6

    move-object v6, p1

    move-object p1, v9

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v5}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v7, p0, Lgg/u$y;->h:LMf/q;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v1}, LBf/b;->f(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v6, p0, Lgg/u$y;->f:Ljava/lang/Object;

    iput-object v5, p0, Lgg/u$y;->b:Ljava/lang/Object;

    iput-object v6, p0, Lgg/u$y;->c:Ljava/lang/Object;

    iput v8, p0, Lgg/u$y;->d:I

    iput v3, p0, Lgg/u$y;->e:I

    invoke-interface {v7, v1, p1, p0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v7, v6

    move v1, v8

    move-object v6, v5

    move-object v5, v7

    :goto_2
    iput-object v7, p0, Lgg/u$y;->f:Ljava/lang/Object;

    iput-object v6, p0, Lgg/u$y;->b:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, p0, Lgg/u$y;->c:Ljava/lang/Object;

    iput v1, p0, Lgg/u$y;->d:I

    iput v2, p0, Lgg/u$y;->e:I

    invoke-interface {v5, p1, p0}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v5, v6

    move-object p1, v7

    goto :goto_0

    :cond_7
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
