.class public abstract Lcom/android/tools/r8/internal/M50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/H;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/internal/M50<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/H;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

.field private final b:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

.field private final c:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

.field private final d:Z

.field private final e:[B

.field private final f:Lcom/android/tools/r8/naming/MapVersion;

.field private g:Lcom/android/tools/r8/naming/b;

.field private final h:Ljava/util/LinkedHashSet;

.field private final i:Ljava/util/HashSet;

.field private final j:Lcom/android/tools/r8/internal/C7;

.field private final k:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;Z[BLcom/android/tools/r8/naming/MapVersion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M50;->h:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M50;->i:Ljava/util/HashSet;

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M50;->j:Lcom/android/tools/r8/internal/C7;

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/M50;->k:Lcom/android/tools/r8/internal/C7;

    iput-object p1, p0, Lcom/android/tools/r8/internal/M50;->a:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    iput-object p2, p0, Lcom/android/tools/r8/internal/M50;->b:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    iput-object p3, p0, Lcom/android/tools/r8/internal/M50;->c:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/M50;->d:Z

    iput-object p5, p0, Lcom/android/tools/r8/internal/M50;->e:[B

    iput-object p6, p0, Lcom/android/tools/r8/internal/M50;->f:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method

.method private static a(Ljava/util/Set;)Ljava/util/function/Predicate;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/pM0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pM0;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static a(Lcom/android/tools/r8/naming/b$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->a:Z

    return-void
.end method

.method private static synthetic a(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/M50;->a(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/naming/b$a;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/internal/M50;->a(Lcom/android/tools/r8/naming/b$a;)V

    return-void
.end method


# virtual methods
.method public createRetracerFromPartitionSupplier(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/internal/wk0;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->h:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->b:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->h:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-interface {p2, v1}, Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;->get(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/s80;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/android/tools/r8/internal/s80;-><init>(Ljava/io/InputStream;Ljava/util/function/Predicate;Z)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/M50;->getMetadata(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/bV;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/bV;->b()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/M50;->d:Z

    new-instance v7, Lcom/android/tools/r8/internal/qM0;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/qM0;-><init>()V

    const/4 v5, 0x1

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;ZZLjava/util/function/Consumer;)Lcom/android/tools/r8/naming/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/M50;->g:Lcom/android/tools/r8/naming/b;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/naming/b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/M50;->g:Lcom/android/tools/r8/naming/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/android/tools/r8/retrace/InvalidMappingFileException;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/retrace/InvalidMappingFileException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/M50;->i:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->h:Ljava/util/LinkedHashSet;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/tools/r8/internal/M50;->h:Ljava/util/LinkedHashSet;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    iget-object p2, p0, Lcom/android/tools/r8/internal/M50;->g:Lcom/android/tools/r8/naming/b;

    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/tools/r8/naming/b;->a()Lcom/android/tools/r8/naming/b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/b$a;->a()Lcom/android/tools/r8/naming/b;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/M50;->g:Lcom/android/tools/r8/naming/b;

    :cond_3
    iget-object p2, p0, Lcom/android/tools/r8/internal/M50;->g:Lcom/android/tools/r8/naming/b;

    invoke-static {p2}, Lcom/android/tools/r8/internal/eV;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/internal/dV;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/wk0;->a(Lcom/android/tools/r8/internal/dV;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;

    move-result-object p1

    return-object p1
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->c:Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/retrace/FinishedPartitionMappingCallback;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public getMapVersions(Lcom/android/tools/r8/DiagnosticsHandler;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/naming/mappinginformation/b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/M50;->getMetadata(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/bV;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/bV;->b()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/MapVersion;->toMapVersionMappingInformation()Lcom/android/tools/r8/naming/mappinginformation/b;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/bV;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->j:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/M50;->j:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bV;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->j:Lcom/android/tools/r8/internal/C7;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/M50;->j:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/M50;->j:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bV;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/M50;->e:[B

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/tools/r8/dex/s;->b([B)Lcom/android/tools/r8/dex/s;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/M50;->f:Lcom/android/tools/r8/naming/MapVersion;

    invoke-static {v1, v2, p1}, Lcom/android/tools/r8/internal/bV;->a(Lcom/android/tools/r8/dex/s;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/bV;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/M50;->j:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPartitionMappingSupplier()Lcom/android/tools/r8/retrace/PartitionMappingSupplier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/M50;
    .locals 2

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->k:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/M50;->k:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Predicate;

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->k:Lcom/android/tools/r8/internal/C7;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/M50;->k:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/M50;->k:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Predicate;

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/M50;->getMetadata(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/bV;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/tools/r8/internal/bV;->c()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/internal/bV;->d()Lcom/android/tools/r8/internal/wW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wW;->c()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wW;->a()Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/M50;->a(Ljava/util/Set;)Ljava/util/function/Predicate;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/M50;->k:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/M50;->registerKeyUse(Ljava/lang/String;)Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M50;->self()Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    return-object p1

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerKeyUse(Ljava/lang/String;)Lcom/android/tools/r8/internal/M50;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->h:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/M50;->a:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;->register(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/M50;->self()Lcom/android/tools/r8/internal/M50;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/android/tools/r8/internal/M50;
.end method

.method public verifyMappingFileHash(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "Cannot verify map file hash for partitions"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
