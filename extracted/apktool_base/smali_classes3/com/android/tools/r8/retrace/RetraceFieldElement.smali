.class public interface abstract Lcom/android/tools/r8/retrace/RetraceFieldElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceElement<",
        "Lcom/android/tools/r8/retrace/RetraceFieldResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getClassElement()Lcom/android/tools/r8/retrace/RetraceClassElement;
.end method

.method public abstract getField()Lcom/android/tools/r8/retrace/RetracedFieldReference;
.end method

.method public abstract synthetic getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
.end method

.method public abstract getSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
.end method

.method public abstract isUnknown()Z
.end method
