.class public interface abstract Lorg/openjdk/javax/tools/StandardJavaFileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;
    }
.end annotation


# virtual methods
.method public asPath(Lorg/openjdk/javax/tools/FileObject;)Ljava/nio/file/Path;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public varargs abstract getJavaFileObjects([Ljava/io/File;)Ljava/lang/Iterable;
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
.end method

.method public varargs abstract getJavaFileObjects([Ljava/lang/String;)Ljava/lang/Iterable;
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
.end method

.method public varargs getJavaFileObjects([Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 0
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

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjectsFromPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public abstract getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
.end method

.method public getJavaFileObjectsFromPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
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

    invoke-static {p1}, Lorg/openjdk/javax/tools/FileManagerUtils;->asFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public abstract getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
.end method

.method public abstract getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
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
.end method

.method public getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;
    .locals 0
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

    invoke-interface {p0, p1}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/javax/tools/FileManagerUtils;->asPaths(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public abstract isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z
.end method

.method public abstract setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
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
.end method

.method public setLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/String;",
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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setLocationFromPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/util/Collection;)V
    .locals 0
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

    invoke-static {p2}, Lorg/openjdk/javax/tools/FileManagerUtils;->asFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    return-void
.end method

.method public setPathFactory(Lorg/openjdk/javax/tools/StandardJavaFileManager$PathFactory;)V
    .locals 0

    return-void
.end method
