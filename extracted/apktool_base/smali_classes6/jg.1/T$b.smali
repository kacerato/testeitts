.class public final Ljg/T$b;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2"
    f = "SharingStarted.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/T;->a(Ljg/U;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Ljg/M;",
        "Lyf/f<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lyf/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Ljg/T$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 1
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

    new-instance v0, Ljg/T$b;

    invoke-direct {v0, p2}, Ljg/T$b;-><init>(Lyf/f;)V

    iput-object p1, v0, Ljg/T$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljg/M;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Ljg/T$b;->z(Ljg/M;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    iget v0, p0, Ljg/T$b;->b:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Ljg/T$b;->c:Ljava/lang/Object;

    check-cast p1, Ljg/M;

    sget-object v0, Ljg/M;->START:Ljg/M;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, LBf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z(Ljg/M;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljg/M;
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
            "Ljg/M;",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljg/T$b;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Ljg/T$b;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Ljg/T$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
