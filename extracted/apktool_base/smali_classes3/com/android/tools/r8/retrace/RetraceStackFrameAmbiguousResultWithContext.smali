.class public interface abstract Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResult;
.implements Lcom/android/tools/r8/retrace/RetraceResultWithContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResult<",
        "TT;>;",
        "Lcom/android/tools/r8/retrace/RetraceResultWithContext;"
    }
.end annotation


# virtual methods
.method public abstract synthetic forEachWithIndex(Ljava/util/function/BiConsumer;)V
.end method

.method public abstract synthetic getAmbiguousResult()Ljava/util/List;
.end method
