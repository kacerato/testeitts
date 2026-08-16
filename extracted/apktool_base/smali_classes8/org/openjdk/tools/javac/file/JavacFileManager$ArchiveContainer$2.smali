.class Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->list(Ljava/nio/file/Path;Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;Ljava/util/Set;ZLorg/openjdk/tools/javac/util/ListBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;

.field final synthetic val$fileKinds:Ljava/util/Set;

.field final synthetic val$resultList:Lorg/openjdk/tools/javac/util/ListBuffer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;Ljava/util/Set;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->this$1:Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->val$fileKinds:Ljava/util/Set;

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->val$resultList:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->this$1:Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->access$600(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 2
    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->val$fileKinds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->this$1:Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;

    iget-object v0, p2, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    .line 4
    invoke-static {p2}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->access$800(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;)Ljava/nio/file/Path;

    move-result-object p2

    .line 5
    invoke-static {v0, p1, p2}, Lorg/openjdk/tools/javac/file/PathFileObject;->forJarPath(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/PathFileObject;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$2;->val$resultList:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 7
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
