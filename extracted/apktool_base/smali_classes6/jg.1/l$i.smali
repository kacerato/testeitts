.class public final Ljg/l$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/l;->i([J)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljg/i<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,113:1\n176#2:114\n177#2,2:116\n179#2:119\n13607#3:115\n13608#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n176#1:115\n176#1:118\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,113:1\n176#2:114\n177#2,2:116\n179#2:119\n13607#3:115\n13608#3:118\n*S KotlinDebug\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/flow/FlowKt__BuildersKt\n*L\n176#1:115\n176#1:118\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic b:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    iput-object p1, p0, Ljg/l$i;->b:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 8
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
            "-",
            "Ljava/lang/Long;",
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

    instance-of v0, p2, Ljg/l$i$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljg/l$i$a;

    iget v1, v0, Ljg/l$i$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljg/l$i$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/l$i$a;

    invoke-direct {v0, p0, p2}, Ljg/l$i$a;-><init>(Ljg/l$i;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Ljg/l$i$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ljg/l$i$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Ljg/l$i$a;->h:I

    iget v2, v0, Ljg/l$i$a;->g:I

    iget-object v4, v0, Ljg/l$i$a;->f:Ljava/lang/Object;

    check-cast v4, [J

    iget-object v5, v0, Ljg/l$i$a;->e:Ljava/lang/Object;

    check-cast v5, Ljg/j;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object p2, v5

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Ljg/l$i;->b:[J

    array-length v2, p2

    const/4 v4, 0x0

    move-object v7, p2

    move-object p2, p1

    move p1, v2

    move v2, v4

    move-object v4, v7

    :goto_1
    if-ge v2, p1, :cond_4

    aget-wide v5, v4, v2

    invoke-static {v5, v6}, LBf/b;->g(J)Ljava/lang/Long;

    move-result-object v5

    iput-object p2, v0, Ljg/l$i$a;->e:Ljava/lang/Object;

    iput-object v4, v0, Ljg/l$i$a;->f:Ljava/lang/Object;

    iput v2, v0, Ljg/l$i$a;->g:I

    iput p1, v0, Ljg/l$i$a;->h:I

    iput v3, v0, Ljg/l$i$a;->c:I

    invoke-interface {p2, v5, v0}, Ljg/j;->emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
