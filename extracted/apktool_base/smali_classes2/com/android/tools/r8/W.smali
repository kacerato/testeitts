.class public final Lcom/android/tools/r8/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/naming/Q;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/PartitionMapConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/PartitionMapConsumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/W;->b:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/W;->a:Lcom/android/tools/r8/PartitionMapConsumer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/b;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/W;->a:Lcom/android/tools/r8/PartitionMapConsumer;

    invoke-static {p1}, Lcom/android/tools/r8/retrace/ProguardMapPartitioner;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/q80;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/q80;-><init>(Lcom/android/tools/r8/naming/b;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/W;->a:Lcom/android/tools/r8/PartitionMapConsumer;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/M3;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/M3;-><init>(Lcom/android/tools/r8/PartitionMapConsumer;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->setPartitionConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->setAllowEmptyMappedRanges(Z)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->setAllowExperimentalMapping(Z)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->build()Lcom/android/tools/r8/retrace/ProguardMapPartitioner;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/ProguardMapPartitioner;->run()Lcom/android/tools/r8/retrace/MappingPartitionMetadata;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/PartitionMapConsumer;->acceptMappingPartitionMetadata(Lcom/android/tools/r8/retrace/MappingPartitionMetadata;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "IOExceptions should only occur when parsing"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/W;->a:Lcom/android/tools/r8/PartitionMapConsumer;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
