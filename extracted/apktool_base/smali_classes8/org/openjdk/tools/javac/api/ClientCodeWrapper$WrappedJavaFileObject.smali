.class public Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;
.super Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedJavaFileObject"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;-><init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/FileObject;)V

    return-void
.end method


# virtual methods
.method public getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;

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

.method public getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

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

.method public getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;

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

.method public isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

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

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedJavaFileObject;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedFileObject;->clientFileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->access$000(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
