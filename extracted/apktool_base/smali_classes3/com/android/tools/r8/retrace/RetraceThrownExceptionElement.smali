.class public interface abstract Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceElement<",
        "Lcom/android/tools/r8/retrace/RetraceThrownExceptionResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
.end method

.method public abstract synthetic getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
.end method

.method public abstract getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
.end method

.method public abstract getSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
.end method
