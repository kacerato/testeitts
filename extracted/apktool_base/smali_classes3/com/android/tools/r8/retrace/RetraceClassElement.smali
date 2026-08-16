.class public interface abstract Lcom/android/tools/r8/retrace/RetraceClassElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/RetraceElement<",
        "Lcom/android/tools/r8/retrace/RetraceClassResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract synthetic getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
.end method

.method public abstract getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
.end method

.method public abstract getSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
.end method

.method public abstract getUnknownJsonMappingInformation()Lcom/android/tools/r8/retrace/RetraceUnknownJsonMappingInformationResult;
.end method

.method public abstract lookupField(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFieldResult;
.end method

.method public abstract lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
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
