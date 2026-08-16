.class Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;
.super Lorg/openjdk/tools/javac/file/PathFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/PathFileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleFileObject"
.end annotation


# instance fields
.field private final userPath:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)V

    .line 3
    iput-object p3, p0, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;->userPath:Ljava/nio/file/Path;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/PathFileObject$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    return-void
.end method


# virtual methods
.method public getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;->userPath:Ljava/nio/file/Path;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;->userPath:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;->userPath:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSibling(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/PathFileObject;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v2, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;->userPath:Ljava/nio/file/Path;

    invoke-interface {v3, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, v0}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/PathFileObject;->toBinaryName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject$SimpleFileObject;->userPath:Ljava/nio/file/Path;

    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject;->isPathNameCompatible(Ljava/nio/file/Path;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    return p1
.end method
