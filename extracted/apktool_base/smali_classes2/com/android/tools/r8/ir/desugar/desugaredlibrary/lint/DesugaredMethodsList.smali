.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;
.super Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;
.source "SourceFile"


# instance fields
.field private final j:Lcom/android/tools/r8/internal/C2;

.field private final k:Z

.field private final l:Lcom/android/tools/r8/StringConsumer;


# direct methods
.method public constructor <init>(IZLcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/Collection;Lcom/android/tools/r8/StringConsumer;Ljava/util/Collection;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;-><init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/Collection;Ljava/nio/file/Path;Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->j:Lcom/android/tools/r8/internal/C2;

    iput-boolean p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->k:Z

    iput-object p6, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->l:Lcom/android/tools/r8/StringConsumer;

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->getMinApi()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->isAndroidPlatformBuild()Z

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->getReporter()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->getDesugarLibrarySpecification()Lcom/android/tools/r8/v0;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->getDesugarLibraryImplementation()Ljava/util/Collection;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->getOutputConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v6

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->getLibrary()Ljava/util/Collection;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;-><init>(IZLcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/v0;Ljava/util/Collection;Lcom/android/tools/r8/StringConsumer;Ljava/util/Collection;)V

    .line 9
    invoke-virtual {v8}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->run()Lcom/android/tools/r8/internal/C2;

    return-void
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 2

    .line 13
    :try_start_0
    invoke-static {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic d([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/q;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/q;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->isHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->getUsageMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->isVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesugaredMethodsList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->getReporter()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/p;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/p;-><init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V

    .line 6
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/lv;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method public static run([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;->parse([Ljava/lang/String;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->run(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsListCommand;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;Ljava/util/ArrayList;)V
    .locals 3

    .line 10
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    check-cast v0, Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->l:Lcom/android/tools/r8/StringConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {v1, v0, v2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->l:Lcom/android/tools/r8/StringConsumer;

    iget-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {p1, p2}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public run()Lcom/android/tools/r8/internal/C2;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->b:Lcom/android/tools/r8/internal/vm;

    .line 8
    invoke-interface {v0}, Lcom/android/tools/r8/internal/vm;->d()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    .line 9
    new-instance v8, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->f:Ljava/util/Collection;

    iget-object v5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->j:Lcom/android/tools/r8/internal/C2;

    iget-boolean v6, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->k:Z

    const/4 v4, 0x1

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/Collection;ZLcom/android/tools/r8/internal/C2;ZZ)V

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->d:Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/a;->c:Lcom/android/tools/r8/v0;

    .line 10
    invoke-virtual {v8, v1, v2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->b(Ljava/util/Collection;Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/DesugaredMethodsList;->j:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;)V

    return-object v0
.end method
