.class public final Lgg/u$l;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0xd3,
        0xd4,
        0xd4
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "index",
        "$this$produce",
        "e",
        "index",
        "$this$produce",
        "index"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "L$2",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/u;->p(Lgg/D;Lyf/j;LMf/q;)Lgg/D;
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
        "Ljava/lang/Object;",
        ">;",
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
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
            "Ljava/lang/Object;",
            ">;",
            "LMf/q<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "-",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lgg/u$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/u$l;->g:Lgg/D;

    iput-object p2, p0, Lgg/u$l;->h:LMf/q;

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

    new-instance v0, Lgg/u$l;

    iget-object v1, p0, Lgg/u$l;->g:Lgg/D;

    iget-object v2, p0, Lgg/u$l;->h:LMf/q;

    invoke-direct {v0, v1, v2, p2}, Lgg/u$l;-><init>(Lgg/D;LMf/q;Lyf/f;)V

    iput-object p1, v0, Lgg/u$l;->f:Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;",
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
    invoke-virtual {p0, p1, p2}, Lgg/u$l;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lgg/u$l;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lgg/u$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgg/B;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lgg/u$l;->invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lgg/u$l;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lgg/u$l;->d:I

    iget-object v6, p0, Lgg/u$l;->b:Ljava/lang/Object;

    check-cast v6, Lgg/n;

    iget-object v7, p0, Lgg/u$l;->f:Ljava/lang/Object;

    check-cast v7, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lgg/u$l;->d:I

    iget-object v6, p0, Lgg/u$l;->c:Ljava/lang/Object;

    iget-object v7, p0, Lgg/u$l;->b:Ljava/lang/Object;

    check-cast v7, Lgg/n;

    iget-object v8, p0, Lgg/u$l;->f:Ljava/lang/Object;

    check-cast v8, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    goto :goto_2

    :cond_2
    iget v1, p0, Lgg/u$l;->d:I

    iget-object v6, p0, Lgg/u$l;->b:Ljava/lang/Object;

    check-cast v6, Lgg/n;

    iget-object v7, p0, Lgg/u$l;->f:Ljava/lang/Object;

    check-cast v7, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lgg/u$l;->f:Ljava/lang/Object;

    check-cast p1, Lgg/B;

    iget-object v1, p0, Lgg/u$l;->g:Lgg/D;

    invoke-interface {v1}, Lgg/D;->iterator()Lgg/n;

    move-result-object v1

    const/4 v6, 0x0

    move-object v7, p1

    move v10, v6

    move-object v6, v1

    move v1, v10

    :goto_0
    iput-object v7, p0, Lgg/u$l;->f:Ljava/lang/Object;

    iput-object v6, p0, Lgg/u$l;->b:Ljava/lang/Object;

    iput-object v2, p0, Lgg/u$l;->c:Ljava/lang/Object;

    iput v1, p0, Lgg/u$l;->d:I

    iput v5, p0, Lgg/u$l;->e:I

    invoke-interface {v6, p0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v6}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v8, p0, Lgg/u$l;->h:LMf/q;

    add-int/lit8 v9, v1, 0x1

    invoke-static {v1}, LBf/b;->f(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v7, p0, Lgg/u$l;->f:Ljava/lang/Object;

    iput-object v6, p0, Lgg/u$l;->b:Ljava/lang/Object;

    iput-object p1, p0, Lgg/u$l;->c:Ljava/lang/Object;

    iput v9, p0, Lgg/u$l;->d:I

    iput v4, p0, Lgg/u$l;->e:I

    invoke-interface {v8, v1, p1, p0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v8, v7

    move-object v7, p1

    move-object p1, v1

    move v1, v9

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v8, p0, Lgg/u$l;->f:Ljava/lang/Object;

    iput-object v6, p0, Lgg/u$l;->b:Ljava/lang/Object;

    iput-object v2, p0, Lgg/u$l;->c:Ljava/lang/Object;

    iput v1, p0, Lgg/u$l;->d:I

    iput v3, p0, Lgg/u$l;->e:I

    invoke-interface {v8, v7, p0}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v7, v8

    goto :goto_0

    :cond_7
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
