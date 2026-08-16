.class public final Lcom/android/tools/r8/utils/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/PartitionMapConsumer;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/C7;

.field public final b:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/utils/s;->a:Lcom/android/tools/r8/internal/C7;

    iput-object p1, p0, Lcom/android/tools/r8/utils/s;->b:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/android/tools/r8/utils/u$b;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/s;->b:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/u$b;

    move-result-object v0

    return-object v0
.end method

.method public final acceptMappingPartition(Lcom/android/tools/r8/retrace/MappingPartition;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/s;->a:Lcom/android/tools/r8/internal/C7;

    new-instance v1, Lcom/android/tools/r8/utils/H;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/utils/H;-><init>(Lcom/android/tools/r8/utils/s;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/tools/r8/internal/es0;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/utils/u$b;

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/MappingPartition;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/MappingPartition;->getPayload()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/lang/String;[B)Lcom/android/tools/r8/utils/u$b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final acceptMappingPartitionMetadata(Lcom/android/tools/r8/retrace/MappingPartitionMetadata;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/utils/s;->a:Lcom/android/tools/r8/internal/C7;

    new-instance v1, Lcom/android/tools/r8/utils/G;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/utils/G;-><init>(Lcom/android/tools/r8/utils/s;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/android/tools/r8/internal/es0;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/utils/u$b;

    const-string v1, "METADATA"

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/MappingPartitionMetadata;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/lang/String;[B)Lcom/android/tools/r8/utils/u$b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final synthetic b()Lcom/android/tools/r8/utils/u$b;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/s;->b:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/u$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/android/tools/r8/utils/u$b;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/s;->b:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/u$b;

    move-result-object v0

    return-object v0
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/android/tools/r8/utils/s;->a:Lcom/android/tools/r8/internal/C7;

    new-instance v0, Lcom/android/tools/r8/utils/I;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/I;-><init>(Lcom/android/tools/r8/utils/s;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/es0;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/utils/u$b;

    invoke-virtual {p1}, Lcom/android/tools/r8/utils/u$b;->a()Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
