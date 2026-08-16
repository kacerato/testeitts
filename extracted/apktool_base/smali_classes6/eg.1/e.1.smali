.class public final Leg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/e$a;,
        Leg/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n314#2,9:128\n323#2,2:141\n13#3:137\n19#3:140\n13579#4,2:138\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n*L\n71#1:128,9\n71#1:141,2\n78#1:137\n90#1:140\n83#1:138,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n314#2,9:128\n323#2,2:141\n13#3:137\n19#3:140\n13579#4,2:138\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n*L\n71#1:128,9\n71#1:141,2\n78#1:137\n90#1:140\n83#1:138,2\n*E\n"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:[Leg/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Leg/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile notCompletedCount:I
    .annotation runtime LLf/x;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Leg/e;

    const-string v1, "notCompletedCount"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Leg/e;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>([Leg/Z;)V
    .locals 0
    .param p1    # [Leg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Leg/Z<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leg/e;->a:[Leg/Z;

    array-length p1, p1

    iput p1, p0, Leg/e;->notCompletedCount:I

    return-void
.end method

.method public static final synthetic a(Leg/e;)[Leg/Z;
    .locals 0

    iget-object p0, p0, Leg/e;->a:[Leg/Z;

    return-object p0
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Leg/e;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final c(Lyf/f;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Leg/q;

    invoke-static {p1}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Leg/q;-><init>(Lyf/f;I)V

    invoke-virtual {v0}, Leg/q;->O()V

    invoke-static {p0}, Leg/e;->a(Leg/e;)[Leg/Z;

    move-result-object v1

    array-length v1, v1

    new-array v2, v1, [Leg/e$a;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-static {p0}, Leg/e;->a(Leg/e;)[Leg/Z;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-interface {v5}, Leg/K0;->start()Z

    new-instance v6, Leg/e$a;

    invoke-direct {v6, p0, v0}, Leg/e$a;-><init>(Leg/e;Leg/p;)V

    invoke-interface {v5, v6}, Leg/K0;->w(LMf/l;)Leg/m0;

    move-result-object v5

    invoke-virtual {v6, v5}, Leg/e$a;->e0(Leg/m0;)V

    sget-object v5, Lnf/P0;->a:Lnf/P0;

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Leg/e$b;

    invoke-direct {v4, p0, v2}, Leg/e$b;-><init>(Leg/e;[Leg/e$a;)V

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v5, v2, v3

    invoke-virtual {v5, v4}, Leg/e$a;->d0(Leg/e$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Leg/p;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Leg/e$b;->z()V

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Leg/p;->K(LMf/l;)V

    :goto_2
    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, LBf/h;->c(Lyf/f;)V

    :cond_3
    return-object v0
.end method
