.class public interface abstract Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResult<",
            "TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract forEachWithIndex(Ljava/util/function/BiConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResult<",
            "TT;>;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract get(I)Lcom/android/tools/r8/retrace/RetraceStackFrameResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResult<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getAmbiguousResult()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResult<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract isAmbiguous()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract size()I
.end method
