.class public final Ljg/A$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/A$f;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;
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
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n54#2:223\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n1#1,222:1\n54#2:223\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljg/j;

.field public final synthetic c:LMf/p;


# direct methods
.method public constructor <init>(Ljg/j;LMf/p;)V
    .locals 0

    iput-object p1, p0, Ljg/A$f$b;->b:Ljg/j;

    iput-object p2, p0, Ljg/A$f$b;->c:LMf/p;

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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance v0, Ljg/A$f$b$a;

    invoke-direct {v0, p0, p2}, Ljg/A$f$b$a;-><init>(Ljg/A$f$b;Lyf/f;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    iget-object v0, p0, Ljg/A$f$b;->b:Ljg/j;

    iget-object v1, p0, Ljg/A$f$b;->c:LMf/p;

    invoke-interface {v1, p1, p2}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {v0, p1, p2}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p2, Ljg/A$f$b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/A$f$b$a;

    iget v1, v0, Ljg/A$f$b$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/A$f$b$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/A$f$b$a;

    invoke-direct {v0, p0, p2}, Ljg/A$f$b$a;-><init>(Ljg/A$f$b;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/A$f$b$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/A$f$b$a;->c:I

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
    iget-object p1, v0, Ljg/A$f$b$a;->e:Ljava/lang/Object;

    check-cast p1, Ljg/j;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Ljg/A$f$b;->b:Ljg/j;

    iget-object v2, p0, Ljg/A$f$b;->c:LMf/p;

    iput-object p2, v0, Ljg/A$f$b$a;->e:Ljava/lang/Object;

    iput v4, v0, Ljg/A$f$b$a;->c:I

    invoke-interface {v2, p1, v0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_1
    const/4 v2, 0x0

    iput-object v2, v0, Ljg/A$f$b$a;->e:Ljava/lang/Object;

    iput v3, v0, Ljg/A$f$b$a;->c:I

    invoke-interface {p1, p2, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
