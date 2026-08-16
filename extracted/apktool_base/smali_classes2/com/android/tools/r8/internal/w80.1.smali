.class public final Lcom/android/tools/r8/internal/w80;
.super Lcom/android/tools/r8/retrace/ProguardMappingSupplier;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

.field public final b:Z

.field public final c:Z

.field public d:Lcom/android/tools/r8/naming/b;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/retrace/ProguardMapProducer;ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/w80;->e:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/w80;->f:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/tools/r8/internal/w80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/w80;->b:Z

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/w80;->c:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/b$a;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->a:Z

    return-void
.end method


# virtual methods
.method public final createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    if-nez v0, :cond_2

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/w80;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    .line 5
    invoke-static {v0}, Lcom/android/tools/r8/internal/eV;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/internal/dV;

    move-result-object v0

    .line 6
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/wk0;->a(Lcom/android/tools/r8/internal/dV;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8
    :cond_3
    :try_start_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/w80;->c:Z

    if-eqz v0, :cond_4

    move-object v2, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->e:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/Yi1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Yi1;-><init>(Ljava/util/Set;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/w80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->isFileBacked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11
    new-instance v3, Lcom/android/tools/r8/internal/t80;

    iget-object v4, p0, Lcom/android/tools/r8/internal/w80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    .line 12
    invoke-interface {v4}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lcom/android/tools/r8/internal/t80;-><init>(Ljava/nio/file/Path;Ljava/util/function/Predicate;Z)V

    :goto_3
    move-object v5, v3

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_8

    .line 13
    :cond_6
    new-instance v3, Lcom/android/tools/r8/internal/s80;

    iget-object v4, p0, Lcom/android/tools/r8/internal/w80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    .line 14
    invoke-interface {v4}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->get()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lcom/android/tools/r8/internal/s80;-><init>(Ljava/io/InputStream;Ljava/util/function/Predicate;Z)V

    goto :goto_3

    .line 15
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    if-nez v0, :cond_7

    .line 16
    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

    :goto_5
    move-object v6, v0

    goto :goto_7

    .line 17
    :cond_7
    iget-object v2, v0, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, v1

    goto :goto_6

    :cond_8
    iget-object v0, v0, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/mappinginformation/b;

    :goto_6
    if-nez v0, :cond_9

    .line 18
    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_UNKNOWN:Lcom/android/tools/r8/naming/MapVersion;

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/b;->s()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v0

    goto :goto_5

    .line 19
    :goto_7
    iget-boolean v9, p0, Lcom/android/tools/r8/internal/w80;->b:Z

    new-instance v10, Lcom/android/tools/r8/internal/sx1;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/sx1;-><init>()V

    const/4 v8, 0x1

    move-object v7, p1

    .line 20
    invoke-static/range {v5 .. v10}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;ZZLjava/util/function/Consumer;)Lcom/android/tools/r8/naming/b;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    .line 21
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/naming/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->f:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/tools/r8/internal/w80;->e:Ljava/util/HashSet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_a
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/w80;->c:Z

    if-eqz v0, :cond_b

    .line 25
    iput-object v1, p0, Lcom/android/tools/r8/internal/w80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    .line 26
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    .line 27
    invoke-static {v0}, Lcom/android/tools/r8/internal/eV;->a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/internal/dV;

    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/wk0;->a(Lcom/android/tools/r8/internal/dV;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;

    move-result-object p1

    return-object p1

    .line 29
    :goto_8
    new-instance v0, Lcom/android/tools/r8/retrace/InvalidMappingFileException;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/retrace/InvalidMappingFileException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final bridge synthetic createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/Retracer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w80;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;

    move-result-object p1

    return-object p1
.end method

.method public final getMapVersions(Lcom/android/tools/r8/DiagnosticsHandler;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w80;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;

    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/w80;->g:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/w80;->d:Lcom/android/tools/r8/naming/b;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/b;->b()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 1

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/w80;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/w80;->e:Ljava/util/HashSet;

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final registerFieldUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/w80;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/w80;->e:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final registerMethodUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;
    .locals 1

    invoke-virtual {p2}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/w80;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/w80;->e:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final verifyMappingFileHash(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/w80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->get()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x800

    new-array v3, v3, [C

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/naming/x0;->a(Ljava/lang/String;)Lcom/android/tools/r8/naming/x0$a;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/tools/r8/naming/x0$a;->a:Z

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/x0$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    sget-boolean v3, Lcom/android/tools/r8/naming/x0$a;->c:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/tools/r8/naming/x0$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    :goto_1
    iget-object v1, v1, Lcom/android/tools/r8/naming/x0$a;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_4
    return-void

    :cond_5
    :try_start_3
    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    sget-boolean v3, Lcom/android/tools/r8/naming/x0$a;->c:Z

    if-nez v3, :cond_7

    iget-object v4, v1, Lcom/android/tools/r8/naming/x0$a;->b:Ljava/lang/String;

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_2
    iget-object v4, v1, Lcom/android/tools/r8/naming/x0$a;->b:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    new-instance v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_9

    iget-object v3, v1, Lcom/android/tools/r8/naming/x0$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    :goto_3
    iget-object v1, v1, Lcom/android/tools/r8/naming/x0$a;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
