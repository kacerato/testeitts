.class public final Lcom/android/tools/r8/internal/rK;
.super Lcom/android/tools/r8/internal/Vx;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lcom/android/tools/r8/internal/V60;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/rK;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/android/tools/r8/internal/rK;->c:Lcom/android/tools/r8/internal/V60;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Vx;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/V60;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2}, Lcom/android/tools/r8/internal/V60;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/rK;->b:Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rK;->c:Lcom/android/tools/r8/internal/V60;

    new-instance v2, Lcom/android/tools/r8/internal/Ar1;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/Ar1;-><init>(Lcom/android/tools/r8/internal/V60;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/rK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/rK;->c:Lcom/android/tools/r8/internal/V60;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/tools/r8/internal/BK;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/BK;-><init>(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)V

    return-object v2
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/rK;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/rK;->c:Lcom/android/tools/r8/internal/V60;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/tools/r8/internal/Ne;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Ne;-><init>(Ljava/util/Spliterator;Ljava/util/function/Predicate;)V

    return-object v2
.end method
