.class public Lcom/android/tools/r8/retrace/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/StringConsumer;

.field public final b:Lcom/android/tools/r8/internal/M50;

.field public final c:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/M50;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/c;->a:Lcom/android/tools/r8/StringConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/retrace/c;->b:Lcom/android/tools/r8/internal/M50;

    iput-object p3, p0, Lcom/android/tools/r8/retrace/c;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/retrace/c$a;
    .locals 1

    .line 20
    new-instance v0, Lcom/android/tools/r8/retrace/c$a;

    invoke-direct {v0}, Lcom/android/tools/r8/retrace/c$a;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/naming/b$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->a:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/retrace/d;Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/retrace/d;->a:Lcom/android/tools/r8/StringConsumer;

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/retrace/d;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/retrace/d;->a:Lcom/android/tools/r8/StringConsumer;

    iget-object p0, p0, Lcom/android/tools/r8/retrace/d;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    const-string v0, "\n"

    invoke-interface {p1, v0, p0}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/bV;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/tools/r8/retrace/d;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/c;->a:Lcom/android/tools/r8/StringConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/retrace/c;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/retrace/d;-><init>(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/bV;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/bV;->d()Lcom/android/tools/r8/internal/wW;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/wW;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/wW;->b()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/retrace/L;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/retrace/L;-><init>(Lcom/android/tools/r8/retrace/d;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/bV;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    new-instance v3, Lcom/android/tools/r8/internal/s80;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 8
    invoke-interface {p2, v2}, Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;->get(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lcom/android/tools/r8/internal/s80;-><init>(Ljava/io/InputStream;Ljava/util/function/Predicate;Z)V

    .line 9
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/internal/bV;->b()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/retrace/c;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    new-instance v8, Lcom/android/tools/r8/retrace/M;

    invoke-direct {v8}, Lcom/android/tools/r8/retrace/M;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 10
    invoke-static/range {v3 .. v8}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;ZZLjava/util/function/Consumer;)Lcom/android/tools/r8/naming/b;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/internal/Kb;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/android/tools/r8/retrace/RetracePartitionException;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/retrace/c;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 14
    iget-object p2, v0, Lcom/android/tools/r8/retrace/d;->a:Lcom/android/tools/r8/StringConsumer;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/retrace/c;->b:Lcom/android/tools/r8/internal/M50;

    iget-object p2, p0, Lcom/android/tools/r8/retrace/c;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/M50;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/retrace/RetracePartitionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/retrace/c;->b:Lcom/android/tools/r8/internal/M50;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/c;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/M50;->getMetadata(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/bV;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/tools/r8/internal/bV;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/retrace/c;->b:Lcom/android/tools/r8/internal/M50;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M50;->getPartitionMappingSupplier()Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/tools/r8/internal/bV;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/tools/r8/retrace/c;->b:Lcom/android/tools/r8/internal/M50;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/M50;->registerKeyUse(Ljava/lang/String;)Lcom/android/tools/r8/internal/M50;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/retrace/PartitionMappingSupplier;->getMappingPartitionFromKeySupplier()Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/retrace/c;->a(Lcom/android/tools/r8/internal/bV;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)V

    return-void

    :cond_1
    new-instance v0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    const-string v1, "Running synchronously requires a synchronous partition mapping provider. Use runAsync() if you have an asynchronous provider."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    const-string v1, "Cannot obtain all partition keys from metadata"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
