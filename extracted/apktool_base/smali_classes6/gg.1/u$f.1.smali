.class public final Lgg/u$f;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x183,
        0x184,
        0x186
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "keys",
        "$this$produce",
        "keys",
        "e",
        "$this$produce",
        "keys",
        "k"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$3",
        "L$0",
        "L$1",
        "L$3"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/u;->f(Lgg/D;Lyf/j;LMf/p;)Lgg/D;
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
        "-TE;>;",
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

.field public d:Ljava/lang/Object;

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

.field public final synthetic h:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "TE;",
            "Lyf/f<",
            "-TK;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg/D;LMf/p;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/D<",
            "+TE;>;",
            "LMf/p<",
            "-TE;-",
            "Lyf/f<",
            "-TK;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Lgg/u$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/u$f;->g:Lgg/D;

    iput-object p2, p0, Lgg/u$f;->h:LMf/p;

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

    new-instance v0, Lgg/u$f;

    iget-object v1, p0, Lgg/u$f;->g:Lgg/D;

    iget-object v2, p0, Lgg/u$f;->h:LMf/p;

    invoke-direct {v0, v1, v2, p2}, Lgg/u$f;-><init>(Lgg/D;LMf/p;Lyf/f;)V

    iput-object p1, v0, Lgg/u$f;->f:Ljava/lang/Object;

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
            "-TE;>;",
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
    invoke-virtual {p0, p1, p2}, Lgg/u$f;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lgg/u$f;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lgg/u$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgg/B;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lgg/u$f;->invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;

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

    iget v1, p0, Lgg/u$f;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lgg/u$f;->d:Ljava/lang/Object;

    iget-object v5, p0, Lgg/u$f;->c:Ljava/lang/Object;

    check-cast v5, Lgg/n;

    iget-object v6, p0, Lgg/u$f;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashSet;

    iget-object v7, p0, Lgg/u$f;->f:Ljava/lang/Object;

    check-cast v7, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lgg/u$f;->d:Ljava/lang/Object;

    iget-object v5, p0, Lgg/u$f;->c:Ljava/lang/Object;

    check-cast v5, Lgg/n;

    iget-object v6, p0, Lgg/u$f;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashSet;

    iget-object v7, p0, Lgg/u$f;->f:Ljava/lang/Object;

    check-cast v7, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lgg/u$f;->c:Ljava/lang/Object;

    check-cast v1, Lgg/n;

    iget-object v5, p0, Lgg/u$f;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    iget-object v6, p0, Lgg/u$f;->f:Ljava/lang/Object;

    check-cast v6, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lgg/u$f;->f:Ljava/lang/Object;

    check-cast p1, Lgg/B;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lgg/u$f;->g:Lgg/D;

    invoke-interface {v5}, Lgg/D;->iterator()Lgg/n;

    move-result-object v5

    move-object v6, p1

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    :goto_0
    iput-object v6, p0, Lgg/u$f;->f:Ljava/lang/Object;

    iput-object v5, p0, Lgg/u$f;->b:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$f;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lgg/u$f;->d:Ljava/lang/Object;

    iput v4, p0, Lgg/u$f;->e:I

    invoke-interface {v1, p0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v7, p0, Lgg/u$f;->h:LMf/p;

    iput-object v6, p0, Lgg/u$f;->f:Ljava/lang/Object;

    iput-object v5, p0, Lgg/u$f;->b:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$f;->c:Ljava/lang/Object;

    iput-object p1, p0, Lgg/u$f;->d:Ljava/lang/Object;

    iput v3, p0, Lgg/u$f;->e:I

    invoke-interface {v7, p1, p0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_5

    return-object v0

    :cond_5
    move-object v9, v5

    move-object v5, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iput-object v7, p0, Lgg/u$f;->f:Ljava/lang/Object;

    iput-object v6, p0, Lgg/u$f;->b:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$f;->c:Ljava/lang/Object;

    iput-object p1, p0, Lgg/u$f;->d:Ljava/lang/Object;

    iput v2, p0, Lgg/u$f;->e:I

    invoke-interface {v7, v5, p0}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    return-object v0

    :cond_6
    move-object v5, v1

    move-object v1, p1

    :goto_3
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v1, v5

    :cond_7
    move-object v5, v6

    move-object v6, v7

    goto :goto_0

    :cond_8
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
