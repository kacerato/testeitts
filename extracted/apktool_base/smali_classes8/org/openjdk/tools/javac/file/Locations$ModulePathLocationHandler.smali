.class Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModulePathLocationHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;
    }
.end annotation


# instance fields
.field private moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public varargs constructor <init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->lambda$listLocationsForModules$0()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->isModuleName(Ljava/lang/String;)Z

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

.method private checkValidModulePathEntry(Ljava/nio/file/Path;)V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".jmod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initModuleLocations()V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->listLocationsForModules()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/tools/JavaFileManager$Location;

    instance-of v3, v2, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-static {v3}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->access$1000(Lorg/openjdk/tools/javac/file/Locations$ModuleTable;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->access$900(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private isModuleName(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$listLocationsForModules$0()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;-><init>(Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;)V

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/nio/file/Path;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->initModuleLocations()V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->contains(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public getLocationForModule(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->initModuleLocations()V

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    return-object p1
.end method

.method public getLocationForModule(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->initModuleLocations()V

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p1

    return-object p1
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
    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->access$000(Lorg/openjdk/tools/javac/file/Locations;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->setPaths(Ljava/lang/Iterable;)V

    const/4 p1, 0x1

    return p1
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->searchPath:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/file/g;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/file/g;-><init>(Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;)V

    return-object v0
.end method

.method public setPaths(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->checkValidModulePathEntry(Ljava/nio/file/Path;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->setPaths(Ljava/lang/Iterable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

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

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->checkPaths(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->initModuleLocations()V

    iget-object p2, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->get(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

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

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->add(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    goto :goto_0

    :cond_0
    iput-object v5, p2, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;->searchPath:Ljava/util/Collection;

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->moduleTable:Lorg/openjdk/tools/javac/file/Locations$ModuleTable;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations$ModuleTable;->updatePaths(Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;)V

    :goto_0
    return-void
.end method
