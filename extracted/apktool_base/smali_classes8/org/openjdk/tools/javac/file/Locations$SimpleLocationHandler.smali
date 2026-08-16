.class Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleLocationHandler"
.end annotation


# instance fields
.field protected searchPath:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public varargs constructor <init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;-><init>(Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method


# virtual methods
.method public computePath(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->createPath()Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/nio/file/Path;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->searchPath:Ljava/util/Collection;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/file/Locations;->access$800(Lorg/openjdk/tools/javac/file/Locations;Ljava/util/Collection;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public createPath()Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    return-object v0
.end method

.method public getPaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->searchPath:Ljava/util/Collection;

    return-object v0
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->options:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->createPath()Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->searchPath:Ljava/util/Collection;

    const/4 p1, 0x1

    return p1
.end method

.method public setPaths(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->computePath(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->createPath()Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->searchPath:Ljava/util/Collection;

    return-void
.end method
