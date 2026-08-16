.class public final Lcom/android/tools/r8/internal/Wj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;


# instance fields
.field public final a:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Wj0;->a:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final forEachWithIndex(Ljava/util/function/BiConsumer;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/retrace/RetraceStackFrameResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(I)Lcom/android/tools/r8/retrace/RetraceStackFrameResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/retrace/RetraceStackFrameResult;

    return-object p1
.end method

.method public final getAmbiguousResult()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj0;->a:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-object v0
.end method

.method public final isAmbiguous()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wj0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
