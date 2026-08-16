.class Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;-><init>(Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;)V
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

.field final synthetic val$root:Ljava/nio/file/Path;

.field final synthetic val$this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;Lorg/openjdk/tools/javac/file/JavacFileManager;Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;->this$1:Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;

    iput-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;->val$this$0:Lorg/openjdk/tools/javac/file/JavacFileManager;

    iput-object p3, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;->val$root:Ljava/nio/file/Path;

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

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2

    .line 2
    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;->this$1:Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->access$600(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;Ljava/nio/file/Path;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;->this$1:Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;

    invoke-static {p2}, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;->access$700(Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer;)Ljava/util/Map;

    move-result-object p2

    new-instance v0, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/JavacFileManager$ArchiveContainer$1;->val$root:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method
