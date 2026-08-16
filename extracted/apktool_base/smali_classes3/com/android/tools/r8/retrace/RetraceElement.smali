.class public interface abstract Lcom/android/tools/r8/retrace/RetraceElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/android/tools/r8/retrace/RetraceResult<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract isCompilerSynthesized()Z
.end method
