.class public final Lcom/github/javaparser/JavaParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private astParser:Lcom/github/javaparser/GeneratedJavaParser;

.field private final configuration:Lcom/github/javaparser/ParserConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/ParserConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/javaparser/JavaParser;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/ParserConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/github/javaparser/JavaParser;->astParser:Lcom/github/javaparser/GeneratedJavaParser;

    .line 4
    iput-object p1, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/JavaParser;->lambda$parse$2(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/JavaParser;Ljava/io/File;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/JavaParser;->lambda$parse$1(Ljava/io/File;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method

.method public static synthetic c(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/JavaParser;->lambda$parse$0(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method

.method public static synthetic d(Lcom/github/javaparser/JavaParser;Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/JavaParser;->lambda$parse$3(Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method

.method private getParserForProvider(Lcom/github/javaparser/Provider;)Lcom/github/javaparser/GeneratedJavaParser;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/JavaParser;->astParser:Lcom/github/javaparser/GeneratedJavaParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/javaparser/GeneratedJavaParser;

    invoke-direct {v0, p1}, Lcom/github/javaparser/GeneratedJavaParser;-><init>(Lcom/github/javaparser/Provider;)V

    iput-object v0, p0, Lcom/github/javaparser/JavaParser;->astParser:Lcom/github/javaparser/GeneratedJavaParser;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/javaparser/GeneratedJavaParserBase;->reset(Lcom/github/javaparser/Provider;)V

    :goto_0
    iget-object p1, p0, Lcom/github/javaparser/JavaParser;->astParser:Lcom/github/javaparser/GeneratedJavaParser;

    iget-object v0, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->getTabSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/GeneratedJavaParser;->setTabSize(I)V

    iget-object p1, p0, Lcom/github/javaparser/JavaParser;->astParser:Lcom/github/javaparser/GeneratedJavaParser;

    iget-object v0, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->isStoreTokens()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/GeneratedJavaParserBase;->setStoreTokens(Z)V

    iget-object p1, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p1}, Lcom/github/javaparser/ParserConfiguration;->getLanguageLevel()Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->isYieldSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/github/javaparser/JavaParser;->astParser:Lcom/github/javaparser/GeneratedJavaParser;

    invoke-virtual {p1}, Lcom/github/javaparser/GeneratedJavaParserBase;->setYieldSupported()V

    :cond_1
    iget-object p1, p0, Lcom/github/javaparser/JavaParser;->astParser:Lcom/github/javaparser/GeneratedJavaParser;

    return-object p1
.end method

.method private static synthetic lambda$parse$0(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "file",
            "encoding",
            "cu"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method private synthetic lambda$parse$1(Ljava/io/File;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "file",
            "cu"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    iget-object v0, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method private static synthetic lambda$parse$2(Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "path",
            "encoding",
            "cu"
        }
    .end annotation

    invoke-virtual {p2, p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method private synthetic lambda$parse$3(Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "path",
            "cu"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method


# virtual methods
.method public getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    return-object v0
.end method

.method public parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">(",
            "Lcom/github/javaparser/ParseStart<",
            "TN;>;",
            "Lcom/github/javaparser/Provider;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    .line 4
    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->getProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/m;

    invoke-direct {v1}, Lcom/github/javaparser/m;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/Processor;

    .line 6
    invoke-virtual {v2, p2}, Lcom/github/javaparser/Processor;->preProcess(Lcom/github/javaparser/Provider;)Lcom/github/javaparser/Provider;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p2}, Lcom/github/javaparser/JavaParser;->getParserForProvider(Lcom/github/javaparser/Provider;)Lcom/github/javaparser/GeneratedJavaParser;

    move-result-object v1

    .line 8
    :try_start_0
    invoke-interface {p1, v1}, Lcom/github/javaparser/ParseStart;->parse(Lcom/github/javaparser/GeneratedJavaParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    .line 9
    new-instance v2, Lcom/github/javaparser/ParseResult;

    iget-object v3, v1, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    invoke-virtual {v1}, Lcom/github/javaparser/GeneratedJavaParserBase;->getCommentsCollection()Lcom/github/javaparser/ast/comments/CommentsCollection;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/github/javaparser/ParseResult;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/github/javaparser/ast/comments/CommentsCollection;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Processor;

    .line 11
    iget-object v3, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0, v2, v3}, Lcom/github/javaparser/Processor;->postProcess(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {v2}, Lcom/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/github/javaparser/Problem;->PROBLEM_BY_BEGIN_POSITION:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v2

    .line 14
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Unknown error"

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_3
    iget-object v2, v1, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    new-instance v3, Lcom/github/javaparser/Problem;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p1}, Lcom/github/javaparser/Problem;-><init>(Ljava/lang/String;Lcom/github/javaparser/TokenRange;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p1, Lcom/github/javaparser/ParseResult;

    iget-object v0, v1, Lcom/github/javaparser/GeneratedJavaParserBase;->problems:Ljava/util/List;

    invoke-virtual {v1}, Lcom/github/javaparser/GeneratedJavaParserBase;->getCommentsCollection()Lcom/github/javaparser/ast/comments/CommentsCollection;

    move-result-object v1

    invoke-direct {p1, v4, v0, v1}, Lcom/github/javaparser/ParseResult;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/github/javaparser/ast/comments/CommentsCollection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object p1

    :goto_4
    :try_start_4
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 18
    :catch_3
    throw p1
.end method

.method public parse(Ljava/io/File;)Lcom/github/javaparser/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    iget-object v1, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    .line 24
    invoke-virtual {v1}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/github/javaparser/Providers;->provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/n;

    invoke-direct {v2, p0, p1}, Lcom/github/javaparser/n;-><init>(Lcom/github/javaparser/JavaParser;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public parse(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "file",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 21
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lcom/github/javaparser/Providers;->provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/l;

    invoke-direct {v2, p1, p2}, Lcom/github/javaparser/l;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/JavaParser;->parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "in",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lcom/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/io/Reader;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/nio/file/Path;)Lcom/github/javaparser/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    iget-object v1, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    .line 29
    invoke-virtual {v1}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/o;

    invoke-direct {v2, p0, p1}, Lcom/github/javaparser/o;-><init>(Lcom/github/javaparser/JavaParser;Ljava/nio/file/Path;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public parse(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lcom/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/p;

    invoke-direct {v2, p1, p2}, Lcom/github/javaparser/p;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public parseAnnotation(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->ANNOTATION:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseAnnotationBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->ANNOTATION_BODY:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseArrayInitializerExpr(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrayInitializerExpr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->ARRAY_INITIALIZER_EXPR:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseBlock(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "blockStatement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/stmt/BlockStmt;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->BLOCK:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseBodyDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->CLASS_BODY:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseClassOrInterfaceType(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/type/ClassOrInterfaceType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->CLASS_OR_INTERFACE_TYPE:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseExplicitConstructorInvocationStmt(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->EXPLICIT_CONSTRUCTOR_INVOCATION_STMT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseExpression(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->EXPRESSION:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseImport(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->IMPORT_DECLARATION:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseMethodDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->METHOD_DECLARATION:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseModuleDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/modules/ModuleDeclaration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->MODULE_DECLARATION:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseModuleDirective(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDirective"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/modules/ModuleDirective;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->MODULE_DIRECTIVE:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseName(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/expr/Name;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->NAME:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parsePackageDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/PackageDeclaration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->PACKAGE_DECLARATION:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseParameter(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->PARAMETER:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseResource(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "classLoader",
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1, p2, p3}, Lcom/github/javaparser/Providers;->resourceProvider(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseResource(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    iget-object v1, p0, Lcom/github/javaparser/JavaParser;->configuration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v1}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/github/javaparser/Providers;->resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseResource(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1, p2}, Lcom/github/javaparser/Providers;->resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseSimpleName(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->SIMPLE_NAME:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseStatement(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->STATEMENT:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseType(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->TYPE:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseTypeDeclaration(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->TYPE_DECLARATION:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseTypeParameter(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/type/TypeParameter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->TYPE_PARAMETER:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public parseVariableDeclarationExpr(Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ParseStart;->VARIABLE_DECLARATION_EXPR:Lcom/github/javaparser/ParseStart;

    invoke-static {p1}, Lcom/github/javaparser/Providers;->provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method
