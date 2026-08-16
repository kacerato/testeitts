.class public final Lcom/android/tools/r8/internal/Vo0;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/Iterator;

.field public final synthetic b:Ljava/util/Iterator;

.field public final synthetic c:Ljava/util/function/BiFunction;


# direct methods
.method public constructor <init>(JILjava/util/Iterator;Ljava/util/Iterator;Ljava/util/function/BiFunction;)V
    .locals 0

    iput-object p4, p0, Lcom/android/tools/r8/internal/Vo0;->a:Ljava/util/Iterator;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Vo0;->b:Ljava/util/Iterator;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Vo0;->c:Ljava/util/function/BiFunction;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vo0;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vo0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vo0;->c:Ljava/util/function/BiFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vo0;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Vo0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
