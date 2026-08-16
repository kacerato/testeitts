.class public final Lgg/u$h;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x3,
        0x4
    }
    l = {
        0xb5,
        0xb6,
        0xb7,
        0xbb,
        0xbc
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$produce",
        "e",
        "$this$produce",
        "$this$produce",
        "$this$produce"
    }
    s = {
        "L$0",
        "L$0",
        "L$2",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/u;->j(Lgg/D;Lyf/j;LMf/p;)Lgg/D;
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

.field public final synthetic g:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
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
.method public constructor <init>(Lgg/D;LMf/p;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/D<",
            "Ljava/lang/Object;",
            ">;",
            "LMf/p<",
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
            "Lgg/u$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/u$h;->f:Lgg/D;

    iput-object p2, p0, Lgg/u$h;->g:LMf/p;

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

    new-instance v0, Lgg/u$h;

    iget-object v1, p0, Lgg/u$h;->f:Lgg/D;

    iget-object v2, p0, Lgg/u$h;->g:LMf/p;

    invoke-direct {v0, v1, v2, p2}, Lgg/u$h;-><init>(Lgg/D;LMf/p;Lyf/f;)V

    iput-object p1, v0, Lgg/u$h;->e:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lgg/u$h;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lgg/u$h;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lgg/u$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgg/B;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lgg/u$h;->invoke(Lgg/B;Lyf/f;)Ljava/lang/Object;

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

    iget v1, p0, Lgg/u$h;->d:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lgg/u$h;->b:Ljava/lang/Object;

    check-cast v1, Lgg/n;

    iget-object v4, p0, Lgg/u$h;->e:Ljava/lang/Object;

    check-cast v4, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v1

    move-object v1, v4

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lgg/u$h;->b:Ljava/lang/Object;

    check-cast v1, Lgg/n;

    iget-object v4, p0, Lgg/u$h;->e:Ljava/lang/Object;

    check-cast v4, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v1, p0, Lgg/u$h;->e:Ljava/lang/Object;

    check-cast v1, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lgg/u$h;->c:Ljava/lang/Object;

    iget-object v8, p0, Lgg/u$h;->b:Ljava/lang/Object;

    check-cast v8, Lgg/n;

    iget-object v9, p0, Lgg/u$h;->e:Ljava/lang/Object;

    check-cast v9, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object v10, v8

    move-object v8, v1

    :goto_0
    move-object v1, v10

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lgg/u$h;->b:Ljava/lang/Object;

    check-cast v1, Lgg/n;

    iget-object v8, p0, Lgg/u$h;->e:Ljava/lang/Object;

    check-cast v8, Lgg/B;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    :cond_6
    move-object v10, v8

    move-object v8, v1

    move-object v1, v10

    goto :goto_2

    :cond_7
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lgg/u$h;->e:Ljava/lang/Object;

    check-cast p1, Lgg/B;

    iget-object v1, p0, Lgg/u$h;->f:Lgg/D;

    invoke-interface {v1}, Lgg/D;->iterator()Lgg/n;

    move-result-object v1

    move-object v8, p1

    :goto_1
    iput-object v8, p0, Lgg/u$h;->e:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$h;->b:Ljava/lang/Object;

    iput-object v7, p0, Lgg/u$h;->c:Ljava/lang/Object;

    iput v6, p0, Lgg/u$h;->d:I

    invoke-interface {v1, p0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v8}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v9, p0, Lgg/u$h;->g:LMf/p;

    iput-object v1, p0, Lgg/u$h;->e:Ljava/lang/Object;

    iput-object v8, p0, Lgg/u$h;->b:Ljava/lang/Object;

    iput-object p1, p0, Lgg/u$h;->c:Ljava/lang/Object;

    iput v5, p0, Lgg/u$h;->d:I

    invoke-interface {v9, p1, p0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_8

    return-object v0

    :cond_8
    move-object v10, v8

    move-object v8, p1

    move-object p1, v9

    move-object v9, v1

    goto :goto_0

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    iput-object v9, p0, Lgg/u$h;->e:Ljava/lang/Object;

    iput-object v7, p0, Lgg/u$h;->b:Ljava/lang/Object;

    iput-object v7, p0, Lgg/u$h;->c:Ljava/lang/Object;

    iput v4, p0, Lgg/u$h;->d:I

    invoke-interface {v9, v8, p0}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v1, v9

    goto :goto_4

    :cond_a
    move-object v8, v9

    goto :goto_1

    :cond_b
    :goto_4
    iget-object p1, p0, Lgg/u$h;->f:Lgg/D;

    invoke-interface {p1}, Lgg/D;->iterator()Lgg/n;

    move-result-object p1

    :goto_5
    iput-object v1, p0, Lgg/u$h;->e:Ljava/lang/Object;

    iput-object p1, p0, Lgg/u$h;->b:Ljava/lang/Object;

    iput v3, p0, Lgg/u$h;->d:I

    invoke-interface {p1, p0}, Lgg/n;->a(Lyf/f;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_c

    return-object v0

    :cond_c
    move-object v10, v1

    move-object v1, p1

    move-object p1, v4

    move-object v4, v10

    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v1}, Lgg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object v4, p0, Lgg/u$h;->e:Ljava/lang/Object;

    iput-object v1, p0, Lgg/u$h;->b:Ljava/lang/Object;

    iput v2, p0, Lgg/u$h;->d:I

    invoke-interface {v4, p1, p0}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_d
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
