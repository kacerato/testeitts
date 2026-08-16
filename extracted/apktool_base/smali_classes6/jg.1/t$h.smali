.class public final Ljg/t$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/t;->h(Ljg/i;LMf/q;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljg/j;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n*L\n1#1,222:1\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n*L\n1#1,222:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljg/j<",
            "-TR;>;TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/q;Ljg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/q<",
            "-",
            "Ljg/j<",
            "-TR;>;-TT;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljg/j<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/t$h;->b:LMf/q;

    iput-object p2, p0, Ljg/t$h;->c:Ljg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, Ljg/t$h$a;

    invoke-direct {v0, p0, p2}, Ljg/t$h$a;-><init>(Ljg/t$h;Lyf/f;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    iget-object v0, p0, Ljg/t$h;->b:LMf/q;

    iget-object v1, p0, Ljg/t$h;->c:Ljg/j;

    invoke-interface {v0, v1, p1, p2}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ljg/t$h$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/t$h$a;

    iget v1, v0, Ljg/t$h$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/t$h$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/t$h$a;

    invoke-direct {v0, p0, p2}, Ljg/t$h$a;-><init>(Ljg/t$h;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/t$h$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/t$h$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Ljg/t$h;->b:LMf/q;

    iget-object v2, p0, Ljg/t$h;->c:Ljg/j;

    iput v3, v0, Ljg/t$h$a;->d:I

    invoke-interface {p2, v2, p1, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
