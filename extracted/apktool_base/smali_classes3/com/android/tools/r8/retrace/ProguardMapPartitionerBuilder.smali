.class public interface abstract Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder<",
        "TB;TP;>;P::",
        "Lcom/android/tools/r8/retrace/ProguardMapPartitioner;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract build()Lcom/android/tools/r8/retrace/ProguardMapPartitioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public abstract setAllowEmptyMappedRanges(Z)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation
.end method

.method public abstract setAllowExperimentalMapping(Z)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation
.end method

.method public abstract setPartitionConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/retrace/MappingPartition;",
            ">;)TB;"
        }
    .end annotation
.end method

.method public abstract setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/ProguardMapProducer;",
            ")TB;"
        }
    .end annotation
.end method
