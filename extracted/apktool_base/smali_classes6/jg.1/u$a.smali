.class public final Ljg/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/u;->a(Ljg/i;LMf/q;)Ljg/i;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,113:1\n59#2,3:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n1#1,113:1\n59#2,3:114\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljg/i;

.field public final synthetic c:LMf/q;


# direct methods
.method public constructor <init>(Ljg/i;LMf/q;)V
    .locals 0

    iput-object p1, p0, Ljg/u$a;->b:Ljg/i;

    iput-object p2, p0, Ljg/u$a;->c:LMf/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Ljg/u$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/u$a$a;

    iget v1, v0, Ljg/u$a$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/u$a$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/u$a$a;

    invoke-direct {v0, p0, p2}, Ljg/u$a$a;-><init>(Ljg/u$a;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/u$a$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/u$a$a;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Ljg/u$a$a;->f:Ljava/lang/Object;

    check-cast p1, Ljg/j;

    iget-object v2, v0, Ljg/u$a$a;->e:Ljava/lang/Object;

    check-cast v2, Ljg/u$a;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Ljg/u$a;->b:Ljg/i;

    iput-object p0, v0, Ljg/u$a$a;->e:Ljava/lang/Object;

    iput-object p1, v0, Ljg/u$a$a;->f:Ljava/lang/Object;

    iput v4, v0, Ljg/u$a$a;->c:I

    invoke-static {p2, p1, v0}, Ljg/k;->v(Ljg/i;Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_5

    iget-object v2, v2, Ljg/u$a;->c:LMf/q;

    const/4 v4, 0x0

    iput-object v4, v0, Ljg/u$a$a;->e:Ljava/lang/Object;

    iput-object v4, v0, Ljg/u$a$a;->f:Ljava/lang/Object;

    iput v3, v0, Ljg/u$a$a;->c:I

    const/4 v3, 0x6

    invoke-static {v3}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {v2, p1, p2, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p2}, Lkotlin/jvm/internal/J;->e(I)V

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
