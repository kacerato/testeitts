.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:Lcom/android/tools/r8/internal/Ef0;

.field private final e:Lcom/android/tools/r8/v0;

.field private final f:Ljava/util/ArrayList;

.field private final g:Lcom/android/tools/r8/StringConsumer;

.field private final h:Ljava/util/ArrayList;

.field private final i:Z


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/ArrayList;Lcom/android/tools/r8/StringConsumer;Ljava/util/ArrayList;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->b:Z

    .line 4
    iput p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->c:I

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 6
    iput-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->e:Lcom/android/tools/r8/v0;

    .line 7
    iput-object p4, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->f:Ljava/util/ArrayList;

    .line 8
    iput-object p5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->g:Lcom/android/tools/r8/StringConsumer;

    .line 9
    iput-object p6, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->h:Ljava/util/ArrayList;

    .line 10
    iput-boolean p7, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->i:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->a:Z

    .line 13
    iput-boolean p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->b:Z

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->c:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->e:Lcom/android/tools/r8/v0;

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->f:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->g:Lcom/android/tools/r8/StringConsumer;

    .line 19
    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->h:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->i:Z

    return-void
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object v0
.end method

.method public static getUsageMessage()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage: desugaredmethods [options] where  options are:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v2, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    const-string v3, "Output result in <file>."

    const-string v4, "<file> must be an existing directory or a zip file."

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "<file>"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--output"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v3, "Add <file|jdk-home> as a library resource."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "<file|jdk-home>"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--lib"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    invoke-static {}, Lcom/android/tools/r8/Y;->e()Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v3, "DesugaredMethods"

    invoke-static {v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    invoke-static {}, Lcom/android/tools/r8/Y;->c()Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v3, "Specify desugared library configuration."

    const-string v5, "<file> is a desugared library configuration (json)."

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--desugared-lib"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v3, "Compile as a platform build where the runtime/bootclasspath"

    const-string v5, "is assumed to be the version specified by --min-api."

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v6, "--android-platform-build"

    invoke-static {v6, v5, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    const-string v3, "Specify desugared library jar."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v5, "--desugared-lib-jar"

    invoke-static {v5, v4, v3}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->parse([Ljava/lang/String;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/d;->a([Ljava/lang/String;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDesugarLibraryImplementation()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/ProgramResourceProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDesugarLibrarySpecification()Lcom/android/tools/r8/v0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->e:Lcom/android/tools/r8/v0;

    return-object v0
.end method

.method public getLibrary()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/ClassFileResourceProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMinApi()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->c:I

    return v0
.end method

.method public getOutputConsumer()Lcom/android/tools/r8/StringConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->g:Lcom/android/tools/r8/StringConsumer;

    return-object v0
.end method

.method public getReporter()Lcom/android/tools/r8/internal/Ef0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->d:Lcom/android/tools/r8/internal/Ef0;

    return-object v0
.end method

.method public isAndroidPlatformBuild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->i:Z

    return v0
.end method

.method public isHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->a:Z

    return v0
.end method

.method public isVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->b:Z

    return v0
.end method
