.class public interface abstract Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ST:",
        "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
        "TT;TST;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy<",
        "TT;TST;>;>;"
    }
.end annotation


# virtual methods
.method public abstract getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
.end method

.method public abstract getLineNumber()I
.end method

.method public abstract getOriginalItem()Lcom/android/tools/r8/retrace/StackTraceElementProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TST;"
        }
    .end annotation
.end method

.method public abstract getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
.end method

.method public abstract getRetracedField()Lcom/android/tools/r8/retrace/RetracedFieldReference;
.end method

.method public abstract getRetracedFieldOrReturnType()Lcom/android/tools/r8/retrace/RetracedTypeReference;
.end method

.method public abstract getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;
.end method

.method public abstract getRetracedMethodArguments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/retrace/RetracedTypeReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetracedSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
.end method

.method public abstract getSourceFile()Ljava/lang/String;
.end method

.method public abstract hasLineNumber()Z
.end method

.method public abstract hasRetracedClass()Z
.end method

.method public abstract hasRetracedField()Z
.end method

.method public abstract hasRetracedFieldOrReturnType()Z
.end method

.method public abstract hasRetracedMethod()Z
.end method

.method public abstract hasRetracedMethodArguments()Z
.end method

.method public abstract hasSourceFile()Z
.end method

.method public abstract isAmbiguous()Z
.end method

.method public abstract isTopFrame()Z
.end method
