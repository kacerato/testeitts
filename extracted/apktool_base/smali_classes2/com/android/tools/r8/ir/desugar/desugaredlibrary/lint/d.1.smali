.class public abstract Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/String;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;
    .locals 6

    invoke-static {p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_a

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, "--help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setHelp()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    goto/16 :goto_1

    :cond_1
    const-string v4, "--version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setVersion()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    goto/16 :goto_1

    :cond_2
    const-string v4, "--android-platform-build"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setAndroidPlatformBuild()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    array-length v4, p0

    if-lt v2, v4, :cond_4

    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing value for arg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_2

    :cond_4
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--min-api"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setMinApi(I)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    goto :goto_1

    :cond_5
    const-string v5, "--desugared-lib"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setDesugarLibrarySpecification(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    goto :goto_1

    :cond_6
    const-string v5, "--desugared-lib-jar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/ArchiveProgramResourceProvider;->fromArchive(Ljava/nio/file/Path;)Lcom/android/tools/r8/ArchiveProgramResourceProvider;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->addDesugarLibraryImplementation(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    goto :goto_1

    :cond_7
    const-string v5, "--output"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    goto :goto_1

    :cond_8
    const-string v5, "--lib"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v3, Lcom/android/tools/r8/ArchiveClassFileProvider;

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/tools/r8/ArchiveClassFileProvider;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->addLibrary(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported argument "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    invoke-virtual {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->build()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    move-result-object p0

    return-object p0
.end method
