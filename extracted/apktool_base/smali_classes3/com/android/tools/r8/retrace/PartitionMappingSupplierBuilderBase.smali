.class public abstract Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected allowExperimental:Z

.field protected final fallbackMapVersion:Lcom/android/tools/r8/naming/MapVersion;

.field protected finishedCallback:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

.field protected prepareCallback:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

.field protected registerCallback:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/MapVersion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;->empty()Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->registerCallback:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    invoke-static {}, Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;->empty()Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->prepareCallback:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    invoke-static {}, Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;->empty()Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->finishedCallback:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->allowExperimental:Z

    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->fallbackMapVersion:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method


# virtual methods
.method public abstract self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setAllowExperimental(Z)Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->allowExperimental:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public setFinishedPartitionMappingCallback(Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->finishedCallback:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public setPrepareMappingPartitionsCallback(Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->prepareCallback:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;

    move-result-object p1

    return-object p1
.end method

.method public setRegisterMappingPartitionCallback(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;)Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->registerCallback:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;->self()Lcom/android/tools/r8/retrace/PartitionMappingSupplierBuilderBase;

    move-result-object p1

    return-object p1
.end method
