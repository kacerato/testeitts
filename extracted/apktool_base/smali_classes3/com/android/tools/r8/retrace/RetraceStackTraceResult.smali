.class public interface abstract Lcom/android/tools/r8/retrace/RetraceStackTraceResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceResultWithContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceResultWithContext;"
    }
.end annotation


# virtual methods
.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResult<",
            "TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract getResult()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResult<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method
