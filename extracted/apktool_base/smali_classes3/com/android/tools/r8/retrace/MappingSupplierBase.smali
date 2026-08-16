.class public interface abstract Lcom/android/tools/r8/retrace/MappingSupplierBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/H;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/tools/r8/retrace/MappingSupplierBase<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/H;"
    }
.end annotation


# virtual methods
.method public abstract registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            "Lcom/android/tools/r8/references/ClassReference;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            "Lcom/android/tools/r8/references/FieldReference;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            "Lcom/android/tools/r8/references/MethodReference;",
            ")TT;"
        }
    .end annotation
.end method
