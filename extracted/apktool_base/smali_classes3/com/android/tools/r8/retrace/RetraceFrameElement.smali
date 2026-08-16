.class public interface abstract Lcom/android/tools/r8/retrace/RetraceFrameElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceElement<",
        "Lcom/android/tools/r8/retrace/RetraceFrameResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/retrace/RetracedSingleFrame;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forEachRewritten(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/retrace/RetracedSingleFrame;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getClassElement()Lcom/android/tools/r8/retrace/RetraceClassElement;
.end method

.method public abstract getOuterFrames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/r8/retrace/RetracedMethodReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
.end method

.method public abstract getRetraceStackTraceContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
.end method

.method public abstract getSourceFile(Lcom/android/tools/r8/retrace/RetracedClassMemberReference;)Lcom/android/tools/r8/retrace/RetracedSourceFile;
.end method

.method public abstract getTopFrame()Lcom/android/tools/r8/retrace/RetracedMethodReference;
.end method

.method public abstract isUnknown()Z
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/tools/r8/retrace/RetracedSingleFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract streamRewritten(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/tools/r8/retrace/RetracedSingleFrame;",
            ">;"
        }
    .end annotation
.end method
