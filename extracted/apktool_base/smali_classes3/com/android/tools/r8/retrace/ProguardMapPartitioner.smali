.class public interface abstract Lcom/android/tools/r8/retrace/ProguardMapPartitioner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")",
            "Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder<",
            "**>;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/p80$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/p80$a;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object v0
.end method


# virtual methods
.method public abstract run()Lcom/android/tools/r8/retrace/MappingPartitionMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
