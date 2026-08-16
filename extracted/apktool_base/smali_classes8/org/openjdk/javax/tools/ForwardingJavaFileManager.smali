.class public Lorg/openjdk/javax/tools/ForwardingJavaFileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lorg/openjdk/javax/tools/JavaFileManager;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/javax/tools/JavaFileManager;"
    }
.end annotation


# instance fields
.field protected final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object p1, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileManager;->close()V

    return-void
.end method

.method public contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p1

    return p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileManager;->flush()V

    return-void
.end method

.method public getClassLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->getClassLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    return-object p1
.end method

.method public getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    return-object p1
.end method

.method public getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method public getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    return-object p1
.end method

.method public getServiceLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->getServiceLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object p1

    return-object p1
.end method

.method public handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result p1

    return p1
.end method

.method public hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result p1

    return p1
.end method

.method public inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p1

    return p1
.end method

.method public isSupportedOption(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/OptionChecker;->isSupportedOption(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;Z)",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/JavaFileManager;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public listLocationsForModules(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
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

    iget-object v0, p0, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->listLocationsForModules(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
