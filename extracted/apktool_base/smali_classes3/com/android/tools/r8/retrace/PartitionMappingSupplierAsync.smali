.class public Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;
.super Lcom/android/tools/r8/internal/M50;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/MappingSupplierAsync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/M50<",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;",
        ">;",
        "Lcom/android/tools/r8/retrace/MappingSupplierAsync<",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/android/tools/r8/internal/M50;-><init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/retrace/u;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;-><init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;-><init>(Lcom/android/tools/r8/retrace/t;)V

    return-object v0
.end method


# virtual methods
.method public createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/Retracer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/M50;->createRetracerFromPartitionSupplier(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/internal/wk0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    move-result-object p1

    return-object p1
.end method

.method public registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/M50;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    return-object p1
.end method

.method public bridge synthetic registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/internal/M50;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    move-result-object p1

    return-object p1
.end method

.method public registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;
    .locals 0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    return-object p1
.end method

.method public bridge synthetic registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/internal/M50;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    move-result-object p1

    return-object p1
.end method

.method public registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;
    .locals 0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    return-object p1
.end method

.method public bridge synthetic self()Lcom/android/tools/r8/internal/M50;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;
    .locals 0

    .line 1
    return-object p0
.end method
