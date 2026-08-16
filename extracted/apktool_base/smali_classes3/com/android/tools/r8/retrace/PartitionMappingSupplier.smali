.class public Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
.super Lcom/android/tools/r8/internal/M50;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/MappingSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;,
        Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;,
        Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/M50<",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplier;",
        ">;",
        "Lcom/android/tools/r8/retrace/MappingSupplier<",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplier;",
        ">;"
    }
.end annotation


# instance fields
.field private final l:Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/M50;-><init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;)V

    .line 3
    iput-object p3, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->l:Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/retrace/s;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;-><init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;)V

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$Builder;-><init>(Lcom/android/tools/r8/retrace/p;)V

    return-object v0
.end method

.method public static noMetadataBuilder(Lcom/android/tools/r8/naming/MapVersion;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;-><init>(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/retrace/q;)V

    return-object v0
.end method


# virtual methods
.method public createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/Retracer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->l:Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/M50;->createRetracerFromPartitionSupplier(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/internal/wk0;

    move-result-object p1

    return-object p1
.end method

.method public getMappingPartitionFromKeySupplier()Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->l:Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;

    return-object v0
.end method

.method public getPartitionMappingSupplier()Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object p1

    return-object p1
.end method

.method public registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/M50;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    return-object p1
.end method

.method public bridge synthetic registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/internal/M50;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object p1

    return-object p1
.end method

.method public registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
    .locals 0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    return-object p1
.end method

.method public bridge synthetic registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/internal/M50;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object p1

    return-object p1
.end method

.method public registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
    .locals 0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    return-object p1
.end method

.method public bridge synthetic self()Lcom/android/tools/r8/internal/M50;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
    .locals 0

    .line 1
    return-object p0
.end method
