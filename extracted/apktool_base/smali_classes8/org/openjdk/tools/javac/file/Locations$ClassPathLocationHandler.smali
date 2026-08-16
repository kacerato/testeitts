.class Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;
.super Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassPathLocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/Locations;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->CLASS_PATH:Lorg/openjdk/tools/javac/main/Option;

    filled-new-array {v1}, [Lorg/openjdk/tools/javac/main/Option;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/javax/tools/JavaFileManager$Location;[Lorg/openjdk/tools/javac/main/Option;)V

    return-void
.end method

.method private lazy()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->searchPath:Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->setPaths(Ljava/lang/Iterable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computePath(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "env.class.path"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "application.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "java.class.path"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "."

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;->createPath()Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->addFiles(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object p1

    return-object p1
.end method

.method public createPath()Lorg/openjdk/tools/javac/file/Locations$SearchPath;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$1;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->expandJarClassPaths(Z)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/file/Locations;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->emptyPathDefault(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/file/Locations$SearchPath;

    move-result-object v0

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

    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/Locations$ClassPathLocationHandler;->lazy()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->searchPath:Ljava/util/Collection;

    return-object v0
.end method
