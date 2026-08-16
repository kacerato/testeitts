.class Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;
.super Lorg/openjdk/javax/tools/ForwardingFileObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilerOutputFileObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/javax/tools/ForwardingFileObject<",
        "Lorg/openjdk/javax/tools/FileObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mod:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field private name:Ljava/lang/String;

.field private opened:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-direct {p0, p4}, Lorg/openjdk/javax/tools/ForwardingFileObject;-><init>(Lorg/openjdk/javax/tools/FileObject;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->mod:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FileObject was not opened for reading."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FileObject was not opened for reading."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized openOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->mod:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;-><init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream or writer has already been opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FileObject was not opened for reading."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized openWriter()Ljava/io/Writer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->opened:Z

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerWriter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->mod:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/openjdk/javax/tools/ForwardingFileObject;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerWriter;-><init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output stream or writer has already been opened."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
