.class public Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedJavaFileManager"
.end annotation


# instance fields
.field protected clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field final synthetic this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/JavaFileManager;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileManager;->close()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    throw v0
.end method

.method public contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

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

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileManager;->flush()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    throw v0
.end method

.method public getClassLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->getClassLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

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

.method public getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v1, p1, p2, p3}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

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
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method

.method public getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p4

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

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
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method

.method public getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v1, p1, p2, p3}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

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
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method

.method public getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p4

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

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
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

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
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 3
    :goto_1
    throw p1
.end method

.method public getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

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
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :goto_1
    throw p1
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

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

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

.method public hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

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

.method public inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

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
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
.end method

.method public inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

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

.method public isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

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

.method public isSupportedOption(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/OptionChecker;->isSupportedOption(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

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

.method public list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;
    .locals 2
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

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/openjdk/javax/tools/JavaFileManager;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrapJavaFileObjects(Ljava/lang/Iterable;)Ljava/lang/Iterable;

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
    new-instance p2, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1
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

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->listLocationsForModules(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

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

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->access$000(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
