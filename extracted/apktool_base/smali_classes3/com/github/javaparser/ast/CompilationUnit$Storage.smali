.class public Lcom/github/javaparser/ast/CompilationUnit$Storage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/CompilationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Storage"
.end annotation


# instance fields
.field private final compilationUnit:Lcom/github/javaparser/ast/CompilationUnit;

.field private final encoding:Ljava/nio/charset/Charset;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compilationUnit",
            "path"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Lcom/github/javaparser/ast/CompilationUnit$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;)V

    return-void
.end method

.method private constructor <init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "compilationUnit",
            "path",
            "encoding"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->compilationUnit:Lcom/github/javaparser/ast/CompilationUnit;

    .line 6
    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    .line 7
    iput-object p3, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->encoding:Ljava/nio/charset/Charset;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lcom/github/javaparser/ast/CompilationUnit$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lcom/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/CompilationUnit$Storage;Lcom/github/javaparser/ast/CompilationUnit;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->lambda$save$3(Lcom/github/javaparser/ast/CompilationUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->lambda$getSourceRoot$0(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/CompilationUnit$Storage;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->lambda$getSourceRoot$1(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/CompilationUnit$Storage;)Ljava/nio/file/Path;
    .locals 0

    invoke-direct {p0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->lambda$getSourceRoot$2()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSourceRoot$0(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/utils/CodeGenerationUtils;->packageToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getSourceRoot$1(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pkg"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->getDirectory()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/javaparser/utils/CodeGenerationUtils;->subtractPaths(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getSourceRoot$2()Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->getDirectory()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$save$3(Lcom/github/javaparser/ast/CompilationUnit;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cu"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->compilationUnit:Lcom/github/javaparser/ast/CompilationUnit;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/CompilationUnit;->getPrinter()Lcom/github/javaparser/printer/Printer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/javaparser/printer/Printer;->print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCompilationUnit()Lcom/github/javaparser/ast/CompilationUnit;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->compilationUnit:Lcom/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public getDirectory()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->encoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getSourceRoot()Ljava/nio/file/Path;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->compilationUnit:Lcom/github/javaparser/ast/CompilationUnit;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/s;

    invoke-direct {v1}, Lcom/github/javaparser/ast/s;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/t;

    invoke-direct {v1}, Lcom/github/javaparser/ast/t;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/u;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/u;-><init>(Lcom/github/javaparser/ast/CompilationUnit$Storage;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/v;

    invoke-direct {v1, p0}, Lcom/github/javaparser/ast/v;-><init>(Lcom/github/javaparser/ast/CompilationUnit$Storage;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    return-object v0
.end method

.method public reparse(Lcom/github/javaparser/JavaParser;)Lcom/github/javaparser/ParseResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/JavaParser;",
            ")",
            "Lcom/github/javaparser/ParseResult<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/github/javaparser/ParseStart;->COMPILATION_UNIT:Lcom/github/javaparser/ParseStart;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/github/javaparser/Providers;->provider(Ljava/nio/file/Path;)Lcom/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/github/javaparser/JavaParser;->parse(Lcom/github/javaparser/ParseStart;Lcom/github/javaparser/Provider;)Lcom/github/javaparser/ParseResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public save()V
    .locals 1

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/w;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/w;-><init>(Lcom/github/javaparser/ast/CompilationUnit$Storage;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->save(Ljava/util/function/Function;)V

    return-void
.end method

.method public save(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "makeOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->encoding:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->save(Ljava/util/function/Function;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public save(Ljava/util/function/Function;Ljava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "makeOutput",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/CompilationUnit$Storage;->getCompilationUnit()Lcom/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    new-array p2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, p1, p2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
