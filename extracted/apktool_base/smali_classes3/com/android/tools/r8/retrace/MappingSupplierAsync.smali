.class public interface abstract Lcom/android/tools/r8/retrace/MappingSupplierAsync;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/MappingSupplierBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/tools/r8/retrace/MappingSupplierAsync<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/MappingSupplierBase<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/Retracer;
.end method

.method public abstract synthetic registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
.end method

.method public abstract synthetic registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
.end method

.method public abstract synthetic registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
.end method
