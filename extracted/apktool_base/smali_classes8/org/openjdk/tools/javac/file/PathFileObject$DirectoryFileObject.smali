.class Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;
.super Lorg/openjdk/tools/javac/file/PathFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/PathFileObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryFileObject"
.end annotation


# instance fields
.field private final relativePath:Lorg/openjdk/tools/javac/file/RelativePath;

.field private final userPackageRootDir:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;)V

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Ljava/nio/file/Path;

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->userPackageRootDir:Ljava/nio/file/Path;

    .line 4
    iput-object p4, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->relativePath:Lorg/openjdk/tools/javac/file/RelativePath;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;Lorg/openjdk/tools/javac/file/PathFileObject$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->relativePath:Lorg/openjdk/tools/javac/file/RelativePath;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->userPackageRootDir:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/file/RelativePath;->resolveAgainst(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSibling(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/PathFileObject;
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->fileManager:Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/PathFileObject;->path:Ljava/nio/file/Path;

    invoke-interface {v2, p1}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->userPackageRootDir:Ljava/nio/file/Path;

    new-instance v4, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;

    iget-object v5, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->relativePath:Lorg/openjdk/tools/javac/file/RelativePath;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/file/RelativePath;->dirname()Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeFile;-><init>(Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath;)V

    return-object v0
.end method

.method public inferBinaryName(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
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

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->relativePath:Lorg/openjdk/tools/javac/file/RelativePath;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->toBinaryName(Lorg/openjdk/tools/javac/file/RelativePath;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectoryFileObject["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->userPackageRootDir:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/PathFileObject$DirectoryFileObject;->relativePath:Lorg/openjdk/tools/javac/file/RelativePath;

    iget-object v1, v1, Lorg/openjdk/tools/javac/file/RelativePath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
