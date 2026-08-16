.class public final Ljg/T$a;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/q;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1"
    f = "SharingStarted.kt"
    i = {
        0x1,
        0x2,
        0x3
    }
    l = {
        0xb2,
        0xb4,
        0xb6,
        0xb7,
        0xb9
    }
    m = "invokeSuspend"
    n = {
        "$this$transformLatest",
        "$this$transformLatest",
        "$this$transformLatest"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
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
        "LMf/q<",
        "Ljg/j<",
        "-",
        "Ljg/M;",
        ">;",
        "Ljava/lang/Integer;",
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

.field public synthetic d:I

.field public final synthetic e:Ljg/T;


# direct methods
.method public constructor <init>(Ljg/T;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/T;",
            "Lyf/f<",
            "-",
            "Ljg/T$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/T$a;->e:Ljg/T;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljg/T$a;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Ljg/T$a;->c:Ljava/lang/Object;

    check-cast v1, Ljg/j;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Ljg/T$a;->c:Ljava/lang/Object;

    check-cast v1, Ljg/j;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ljg/T$a;->c:Ljava/lang/Object;

    check-cast v1, Ljg/j;

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Ljg/T$a;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljg/j;

    iget p1, p0, Ljg/T$a;->d:I

    if-lez p1, :cond_6

    sget-object p1, Ljg/M;->START:Ljg/M;

    iput v6, p0, Ljg/T$a;->b:I

    invoke-interface {v1, p1, p0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_6
    iget-object p1, p0, Ljg/T$a;->e:Ljg/T;

    invoke-static {p1}, Ljg/T;->c(Ljg/T;)J

    move-result-wide v6

    iput-object v1, p0, Ljg/T$a;->c:Ljava/lang/Object;

    iput v5, p0, Ljg/T$a;->b:I

    invoke-static {v6, v7, p0}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    iget-object p1, p0, Ljg/T$a;->e:Ljg/T;

    invoke-static {p1}, Ljg/T;->b(Ljg/T;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_9

    sget-object p1, Ljg/M;->STOP:Ljg/M;

    iput-object v1, p0, Ljg/T$a;->c:Ljava/lang/Object;

    iput v4, p0, Ljg/T$a;->b:I

    invoke-interface {v1, p1, p0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    iget-object p1, p0, Ljg/T$a;->e:Ljg/T;

    invoke-static {p1}, Ljg/T;->b(Ljg/T;)J

    move-result-wide v4

    iput-object v1, p0, Ljg/T$a;->c:Ljava/lang/Object;

    iput v3, p0, Ljg/T$a;->b:I

    invoke-static {v4, v5, p0}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    sget-object p1, Ljg/M;->STOP_AND_RESET_REPLAY_CACHE:Ljg/M;

    const/4 v3, 0x0

    iput-object v3, p0, Ljg/T$a;->c:Ljava/lang/Object;

    iput v2, p0, Ljg/T$a;->b:I

    invoke-interface {v1, p1, p0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_4
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljg/j;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lyf/f;

    invoke-virtual {p0, p1, p2, p3}, Ljg/T$a;->z(Ljg/j;ILyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljg/j;ILyf/f;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljg/j;
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
            "-",
            "Ljg/M;",
            ">;I",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Ljg/T$a;

    iget-object v1, p0, Ljg/T$a;->e:Ljg/T;

    invoke-direct {v0, v1, p3}, Ljg/T$a;-><init>(Ljg/T;Lyf/f;)V

    iput-object p1, v0, Ljg/T$a;->c:Ljava/lang/Object;

    iput p2, v0, Ljg/T$a;->d:I

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {v0, p1}, Ljg/T$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
