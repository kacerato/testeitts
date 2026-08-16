.class public Lcom/github/javaparser/utils/SourceRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/utils/SourceRoot$ParallelParse;,
        Lcom/github/javaparser/utils/SourceRoot$Callback;
    }
.end annotation


# static fields
.field private static final JAVA_IDENTIFIER:Ljava/util/regex/Pattern;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

.field private printer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/utils/SourceRoot;->JAVA_IDENTIFIER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/ParserConfiguration;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    .line 4
    new-instance v0, Lcom/github/javaparser/printer/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/github/javaparser/printer/DefaultPrettyPrinter;-><init>()V

    new-instance v1, Lcom/github/javaparser/utils/P;

    invoke-direct {v1, v0}, Lcom/github/javaparser/utils/P;-><init>(Lcom/github/javaparser/printer/DefaultPrettyPrinter;)V

    iput-object v1, p0, Lcom/github/javaparser/utils/SourceRoot;->printer:Ljava/util/function/Function;

    .line 5
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    .line 8
    new-instance p1, Lcom/github/javaparser/utils/Q;

    invoke-direct {p1, p0}, Lcom/github/javaparser/utils/Q;-><init>(Lcom/github/javaparser/utils/SourceRoot;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/function/Supplier;

    aput-object p1, v1, v0

    const-string p1, "New source root at \"%s\""

    invoke-static {p1, v1}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only directories are allowed as root path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "parserConfiguration"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/github/javaparser/utils/SourceRoot;-><init>(Ljava/nio/file/Path;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/github/javaparser/utils/SourceRoot;->setParserConfiguration(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/utils/SourceRoot;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$tryToParse$2(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/github/javaparser/utils/SourceRoot;)Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/utils/SourceRoot;->callback(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot;->lambda$callback$8(Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method

.method public static synthetic c(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot;->lambda$tryToParse$3(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method

.method private callback(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "absolutePath",
            "configuration",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/y;

    invoke-direct {v1, v0}, Lcom/github/javaparser/utils/y;-><init>(Ljava/nio/file/Path;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/util/function/Supplier;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Parsing %s"

    invoke-static {v1, v3}, Lcom/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    new-instance v1, Lcom/github/javaparser/JavaParser;

    invoke-direct {v1, p2}, Lcom/github/javaparser/JavaParser;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    sget-object v3, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-virtual {p2}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/github/javaparser/utils/J;

    invoke-direct {v4, p1, p2}, Lcom/github/javaparser/utils/J;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/github/javaparser/utils/SourceRoot$3;->$SwitchMap$com$github$javaparser$utils$SourceRoot$Callback$Result:[I

    invoke-interface {p3, v0, p1, v1}, Lcom/github/javaparser/utils/SourceRoot$Callback;->process(Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/utils/SourceRoot$Callback$Result;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v2, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    sget-object p1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Return an enum defined in SourceRoot.Callback.Result"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    invoke-virtual {v1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p2

    new-instance p3, Lcom/github/javaparser/utils/K;

    invoke-direct {p3, p0, p1}, Lcom/github/javaparser/utils/K;-><init>(Lcom/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$isSensibleDirectoryToEnter$4(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$add$12(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$getCompilationUnits$16(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$callback$6(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$logPackage$9(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$tryToParse$1(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot;->lambda$callback$7(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method

.method public static synthetic k(Lcom/github/javaparser/utils/SourceRoot;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$add$13(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$add$11(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "startPackage"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$add$12(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "filename"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$add$13(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "path"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$callback$6(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "localPath"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$callback$7(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "absolutePath",
            "configuration",
            "cu"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method private synthetic lambda$callback$8(Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "absolutePath",
            "cu"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/github/javaparser/utils/SourceRoot;->save(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;)Lcom/github/javaparser/utils/SourceRoot;

    return-void
.end method

.method private static synthetic lambda$getCompilationUnits$16(Lcom/github/javaparser/ParseResult;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p0
.end method

.method private static synthetic lambda$isSensibleDirectoryToEnter$4(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "dirToEnter"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$logPackage$9(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "startPackage"
        }
    .end annotation

    return-object p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    return-object v0
.end method

.method private synthetic lambda$parseParallelized$10(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "configuration",
            "callback",
            "absolutePath",
            "attrs"
        }
    .end annotation

    invoke-interface {p4}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-interface {p3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, ".java"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/github/javaparser/utils/SourceRoot;->callback(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/github/javaparser/utils/Log;->error(Ljava/lang/Throwable;)V

    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method private static synthetic lambda$saveAll$14(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "root"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$saveAll$15(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "path"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$tryToParse$1(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "relativePath"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$tryToParse$2(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "path"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$tryToParse$3(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "path",
            "configuration",
            "cu"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method private synthetic lambda$tryToParseParallelized$5(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".java"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p2, p1, v0}, Lcom/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/ParseResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/github/javaparser/utils/Log;->error(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method private logPackage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPackage"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/github/javaparser/utils/L;

    invoke-direct {v0, p1}, Lcom/github/javaparser/utils/L;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/util/function/Supplier;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Parsing package \"%s\""

    invoke-static {v0, p1}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static synthetic m(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$saveAll$14(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/github/javaparser/utils/SourceRoot;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/javaparser/utils/SourceRoot;->lambda$parseParallelized$10(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$add$11(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot;->lambda$tryToParseParallelized$5(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceRoot;->lambda$saveAll$15(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private save(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cu",
            "path"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/utils/SourceRoot;->save(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/utils/SourceRoot;

    move-result-object p1

    return-object p1
.end method

.method private save(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cu",
            "path",
            "encoding"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/ast/CompilationUnit;

    .line 5
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit$Storage;

    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot;->printer:Ljava/util/function/Function;

    invoke-virtual {p1, p2}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->save(Ljava/util/function/Function;)V

    return-object p0
.end method


# virtual methods
.method public add(Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compilationUnit"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/CompilationUnit$Storage;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/github/javaparser/utils/S;

    invoke-direct {v1, v0}, Lcom/github/javaparser/utils/S;-><init>(Ljava/nio/file/Path;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/function/Supplier;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Adding new file %s"

    invoke-static {v1, v2}, Lcom/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 12
    new-instance v1, Lcom/github/javaparser/ParseResult;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/github/javaparser/ParseResult;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/github/javaparser/ast/comments/CommentsCollection;)V

    .line 13
    iget-object p1, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Files added with this method should have their path set."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ast/CompilationUnit;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename",
            "compilationUnit"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/github/javaparser/utils/C;

    invoke-direct {v0, p1}, Lcom/github/javaparser/utils/C;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/github/javaparser/utils/D;

    invoke-direct {v1, p2}, Lcom/github/javaparser/utils/D;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/function/Supplier;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "Adding new file %s.%s"

    invoke-static {v0, v2}, Lcom/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 5
    invoke-static {p1, p2}, Lcom/github/javaparser/utils/CodeGenerationUtils;->fileInPackageRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/github/javaparser/ParseResult;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, v1}, Lcom/github/javaparser/ParseResult;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/github/javaparser/ast/comments/CommentsCollection;)V

    .line 7
    iget-object p3, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getCache()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCompilationUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/G;

    invoke-direct {v1}, Lcom/github/javaparser/utils/G;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/utils/H;

    invoke-direct {v1}, Lcom/github/javaparser/utils/H;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    return-object v0
.end method

.method public getPrinter()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->printer:Ljava/util/function/Function;

    return-object v0
.end method

.method public getRoot()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    return-object v0
.end method

.method public isSensibleDirectoryToEnter(Ljava/nio/file/Path;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/github/javaparser/utils/SourceRoot;->JAVA_IDENTIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    iget-object v4, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-interface {v4, p1}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result p1

    if-nez p1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    new-instance p1, Lcom/github/javaparser/utils/I;

    invoke-direct {p1, v2}, Lcom/github/javaparser/utils/I;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/util/function/Supplier;

    aput-object p1, v1, v0

    const-string p1, "Not processing directory \"%s\""

    invoke-static {p1, v1}, Lcom/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    return v0

    :cond_1
    return v1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ast/CompilationUnit;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/CompilationUnit;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lcom/github/javaparser/ParseProblemException;

    invoke-virtual {p1}, Lcom/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/github/javaparser/ParseProblemException;-><init>(Ljava/util/List;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    new-instance p2, Lcom/github/javaparser/ParseProblemException;

    invoke-direct {p2, p1}, Lcom/github/javaparser/ParseProblemException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public parse(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "configuration",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p3}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-direct {p0, p1}, Lcom/github/javaparser/utils/SourceRoot;->logPackage(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lcom/github/javaparser/utils/CodeGenerationUtils;->packageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    .line 19
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/github/javaparser/utils/SourceRoot$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/github/javaparser/utils/SourceRoot$2;-><init>(Lcom/github/javaparser/utils/SourceRoot;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)V

    invoke-static {p1, v0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    :cond_0
    return-object p0
.end method

.method public parse(Ljava/lang/String;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/javaparser/utils/SourceRoot;->parse(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;

    return-object p0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename",
            "configuration",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p3}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p4}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1, p2}, Lcom/github/javaparser/utils/CodeGenerationUtils;->fileInPackageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/github/javaparser/utils/SourceRoot;->callback(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/github/javaparser/utils/SourceRoot;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;

    return-object p0
.end method

.method public parseParallelized(Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    const-string v0, ""

    iget-object v1, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, v0, v1, p1}, Lcom/github/javaparser/utils/SourceRoot;->parseParallelized(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;

    move-result-object p1

    return-object p1
.end method

.method public parseParallelized(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "configuration",
            "callback"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1}, Lcom/github/javaparser/utils/SourceRoot;->logPackage(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lcom/github/javaparser/utils/CodeGenerationUtils;->packageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

    new-instance v1, Lcom/github/javaparser/utils/E;

    invoke-direct {v1, p0, p2, p3}, Lcom/github/javaparser/utils/E;-><init>(Lcom/github/javaparser/utils/SourceRoot;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)V

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;)V

    .line 8
    new-instance p1, Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {p1}, Ljava/util/concurrent/ForkJoinPool;-><init>()V

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ForkJoinPool;->invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public parseParallelized(Ljava/lang/String;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/javaparser/utils/SourceRoot;->parseParallelized(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/utils/SourceRoot$Callback;)Lcom/github/javaparser/utils/SourceRoot;

    move-result-object p1

    return-object p1
.end method

.method public saveAll()Lcom/github/javaparser/utils/SourceRoot;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/SourceRoot;->saveAll(Ljava/nio/file/Path;)Lcom/github/javaparser/utils/SourceRoot;

    move-result-object v0

    return-object v0
.end method

.method public saveAll(Ljava/nio/charset/Charset;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/utils/SourceRoot;->saveAll(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/utils/SourceRoot;

    move-result-object p1

    return-object p1
.end method

.method public saveAll(Ljava/nio/file/Path;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/utils/SourceRoot;->saveAll(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/utils/SourceRoot;

    move-result-object p1

    return-object p1
.end method

.method public saveAll(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "encoding"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/github/javaparser/utils/z;

    invoke-direct {v1, v0}, Lcom/github/javaparser/utils/z;-><init>(Ljava/util/Map;)V

    new-instance v0, Lcom/github/javaparser/utils/A;

    invoke-direct {v0, p1}, Lcom/github/javaparser/utils/A;-><init>(Ljava/nio/file/Path;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/function/Supplier;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "Saving all files (%s) to %s"

    invoke-static {v0, v2}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-interface {p1, v4}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/javaparser/ParseResult;

    invoke-virtual {v5}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    new-instance v5, Lcom/github/javaparser/utils/B;

    invoke-direct {v5, v4}, Lcom/github/javaparser/utils/B;-><init>(Ljava/nio/file/Path;)V

    new-array v6, v1, [Ljava/util/function/Supplier;

    aput-object v5, v6, v3

    const-string v5, "Saving %s"

    invoke-static {v5, v6}, Lcom/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ParseResult;

    invoke-virtual {v2}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-direct {p0, v2, v4, p2}, Lcom/github/javaparser/utils/SourceRoot;->save(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/utils/SourceRoot;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setParserConfiguration(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parserConfiguration"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    return-object p0
.end method

.method public setPrinter(Ljava/util/function/Function;)Lcom/github/javaparser/utils/SourceRoot;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/javaparser/utils/SourceRoot;"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/github/javaparser/utils/SourceRoot;->printer:Ljava/util/function/Function;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceRoot at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryToParse(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javaparser/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 13
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/ParseResult;

    move-result-object p1

    return-object p1
.end method

.method public tryToParse(Ljava/lang/String;Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/ParserConfiguration;",
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2}, Lcom/github/javaparser/utils/CodeGenerationUtils;->fileInPackageRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/github/javaparser/utils/M;

    invoke-direct {p2, p1}, Lcom/github/javaparser/utils/M;-><init>(Ljava/nio/file/Path;)V

    new-array p3, v1, [Ljava/util/function/Supplier;

    aput-object p2, p3, v0

    const-string p2, "Retrieving cached %s"

    invoke-static {p2, p3}, Lcom/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 6
    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ParseResult;

    return-object p1

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-interface {p2, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    .line 8
    new-instance v2, Lcom/github/javaparser/utils/N;

    invoke-direct {v2, p2}, Lcom/github/javaparser/utils/N;-><init>(Ljava/nio/file/Path;)V

    new-array v1, v1, [Ljava/util/function/Supplier;

    aput-object v2, v1, v0

    const-string v0, "Parsing %s"

    invoke-static {v0, v1}, Lcom/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 9
    new-instance v0, Lcom/github/javaparser/JavaParser;

    invoke-direct {v0, p3}, Lcom/github/javaparser/JavaParser;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    sget-object v1, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    .line 10
    invoke-virtual {p3}, Lcom/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/utils/O;

    invoke-direct {v2, p2, p3}, Lcom/github/javaparser/utils/O;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 12
    iget-object p2, p0, Lcom/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public tryToParse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tryToParse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-direct {p0, p1}, Lcom/github/javaparser/utils/SourceRoot;->logPackage(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lcom/github/javaparser/utils/CodeGenerationUtils;->packageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 17
    new-instance v0, Lcom/github/javaparser/utils/SourceRoot$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/utils/SourceRoot$1;-><init>(Lcom/github/javaparser/utils/SourceRoot;)V

    invoke-static {p1, v0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 18
    invoke-virtual {p0}, Lcom/github/javaparser/utils/SourceRoot;->getCache()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public tryToParseParallelized()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .line 8
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/github/javaparser/utils/SourceRoot;->tryToParseParallelized(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tryToParseParallelized(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lcom/github/javaparser/utils/SourceRoot;->logPackage(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lcom/github/javaparser/utils/CodeGenerationUtils;->packageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;

    new-instance v1, Lcom/github/javaparser/utils/F;

    invoke-direct {v1, p0}, Lcom/github/javaparser/utils/F;-><init>(Lcom/github/javaparser/utils/SourceRoot;)V

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/utils/SourceRoot$ParallelParse;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;)V

    .line 5
    new-instance p1, Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {p1}, Ljava/util/concurrent/ForkJoinPool;-><init>()V

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ForkJoinPool;->invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/github/javaparser/utils/SourceRoot;->getCache()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
