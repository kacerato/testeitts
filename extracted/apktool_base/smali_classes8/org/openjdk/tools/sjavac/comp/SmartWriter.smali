.class public Lorg/openjdk/tools/sjavac/comp/SmartWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field closed:Z

.field file:Lorg/openjdk/javax/tools/JavaFileObject;

.field name:Ljava/lang/String;

.field newContent:Ljava/io/StringWriter;

.field oldContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->newContent:Ljava/io/StringWriter;

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->oldContent:Ljava/lang/String;

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->newContent:Ljava/io/StringWriter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->closed:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->closed:Z

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->newContent:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->oldContent:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v2}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v3}, Lorg/openjdk/javax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->file:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v3}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write([CII)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/SmartWriter;->newContent:Ljava/io/StringWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/StringWriter;->write([CII)V

    return-void
.end method
