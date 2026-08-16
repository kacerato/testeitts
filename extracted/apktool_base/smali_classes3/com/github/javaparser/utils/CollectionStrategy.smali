.class public interface abstract Lcom/github/javaparser/utils/CollectionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/CollectionStrategy;->lambda$getRoot$3(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/ParseProblemException;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/CollectionStrategy;->lambda$getRoot$2(Lcom/github/javaparser/ParseProblemException;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ParseResult;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/CollectionStrategy;->lambda$getRoot$0(Lcom/github/javaparser/ParseResult;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/RuntimeException;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/CollectionStrategy;->lambda$getRoot$4(Ljava/lang/RuntimeException;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/CollectionStrategy;->lambda$getRoot$1(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/CollectionStrategy;->lambda$getRoot$6(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/utils/CollectionStrategy;->lambda$getRoot$5(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getRoot$0(Lcom/github/javaparser/ParseResult;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parseResult"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getRoot$1(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "file"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$getRoot$2(Lcom/github/javaparser/ParseProblemException;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "e"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getRoot$3(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "file"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$getRoot$4(Ljava/lang/RuntimeException;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "e"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getRoot$5(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "file"
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$getRoot$6(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "e"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract collect(Ljava/nio/file/Path;)Lcom/github/javaparser/utils/ProjectRoot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public abstract getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;
.end method

.method public getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    return-object p1
.end method

.method public getRoot(Ljava/nio/file/Path;)Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/github/javaparser/JavaParser;

    invoke-interface {p0}, Lcom/github/javaparser/utils/CollectionStrategy;->getParserConfiguration()Lcom/github/javaparser/ParserConfiguration;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/github/javaparser/JavaParser;-><init>(Lcom/github/javaparser/ParserConfiguration;)V

    invoke-virtual {v3, p1}, Lcom/github/javaparser/JavaParser;->parse(Ljava/nio/file/Path;)Lcom/github/javaparser/ParseResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/github/javaparser/utils/a;

    invoke-direct {v5}, Lcom/github/javaparser/utils/a;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "module-info.java"

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/javaparser/ast/CompilationUnit$Storage;

    invoke-virtual {v5}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :cond_0
    new-instance v3, Lcom/github/javaparser/utils/b;

    invoke-direct {v3}, Lcom/github/javaparser/utils/b;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v4, "Storage information not present -- an issue with providing a string rather than file reference?"

    new-array v5, v2, [Ljava/util/function/Supplier;

    invoke-static {v4, v5}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    :cond_2
    const-string v4, "Parse result not present"

    new-array v5, v2, [Ljava/util/function/Supplier;

    invoke-static {v4, v5}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    :cond_3
    const-string v4, "Parsing was not successful."

    new-array v5, v2, [Ljava/util/function/Supplier;

    invoke-static {v4, v5}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    const-string v4, "There were (%d) problems parsing file: %s"

    new-instance v5, Lcom/github/javaparser/utils/c;

    invoke-direct {v5, v3}, Lcom/github/javaparser/utils/c;-><init>(Lcom/github/javaparser/ParseResult;)V

    new-instance v6, Lcom/github/javaparser/utils/d;

    invoke-direct {v6, v3}, Lcom/github/javaparser/utils/d;-><init>(Lcom/github/javaparser/ParseResult;)V

    new-array v3, v1, [Ljava/util/function/Supplier;

    aput-object v5, v3, v2

    aput-object v6, v3, v0

    invoke-static {v4, v3}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/github/javaparser/ParseProblemException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_0
    new-instance v4, Lcom/github/javaparser/utils/i;

    invoke-direct {v4, p1}, Lcom/github/javaparser/utils/i;-><init>(Ljava/nio/file/Path;)V

    new-instance p1, Lcom/github/javaparser/utils/j;

    invoke-direct {p1, v3}, Lcom/github/javaparser/utils/j;-><init>(Ljava/io/IOException;)V

    new-array v1, v1, [Ljava/util/function/Supplier;

    aput-object v4, v1, v2

    aput-object p1, v1, v0

    const-string p1, "Could not read file %s : %s"

    invoke-static {p1, v1}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    goto :goto_3

    :goto_1
    new-instance v4, Lcom/github/javaparser/utils/g;

    invoke-direct {v4, p1}, Lcom/github/javaparser/utils/g;-><init>(Ljava/nio/file/Path;)V

    new-instance p1, Lcom/github/javaparser/utils/h;

    invoke-direct {p1, v3}, Lcom/github/javaparser/utils/h;-><init>(Ljava/lang/RuntimeException;)V

    new-array v1, v1, [Ljava/util/function/Supplier;

    aput-object v4, v1, v2

    aput-object p1, v1, v0

    const-string p1, "Could not parse file %s : %s"

    invoke-static {p1, v1}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    goto :goto_3

    :goto_2
    new-instance v4, Lcom/github/javaparser/utils/e;

    invoke-direct {v4, p1}, Lcom/github/javaparser/utils/e;-><init>(Ljava/nio/file/Path;)V

    new-instance p1, Lcom/github/javaparser/utils/f;

    invoke-direct {p1, v3}, Lcom/github/javaparser/utils/f;-><init>(Lcom/github/javaparser/ParseProblemException;)V

    new-array v1, v1, [Ljava/util/function/Supplier;

    aput-object v4, v1, v2

    aput-object p1, v1, v0

    const-string p1, "Problem parsing file %s : %s"

    invoke-static {p1, v1}, Lcom/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    :goto_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
