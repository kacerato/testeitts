.class public Lorg/openjdk/tools/sjavac/comp/SmartFileObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileObject;


# static fields
.field static lineseparator:Ljava/lang/String;


# instance fields
.field file:Lorg/openjdk/javax/tools/JavaFileObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->lineseparator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getAccessLevel()Lorg/openjdk/javax/lang/model/element/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getNestingKind()Lorg/openjdk/javax/lang/model/element/NestingKind;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    return p1
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/FileObject;->openReader(Z)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/openjdk/javax/tools/FileObject;->openReader(Z)Ljava/io/Reader;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->lineseparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :goto_3
    new-instance v1, Lorg/openjdk/tools/sjavac/comp/SmartWriter;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v3}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/openjdk/tools/sjavac/comp/SmartWriter;-><init>(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartFileObject;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
