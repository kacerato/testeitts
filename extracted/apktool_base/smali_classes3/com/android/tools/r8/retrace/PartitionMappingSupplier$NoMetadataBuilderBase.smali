.class public abstract Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;
.super Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NoMetadataBuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase<",
        "TB;>;>",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase<",
        "TB;>;"
    }
.end annotation


# instance fields
.field protected partitionSupplier:Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/naming/MapVersion;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;-><init>(Lcom/android/tools/r8/naming/MapVersion;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/retrace/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;-><init>(Lcom/android/tools/r8/naming/MapVersion;)V

    return-void
.end method


# virtual methods
.method public setMappingPartitionFromKeySupplier(Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;->partitionSupplier:Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/retrace/PartitionMappingSupplier$NoMetadataBuilderBase;

    return-object p1
.end method
