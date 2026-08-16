.class public Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;
.super Lorg/openjdk/javax/tools/ForwardingJavaFileManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lorg/openjdk/javax/tools/JavaFileManager;",
        ">",
        "Lorg/openjdk/javax/tools/ForwardingJavaFileManager<",
        "TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;-><init>(Lorg/openjdk/javax/tools/JavaFileManager;)V

    return-void
.end method


# virtual methods
.method public contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p1

    return p1
.end method

.method public getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->wrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    return-object p1
.end method

.method public getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p4}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->wrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    return-object p1
.end method

.method public getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->wrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method public getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p4}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p4

    invoke-super {p0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->wrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method public inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->unwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;
    .locals 0
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

    invoke-super {p0, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->wrap(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public unwrap(Ljava/net/URI;)Ljava/net/URI;
    .locals 0

    .line 1
    return-object p1
.end method

.method public unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 0

    .line 2
    return-object p1
.end method

.method public unwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1
.end method

.method public wrap(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/tools/JavaFileObject;

    .line 5
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->wrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 0

    .line 1
    return-object p1
.end method

.method public wrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/api/WrappingJavaFileManager;->wrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1
.end method
