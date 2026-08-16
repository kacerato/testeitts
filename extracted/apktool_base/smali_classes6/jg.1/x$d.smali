.class public final Ljg/x$d;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/q;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$onErrorReturn$2"
    f = "Migration.kt"
    i = {}
    l = {
        0x132
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/x;->u(Ljg/i;Ljava/lang/Object;LMf/l;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/q<",
        "Ljg/j<",
        "-TT;>;",
        "Ljava/lang/Throwable;",
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

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/l;Ljava/lang/Object;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;TT;",
            "Lyf/f<",
            "-",
            "Ljg/x$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/x$d;->e:LMf/l;

    iput-object p2, p0, Ljg/x$d;->f:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljg/x$d;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Ljg/x$d;->c:Ljava/lang/Object;

    check-cast p1, Ljg/j;

    iget-object v1, p0, Ljg/x$d;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v3, p0, Ljg/x$d;->e:LMf/l;

    invoke-interface {v3, v1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Ljg/x$d;->f:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Ljg/x$d;->c:Ljava/lang/Object;

    iput v2, p0, Ljg/x$d;->b:I

    invoke-interface {p1, v1, p0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_3
    throw v1
.end method

.method public bridge synthetic n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljg/j;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lyf/f;

    invoke-virtual {p0, p1, p2, p3}, Ljg/x$d;->z(Ljg/j;Ljava/lang/Throwable;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljg/j;Ljava/lang/Throwable;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
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
            "Ljg/j<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Ljg/x$d;

    iget-object v1, p0, Ljg/x$d;->e:LMf/l;

    iget-object v2, p0, Ljg/x$d;->f:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p3}, Ljg/x$d;-><init>(LMf/l;Ljava/lang/Object;Lyf/f;)V

    iput-object p1, v0, Ljg/x$d;->c:Ljava/lang/Object;

    iput-object p2, v0, Ljg/x$d;->d:Ljava/lang/Object;

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {v0, p1}, Ljg/x$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
