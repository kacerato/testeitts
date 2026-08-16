.class public Lcom/github/javaparser/utils/SourceZip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/utils/SourceZip$Callback;
    }
.end annotation


# instance fields
.field private parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

.field private final zipPath:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipPath"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/ParserConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/utils/SourceZip;-><init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/github/javaparser/ParserConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zipPath",
            "configuration"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    .line 6
    iput-object p2, p0, Lcom/github/javaparser/utils/SourceZip;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    .line 7
    new-instance p1, Lcom/github/javaparser/utils/X;

    invoke-direct {p1, p0}, Lcom/github/javaparser/utils/X;-><init>(Lcom/github/javaparser/utils/SourceZip;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/util/function/Supplier;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "New source zip at \"%s\""

    invoke-static {p1, p2}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/utils/SourceZip;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/utils/SourceZip;->lambda$parse$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/utils/SourceZip;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/utils/SourceZip;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/zip/ZipEntry;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/SourceZip;->lambda$parse$4(Ljava/util/zip/ZipEntry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/github/javaparser/utils/SourceZip;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/utils/SourceZip;->lambda$parse$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/List;Ljava/nio/file/Path;Lcom/github/javaparser/ParseResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/utils/SourceZip;->lambda$parse$2(Ljava/util/List;Ljava/nio/file/Path;Lcom/github/javaparser/ParseResult;)V

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method private synthetic lambda$parse$1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method private static synthetic lambda$parse$2(Ljava/util/List;Ljava/nio/file/Path;Lcom/github/javaparser/ParseResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "results",
            "path",
            "result"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/utils/Pair;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$parse$3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method private static synthetic lambda$parse$4(Ljava/util/zip/ZipEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceZip;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    return-object v0
.end method

.method public getZipPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method public parse(Lcom/github/javaparser/utils/SourceZip$Callback;)Lcom/github/javaparser/utils/SourceZip;
    .locals 9
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

    .line 4
    new-instance v0, Lcom/github/javaparser/utils/V;

    invoke-direct {v0, p0}, Lcom/github/javaparser/utils/V;-><init>(Lcom/github/javaparser/utils/SourceZip;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/util/function/Supplier;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Parsing zip at \"%s\""

    invoke-static {v0, v2}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 5
    new-instance v0, Lcom/github/javaparser/JavaParser;

    iget-object v2, p0, Lcom/github/javaparser/utils/SourceZip;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    invoke-direct {v0, v2}, Lcom/github/javaparser/JavaParser;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    .line 6
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/github/javaparser/utils/SourceZip;->zipPath:Ljava/nio/file/Path;

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 7
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 8
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".java"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    const-string v6, "Parsing zip entry \"%s\""

    new-instance v7, Lcom/github/javaparser/utils/W;

    invoke-direct {v7, v5}, Lcom/github/javaparser/utils/W;-><init>(Ljava/util/zip/ZipEntry;)V

    new-array v8, v1, [Ljava/util/function/Supplier;

    aput-object v7, v8, v3

    invoke-static {v6, v8}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 10
    sget-object v6, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    .line 11
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/github/javaparser/Providers;->provider(Ljava/io/InputStream;)Lcom/github/javaparser/Provider;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object v6

    .line 12
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {p1, v5, v6}, Lcom/github/javaparser/utils/SourceZip$Callback;->process(Ljava/nio/file/Path;Lcom/github/javaparser/ParseResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    return-object p0

    .line 14
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 15
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method public parse()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/utils/Pair<",
            "Ljava/nio/file/Path;",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/utils/T;

    invoke-direct {v0, p0}, Lcom/github/javaparser/utils/T;-><init>(Lcom/github/javaparser/utils/SourceZip;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/function/Supplier;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Parsing zip at \"%s\""

    invoke-static {v0, v1}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/github/javaparser/utils/U;

    invoke-direct {v1, v0}, Lcom/github/javaparser/utils/U;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/github/javaparser/utils/SourceZip;->parse(Lcom/github/javaparser/utils/SourceZip$Callback;)Lcom/github/javaparser/utils/SourceZip;

    return-object v0
.end method

.method public setParserConfiguration(Lcom/github/javaparser/ParserConfiguration;)Lcom/github/javaparser/utils/SourceZip;
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

    iput-object p1, p0, Lcom/github/javaparser/utils/SourceZip;->parserConfiguration:Lcom/github/javaparser/ParserConfiguration;

    return-object p0
.end method
