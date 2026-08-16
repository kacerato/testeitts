.class public Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;
.super Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoMetadataBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase<",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/naming/MapVersion;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;-><init>(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/retrace/r;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/retrace/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;-><init>(Lcom/android/tools/r8/naming/MapVersion;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
    .locals 10

    iget-object v3, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;->partitionSupplier:Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;

    if-eqz v3, :cond_0

    new-instance v9, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->registerCallback:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->prepareCallback:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    iget-object v4, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->finishedCallback:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    iget-boolean v5, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->allowExperimental:Z

    iget-object v7, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->fallbackMapVersion:Lcom/android/tools/r8/naming/MapVersion;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;-><init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/retrace/s;)V

    return-object v9

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot build without providing a partition supplier."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public self()Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilder;

    move-result-object v0

    return-object v0
.end method
