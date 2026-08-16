.class public interface abstract Lcom/android/tools/r8/retrace/MappingSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/MappingSupplierBase;
.implements Lcom/android/tools/r8/X;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/tools/r8/retrace/MappingSupplier<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/MappingSupplierBase<",
        "TT;>;",
        "Lcom/android/tools/r8/X;"
    }
.end annotation


# virtual methods
.method public abstract createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/Retracer;
.end method

.method public abstract synthetic getMapVersions(Lcom/android/tools/r8/DiagnosticsHandler;)Ljava/util/Set;
.end method

.method public abstract synthetic registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
.end method

.method public abstract synthetic registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
.end method

.method public abstract synthetic registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
.end method

.method public abstract synthetic verifyMappingFileHash(Lcom/android/tools/r8/DiagnosticsHandler;)V
.end method
