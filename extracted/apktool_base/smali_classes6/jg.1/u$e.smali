.class public final Ljg/u$e;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/r;


# annotations
.annotation runtime LBf/f;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3"
    f = "Errors.kt"
    i = {}
    l = {
        0x5f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/u;->e(Ljg/i;JLMf/p;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/r<",
        "Ljg/j<",
        "-TT;>;",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Long;",
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

.field public synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Ljava/lang/Throwable;",
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
.method public constructor <init>(JLMf/p;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LMf/p<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-",
            "Ljg/u$e;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Ljg/u$e;->e:J

    iput-object p3, p0, Ljg/u$e;->f:LMf/p;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p4}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v1, p1

    check-cast v1, Ljg/j;

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    move-object v5, p4

    check-cast v5, Lyf/f;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljg/u$e;->z(Ljg/j;Ljava/lang/Throwable;JLyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljg/u$e;->b:I

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

    iget-object p1, p0, Ljg/u$e;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-wide v3, p0, Ljg/u$e;->d:J

    iget-wide v5, p0, Ljg/u$e;->e:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Ljg/u$e;->f:LMf/p;

    iput v2, p0, Ljg/u$e;->b:I

    invoke-interface {v1, p1, p0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, LBf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljg/j;Ljava/lang/Throwable;JLyf/f;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            "J",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p1, Ljg/u$e;

    iget-wide v0, p0, Ljg/u$e;->e:J

    iget-object v2, p0, Ljg/u$e;->f:LMf/p;

    invoke-direct {p1, v0, v1, v2, p5}, Ljg/u$e;-><init>(JLMf/p;Lyf/f;)V

    iput-object p2, p1, Ljg/u$e;->c:Ljava/lang/Object;

    iput-wide p3, p1, Ljg/u$e;->d:J

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Ljg/u$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
