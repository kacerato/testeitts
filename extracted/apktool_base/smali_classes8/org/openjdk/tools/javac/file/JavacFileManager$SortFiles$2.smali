.class final enum Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles$2;
.super Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/file/JavacFileManager$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles$2;->compare(Ljava/nio/file/Path;Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/nio/file/Path;Ljava/nio/file/Path;)I
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/file/Path;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method
