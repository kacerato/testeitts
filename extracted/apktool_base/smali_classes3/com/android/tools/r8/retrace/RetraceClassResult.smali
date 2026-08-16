.class public interface abstract Lcom/android/tools/r8/retrace/RetraceClassResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceResult<",
        "Lcom/android/tools/r8/retrace/RetraceClassElement;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/tools/r8/retrace/RetraceResult;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public abstract synthetic isEmpty()Z
.end method

.method public abstract lookupField(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFieldResult;
.end method

.method public abstract lookupField(Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceFieldResult;
.end method

.method public abstract lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
.end method

.method public abstract lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            "Ljava/util/OptionalInt;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/references/TypeReference;",
            ">;",
            "Lcom/android/tools/r8/references/TypeReference;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceFrameResult;"
        }
    .end annotation
.end method

.method public abstract lookupMethod(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceMethodResult;
.end method

.method public abstract lookupMethod(Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceMethodResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/references/TypeReference;",
            ">;",
            "Lcom/android/tools/r8/references/TypeReference;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceMethodResult;"
        }
    .end annotation
.end method

.method public abstract lookupThrownException(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceThrownExceptionResult;
.end method
