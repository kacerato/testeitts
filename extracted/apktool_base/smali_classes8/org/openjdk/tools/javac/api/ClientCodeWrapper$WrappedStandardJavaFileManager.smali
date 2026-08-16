.class public Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedStandardJavaFileManager;
.super Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/StandardJavaFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedStandardJavaFileManager"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/StandardJavaFileManager;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedStandardJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/JavaFileManager;)V

    return-void
.end method


# virtual methods
.method public asPath(Lorg/openjdk/javax/tools/FileObject;)Ljava/nio/file/Path;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->asPath(Lorg/openjdk/javax/tools/FileObject;)Ljava/nio/file/Path;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public varargs getJavaFileObjects([Ljava/io/File;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjects([Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    .line 2
    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3
    :goto_1
    throw p1
.end method

.method public varargs getJavaFileObjects([Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjects([Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    .line 8
    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :goto_1
    throw p1
.end method

.method public varargs getJavaFileObjects([Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjects([Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    .line 5
    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :goto_1
    throw p1
.end method

.method public getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public getJavaFileObjectsFromPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjectsFromPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method

.method public setLocationFromPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/util/Collection<",
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

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->setLocationFromPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method

.method public setPathFactory(Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->setPathFactory(Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method
