.class public interface abstract Lcom/android/tools/r8/retrace/Retracer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createDefault(Lcom/android/tools/r8/retrace/ProguardMapProducer;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/Retracer;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier;->builder()Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;->setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/MappingSupplierBuilder;->build()Lcom/android/tools/r8/retrace/MappingSupplier;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/retrace/ProguardMappingSupplier;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/retrace/MappingSupplier;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/Retracer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/tools/r8/retrace/InvalidMappingFileException;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/retrace/InvalidMappingFileException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceClassResult;
.end method

.method public abstract retraceField(Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/RetraceFieldResult;
.end method

.method public abstract retraceFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
.end method

.method public abstract retraceFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
.end method

.method public abstract retraceMethod(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/RetraceMethodResult;
.end method

.method public abstract retraceThrownException(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceThrownExceptionResult;
.end method

.method public abstract retraceType(Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceTypeResult;
.end method
