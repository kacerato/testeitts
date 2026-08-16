.class public Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;
.super Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase<",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;-><init>(Lcom/android/tools/r8/naming/MapVersion;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/retrace/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;
    .locals 9

    iget-object v5, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;->a:[B

    if-eqz v5, :cond_0

    new-instance v8, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->registerCallback:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->prepareCallback:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    iget-object v3, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->finishedCallback:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    iget-boolean v4, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->allowExperimental:Z

    iget-object v6, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->fallbackMapVersion:Lcom/android/tools/r8/naming/MapVersion;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync;-><init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/retrace/u;)V

    return-object v8

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot build without providing metadata."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMetadata([B)Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;->a:[B

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierAsync$Builder;

    move-result-object p1

    return-object p1
.end method
