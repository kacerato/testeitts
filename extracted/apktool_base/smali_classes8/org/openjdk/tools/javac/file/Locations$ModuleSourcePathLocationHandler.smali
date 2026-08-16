.class Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleSourcePathLocationHandler"
.end annotation


# instance fields
.field private final checkModuleInfo:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/Locations;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    sget-object p1, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->MODULE_SOURCE_PATH:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;-><init>(Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    new-instance p1, Lorg/openjdk/tools/javac/file/h;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/file/h;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->checkModuleInfo:Ljava/util/function/Predicate;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->lambda$add$2(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->lambda$initModuleTable$0(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->lambda$new$1(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private checkPaths(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->checkDirectory(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private expandBraces(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, v0

    move v5, v4

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "mismatched braces"

    if-ge v4, v6, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2c

    const/4 v9, 0x1

    if-eq v6, v8, :cond_4

    const/16 v8, 0x7b

    if-eq v6, v8, :cond_3

    const/16 v8, 0x7d

    if-eq v6, v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_2

    if-eq v5, v9, :cond_1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->expandBraces(Ljava/lang/String;Ljava/util/Collection;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v9, :cond_5

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v4}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->getMatchingBrace(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    move-object v10, v2

    move-object v2, v1

    move v1, v3

    move-object v3, v10

    goto :goto_1

    :cond_4
    if-ne v5, v9, :cond_5

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->expandBraces(Ljava/lang/String;Ljava/util/Collection;)V

    add-int/lit8 v1, v4, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-gtz v5, :cond_7

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initModuleTable(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    new-instance v0, Lorg/openjdk/tools/javac/file/i;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/file/i;-><init>(Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private isSeparator(C)Z
    .locals 1

    sget-char v0, Ljava/io/File;->separatorChar:C

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static synthetic lambda$add$2(Ljava/nio/file/Path;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initModuleTable$0(Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->checkModuleInfo:Ljava/util/function/Predicate;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$1(Ljava/nio/file/Path;)Z
    .locals 1

    const-string v0, "module-info.java"

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public add(Ljava/util/Map;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;>;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/Locations;->access$100(Lorg/openjdk/tools/javac/file/Locations;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "dir.path.element.not.directory"

    goto :goto_0

    :cond_0
    const-string p1, "dir.path.element.not.found"

    :goto_0
    iget-object p3, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p3}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p3

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/file/j;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/file/j;-><init>()V

    invoke-static {p2, v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    if-nez p3, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    invoke-interface {v2, p3}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    :goto_2
    new-array v4, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_3
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    :try_start_2
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    goto :goto_6

    :goto_4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_7

    :try_start_4
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw p3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_7
    return-void
.end method

.method public contains(Ljava/nio/file/Path;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->contains(Ljava/nio/file/Path;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getLocationForModule(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLocationForModule(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getMatchingBrace(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    return p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mismatched braces"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPaths()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->paths:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "paths not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->init(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public init(Ljava/lang/String;)V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-direct {p0, v4, v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->expandBraces(Ljava/lang/String;Ljava/util/Collection;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    iget-object v6, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-array v7, v2, [Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Lorg/openjdk/tools/javac/file/Locations;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v5}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->add(Ljava/util/Map;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v9, "illegal use of * in "

    if-eqz v7, :cond_5

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->isSeparator(C)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v4, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    new-array v12, v2, [Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lorg/openjdk/tools/javac/file/Locations;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/file/Locations;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0, p1, v10, v5}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->add(Ljava/util/Map;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    if-nez v5, :cond_1

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->initModuleTable(Ljava/util/Map;)V

    if-eqz v3, :cond_7

    move-object v1, v5

    :cond_7
    iput-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->paths:Ljava/util/List;

    return-void
.end method

.method public isSet()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listLocationsForModules()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->locations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setPaths(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->add(Ljava/util/Map;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->initModuleTable(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->paths:Ljava/util/List;

    return-void
.end method

.method public setPathsForModule(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->checkPaths(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez p2, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v2}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    goto :goto_0

    :cond_1
    iput-object v5, p2, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModuleSourcePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->updatePaths(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    :goto_0
    return-void
.end method
