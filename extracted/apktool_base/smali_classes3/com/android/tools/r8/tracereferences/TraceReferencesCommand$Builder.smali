.class public Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Lcom/android/tools/r8/internal/Ef0;

.field private final d:Lcom/android/tools/r8/internal/eC;

.field private final e:Lcom/android/tools/r8/internal/eC;

.field private final f:Lcom/android/tools/r8/internal/eC;

.field private g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;


# direct methods
.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->b:Z

    .line 5
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 7
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->d:Lcom/android/tools/r8/internal/eC;

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 10
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->e:Lcom/android/tools/r8/internal/eC;

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 13
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->f:Lcom/android/tools/r8/internal/eC;

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/tracereferences/I;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Vd;

    .line 4
    array-length v1, p0

    const/4 v1, 0x1

    .line 5
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    .line 6
    new-instance p0, Lcom/android/tools/r8/tracereferences/d;

    invoke-direct {p0}, Lcom/android/tools/r8/tracereferences/d;-><init>()V

    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Lcom/android/tools/r8/internal/K4;

    const/4 v2, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V

    .line 8
    iget-object p0, p0, Lcom/android/tools/r8/tracereferences/d;->c:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/android/tools/r8/internal/C7;)V
    .locals 9

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->d:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->e:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->f:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    .line 32
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "No library specified"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 35
    :cond_1
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 36
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "No source specified"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    if-nez v0, :cond_3

    .line 40
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v1, "No consumer specified"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 42
    :cond_3
    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;

    iget-boolean v2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a:Z

    iget-boolean v3, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->b:Z

    iget-object v4, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    iget-object v8, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;-><init>(ZZLcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V

    goto :goto_1

    .line 43
    :cond_4
    :goto_0
    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;

    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->isPrintHelp()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->isPrintVersion()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;-><init>(ZZ)V

    .line 44
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Lcom/android/tools/r8/internal/C7;)V

    return-void
.end method

.method private a(Ljava/nio/file/Path;Lcom/android/tools/r8/internal/eC;)V
    .locals 3

    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 12
    new-instance v1, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/ArchiveClassFileProvider;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/ArchiveClassFileProvider;-><init>(Ljava/nio/file/Path;)V

    .line 17
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 18
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-direct {v0, p2, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ww;->b(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    :try_start_1
    new-instance v0, Lcom/android/tools/r8/tracereferences/g;

    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 22
    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/tracereferences/g;-><init>(Lcom/android/tools/r8/origin/PathOrigin;[B)V

    .line 23
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 24
    new-instance p2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    .line 25
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance p2, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v0, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    const-string p1, "Unsupported source file type"

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public static bridge synthetic b([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Ef0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public addLibraryFiles(Ljava/util/Collection;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->d:Lcom/android/tools/r8/internal/eC;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/internal/eC;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->addLibraryFiles(Ljava/util/Collection;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    return-object p0
.end method

.method public addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->d:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-object p0
.end method

.method public addSourceFiles(Ljava/util/Collection;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    const/4 v1, 0x0

    .line 3
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 5
    new-instance v3, Ljava/nio/file/NoSuchFileException;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v4, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v4, v3, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->f:Lcom/android/tools/r8/internal/eC;

    invoke-static {v0, v1}, Lcom/android/tools/r8/utils/ArchiveResourceProvider;->fromArchive(Ljava/nio/file/Path;Z)Lcom/android/tools/r8/utils/ArchiveResourceProvider;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ww;->b(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->f:Lcom/android/tools/r8/internal/eC;

    .line 12
    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/android/tools/r8/tracereferences/e;

    invoke-direct {v4, v0, v2, v3}, Lcom/android/tools/r8/tracereferences/e;-><init>(Ljava/nio/file/Path;[BLjava/lang/String;)V

    .line 15
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ww;->d(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->f:Lcom/android/tools/r8/internal/eC;

    new-instance v2, Lcom/android/tools/r8/tracereferences/f;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/tracereferences/f;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_0

    .line 20
    :cond_3
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    const-string v0, "Unsupported source file type"

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_0

    :cond_4
    return-object p0
.end method

.method public varargs addSourceFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->addSourceFiles(Ljava/util/Collection;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    return-object p0
.end method

.method public addTargetFiles(Ljava/util/Collection;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->e:Lcom/android/tools/r8/internal/eC;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/internal/eC;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addTargetFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->addTargetFiles(Ljava/util/Collection;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    return-object p0
.end method

.method public final build()Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->c:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/tracereferences/H;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/tracereferences/H;-><init>(Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;Lcom/android/tools/r8/internal/C7;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;

    return-object v0
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a:Z

    return v0
.end method

.method public isPrintVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->b:Z

    return v0
.end method

.method public setConsumer(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    return-object p0
.end method

.method public setPrintHelp(Z)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->a:Z

    return-object p0
.end method

.method public setPrintVersion(Z)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;->b:Z

    return-object p0
.end method
