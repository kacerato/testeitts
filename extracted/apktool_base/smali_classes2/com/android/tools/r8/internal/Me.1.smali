.class public final Lcom/android/tools/r8/internal/Me;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# instance fields
.field public final synthetic a:Ljava/util/Spliterator;

.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Me;->a:Ljava/util/Spliterator;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Me;->b:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Me;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x106

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Me;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Me;->a:Ljava/util/Spliterator;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Me;->b:Ljava/util/function/Function;

    new-instance v2, Lcom/android/tools/r8/internal/MM0;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/MM0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Me;->a:Ljava/util/Spliterator;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Me;->b:Ljava/util/function/Function;

    new-instance v2, Lcom/android/tools/r8/internal/NM0;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/NM0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Me;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Me;->b:Ljava/util/function/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/tools/r8/internal/Me;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Me;-><init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
