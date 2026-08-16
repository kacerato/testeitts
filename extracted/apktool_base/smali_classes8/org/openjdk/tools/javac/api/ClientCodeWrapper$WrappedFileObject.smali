.class public Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/FileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedFileObject"
.end annotation


# instance fields
.field protected clientFileObject:Lorg/openjdk/javax/tools/FileObject;

.field final synthetic this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/FileObject;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/javax/tools/FileObject;

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->delete()Z

    move-result v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

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

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

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

.method public getLastModified()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

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

.method public getName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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

.method public openReader(Z)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/FileObject;->openReader(Z)Ljava/io/Reader;

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

.method public openWriter()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->access$000(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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
