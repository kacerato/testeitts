.class Lorg/openjdk/tools/javac/file/PathFileObject$JRTFileObject;
.super Lorg/openjdk/tools/javac/file/PathFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/PathFileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JRTFileObject"
.end annotation


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/PathFileObject$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject$JRTFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSibling(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/PathFileObject;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/file/PathFileObject$JRTFileObject;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v2, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/file/PathFileObject$JRTFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)V

    return-object v0
.end method

.method public inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
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

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    const/4 v0, 0x2

    invoke-interface {p1}, Ljava/nio/file/Path;->getNameCount()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->toBinaryName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JRTFileObject["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
