.class Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fs:Ljava/nio/file/FileSystem;

.field jdkHome:Ljava/lang/String;

.field modRoot:Ljava/nio/file/Path;

.field private final packageToModule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageToModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModule:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModules:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->modRoot:Ljava/nio/file/Path;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->jdkHome:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->initialize(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->lambda$0(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method private getClassfile(Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getModules(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-lt v3, v1, :cond_0

    move-object v5, v2

    goto :goto_1

    :cond_0
    aget-object v5, v0, v3

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    const-string v6, "/modules"

    filled-new-array {v5, p1}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->safeReadBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    if-eqz v4, :cond_3

    :goto_1
    if-eqz v4, :cond_2

    .line 5
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p2, v4, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    return-object p2

    :cond_2
    return-object v2

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getClassfileBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    const-string v1, "/modules"

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->safeReadBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    return-object p1
.end method

.method public static getNewJrtFileSystem(Ljava/io/File;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystemWithOlderRelease;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private static synthetic lambda$0(Ljava/nio/file/Path;)Z
    .locals 2

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".CLASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public cachePackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModule:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModule:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_0
    if-eq v0, p2, :cond_7

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, "MU"

    const-string v2, "java.base"

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eq v2, p2, :cond_3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_0
    const/4 p2, 0x0

    invoke-interface {p1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModule:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eq v2, v0, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModules:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    return-void
.end method

.method public getClassfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 7
    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getClassfile(Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getClassfileBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_1

    .line 9
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v0, p3, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getClassfile(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 11
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getClassfile(Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IModule;->name()[C

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getClassfileBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 13
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getClassfileContent(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getClassfileBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getModules(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    :goto_1
    move-object p1, v1

    goto :goto_2

    :cond_1
    aget-object v1, p2, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    const-string v4, "/modules"

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->safeReadBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :goto_2
    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getContentFromJrt(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "/modules"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array p2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->getModules(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v2, p2

    if-eqz v2, :cond_1

    aget-object p2, p2, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array p2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModules(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModule:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "MU"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->DEFAULT_MODULE:[Ljava/lang/String;

    return-object p1
.end method

.method public getModulesDeclaringPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModule:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MU"

    const/4 v2, 0x0

    if-nez p2, :cond_2

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModules:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v2
.end method

.method public hasClassFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->packageToModule:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "MU"

    if-eq v1, v2, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    const-string v2, "/modules"

    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array p2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/util/a;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/compiler/util/a;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public initialize(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->jdkHome:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jrt-fs.jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->jdkHome:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->jdkHome:Ljava/lang/String;

    const-string v0, "lib"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    :goto_0
    const-string p1, "modules.to.load"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->MODULE_TO_LOAD:Ljava/lang/String;

    const-string p1, "java.version"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "1.8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/net/URLClassLoader;

    filled-new-array {v0}, [Ljava/net/URL;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->JRT_URI:Ljava/net/URI;

    invoke-static {v1, v0, p1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/nio/file/FileSystem;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "java.home"

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->jdkHome:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->JRT_URI:Ljava/net/URI;

    invoke-static {v0, p1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/modules"

    invoke-virtual {p1, v1, v0}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->modRoot:Ljava/nio/file/Path;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->walkJrtForModules()V

    return-void
.end method

.method public walkJrtForModules()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->fs:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getRootDirectories()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_2

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/modules"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$1;

    invoke-direct {v5, p0, v4}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$1;-><init>(Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;Ljava/nio/file/Path;)V

    invoke-static {v4, v5}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_3
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_4

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    move-object v0, v2

    :cond_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public walkModuleImage(Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor<",
            "Ljava/nio/file/Path;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;->modRoot:Ljava/nio/file/Path;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;

    invoke-direct {v1, p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem$2;-><init>(Lorg/eclipse/jdt/internal/compiler/util/JrtFileSystem;ILorg/eclipse/jdt/internal/compiler/util/JRTUtil$JrtFileVisitor;)V

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-void
.end method
