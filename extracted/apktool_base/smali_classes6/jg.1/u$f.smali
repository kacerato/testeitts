.class public final Ljg/u$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/u;->g(Ljg/i;LMf/r;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljg/i<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,113:1\n133#2,15:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,113:1\n133#2,15:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljg/i;

.field public final synthetic c:LMf/r;


# direct methods
.method public constructor <init>(Ljg/i;LMf/r;)V
    .locals 0

    iput-object p1, p0, Ljg/u$f;->b:Ljg/i;

    iput-object p2, p0, Ljg/u$f;->c:LMf/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    instance-of v0, p2, Ljg/u$f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/u$f$a;

    iget v1, v0, Ljg/u$f$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/u$f$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/u$f$a;

    invoke-direct {v0, p0, p2}, Ljg/u$f$a;-><init>(Ljg/u$f;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/u$f$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/u$f$a;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v5, v0, Ljg/u$f$a;->h:J

    iget-object p1, v0, Ljg/u$f$a;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v2, v0, Ljg/u$f$a;->f:Ljava/lang/Object;

    check-cast v2, Ljg/j;

    iget-object v7, v0, Ljg/u$f$a;->e:Ljava/lang/Object;

    check-cast v7, Ljg/u$f;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Ljg/u$f$a;->i:I

    iget-wide v5, v0, Ljg/u$f$a;->h:J

    iget-object v2, v0, Ljg/u$f$a;->f:Ljava/lang/Object;

    check-cast v2, Ljg/j;

    iget-object v7, v0, Ljg/u$f$a;->e:Ljava/lang/Object;

    check-cast v7, Ljg/u$f;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    move-object p2, p0

    :goto_1
    iget-object v2, p2, Ljg/u$f;->b:Ljg/i;

    iput-object p2, v0, Ljg/u$f$a;->e:Ljava/lang/Object;

    iput-object p1, v0, Ljg/u$f$a;->f:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v0, Ljg/u$f$a;->g:Ljava/lang/Object;

    iput-wide v5, v0, Ljg/u$f$a;->h:J

    const/4 v7, 0x0

    iput v7, v0, Ljg/u$f$a;->i:I

    iput v4, v0, Ljg/u$f$a;->c:I

    invoke-static {v2, p1, v0}, Ljg/k;->v(Ljg/i;Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v2

    move-object v2, p1

    move p1, v7

    move-object v7, p2

    move-object p2, v10

    :goto_2
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_6

    iget-object p1, v7, Ljg/u$f;->c:LMf/r;

    invoke-static {v5, v6}, LBf/b;->g(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v7, v0, Ljg/u$f$a;->e:Ljava/lang/Object;

    iput-object v2, v0, Ljg/u$f$a;->f:Ljava/lang/Object;

    iput-object p2, v0, Ljg/u$f$a;->g:Ljava/lang/Object;

    iput-wide v5, v0, Ljg/u$f$a;->h:J

    iput v3, v0, Ljg/u$f$a;->c:I

    const/4 v9, 0x6

    invoke-static {v9}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p1, v2, p2, v8, v0}, LMf/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v8, 0x7

    invoke-static {v8}, Lkotlin/jvm/internal/J;->e(I)V

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    const-wide/16 p1, 0x1

    add-long/2addr v5, p1

    move p1, v4

    :cond_6
    move-object p2, v7

    goto :goto_4

    :cond_7
    throw p1

    :goto_4
    if-nez p1, :cond_8

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_8
    move-object p1, v2

    goto :goto_1
.end method
