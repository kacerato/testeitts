.class public Lcom/android/tools/r8/BackportedMethodList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v8, "  --version                # Print the version of BackportedMethodList."

    const-string v9, "  --help                   # Print this message."

    const-string v0, "Usage: BackportedMethodList [options]"

    const-string v1, " Options are:"

    const-string v2, "  --output <file>          # Output result in <file>."

    const-string v3, "  --min-api <number>       # Minimum Android API level for the application"

    const-string v4, "  --desugared-lib <file>   # Desugared library configuration (JSON from the"

    const-string v5, "                           # configuration)"

    const-string v6, "  --lib <file>             # The compilation SDK library (android.jar)"

    const-string v7, "  --android-platform-build # Compilation of platform code"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/BackportedMethodList;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/BackportedMethodList;->run([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/BackportedMethodList;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/E0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/E0;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/BackportedMethodListCommand;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lcom/android/tools/r8/BackportedMethodList;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackportedMethodList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ClassFileResourceProvider;

    .line 7
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->addLibrary(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->getDesugaredLibraryConfiguration()Lcom/android/tools/r8/internal/vm;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/vm;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/v0;->a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/v0;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setDesugarLibrarySpecification(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->isAndroidPlatformBuild()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setAndroidPlatformBuild()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->getMinApiLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setMinApi(I)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->getBackportedMethodListConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->setOutputConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;->build()Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->run(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V

    return-void
.end method

.method public static run([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/android/tools/r8/BackportedMethodListCommand;->parse([Ljava/lang/String;)Lcom/android/tools/r8/BackportedMethodListCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/BackportedMethodListCommand$Builder;->build()Lcom/android/tools/r8/BackportedMethodListCommand;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/BackportedMethodList;->run(Lcom/android/tools/r8/BackportedMethodListCommand;)V

    return-void
.end method
