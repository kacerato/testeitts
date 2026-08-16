.class Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacFiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilerOutputStream"
.end annotation


# instance fields
.field closed:Z

.field fileObject:Lorg/openjdk/javax/tools/FileObject;

.field mod:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;

.field typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-interface {p4}, Lorg/openjdk/javax/tools/FileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->closed:Z

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->mod:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->typeName:Ljava/lang/String;

    iput-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->closed:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->this$0:Lorg/openjdk/tools/javac/processing/JavacFiler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->mod:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->typeName:Ljava/lang/String;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;->fileObject:Lorg/openjdk/javax/tools/FileObject;

    invoke-static {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/processing/JavacFiler;->access$000(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
