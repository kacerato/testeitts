.class public interface abstract Lcom/android/tools/r8/retrace/RetraceTypeElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceElement<",
        "Lcom/android/tools/r8/retrace/RetraceTypeResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract synthetic getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
.end method

.method public abstract getType()Lcom/android/tools/r8/retrace/RetracedTypeReference;
.end method
