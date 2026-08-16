.class Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputLocationHandler"
.end annotation


# instance fields
.field private listed:Z

.field private moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

.field private outputDir:Ljava/nio/file/Path;

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public varargs constructor <init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;-><init>(Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method

.method public static synthetic access$1400(Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;)Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/nio/file/Path;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->contains(Ljava/nio/file/Path;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/Locations;->normalize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->normalize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getLocationForModule(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 5
    new-instance v8, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v3}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    .line 7
    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, v8}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    move-object v0, v8

    :cond_1
    return-object v0
.end method

.method public getLocationForModule(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    :goto_0
    return-object p1
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->options:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/file/Locations;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    const/4 p1, 0x1

    return p1
.end method

.method public listLocationsForModules()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->listed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->getLocationForModule(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->listed:Z

    goto :goto_3

    :goto_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2

    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->locations()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->checkSingletonDirectory(Ljava/lang/Iterable;)Ljava/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->outputDir:Ljava/nio/file/Path;

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->listed:Z

    return-void
.end method

.method public setPathsForModule(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 8
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

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->checkSingletonDirectory(Ljava/lang/Iterable;)Ljava/nio/file/Path;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v3}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$OutputLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->updatePaths(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    :goto_0
    return-void
.end method
