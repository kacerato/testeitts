.class public Lcom/android/tools/r8/internal/p80$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/p80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder<",
        "Lcom/android/tools/r8/internal/p80$a;",
        "Lcom/android/tools/r8/internal/p80;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

.field public b:Ljava/util/function/Consumer;

.field public final c:Lcom/android/tools/r8/DiagnosticsHandler;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/p80$a;->d:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/p80$a;->e:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/p80$a;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/tools/r8/internal/p80;
    .locals 8

    .line 2
    new-instance v7, Lcom/android/tools/r8/internal/p80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/p80$a;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/p80$a;->b:Ljava/util/function/Consumer;

    iget-object v3, p0, Lcom/android/tools/r8/internal/p80$a;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/p80$a;->d:Z

    iget-boolean v5, p0, Lcom/android/tools/r8/internal/p80$a;->e:Z

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/ZU;->a()Lcom/android/tools/r8/internal/ZU;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/p80;-><init>(Lcom/android/tools/r8/retrace/ProguardMapProducer;Ljava/util/function/Consumer;Lcom/android/tools/r8/DiagnosticsHandler;ZZLcom/android/tools/r8/internal/ZU;)V

    return-object v7
.end method

.method public bridge synthetic build()Lcom/android/tools/r8/retrace/ProguardMapPartitioner;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/p80$a;->build()Lcom/android/tools/r8/internal/p80;

    move-result-object v0

    return-object v0
.end method

.method public final setAllowEmptyMappedRanges(Z)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/p80$a;->d:Z

    return-object p0
.end method

.method public final setAllowExperimentalMapping(Z)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/p80$a;->e:Z

    return-object p0
.end method

.method public setPartitionConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/p80$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/retrace/MappingPartition;",
            ">;)",
            "Lcom/android/tools/r8/internal/p80$a;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/p80$a;->b:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final bridge synthetic setPartitionConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/p80$a;->setPartitionConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/p80$a;

    move-result-object p1

    return-object p1
.end method

.method public setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/internal/p80$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/p80$a;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    return-object p0
.end method

.method public final bridge synthetic setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/p80$a;->setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/internal/p80$a;

    move-result-object p1

    return-object p1
.end method
