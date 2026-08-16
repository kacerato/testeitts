.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/openjdk/javax/annotation/processing/Processor;",
        ">;"
    }
.end annotation


# instance fields
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field

.field loader:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader<",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field

.field log:Lorg/openjdk/tools/javac/util/Log;

.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/lang/ClassLoader;Lorg/openjdk/tools/javac/util/Log;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    .line 3
    :try_start_0
    const-class v0, Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-static {v0, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loader:Ljava/util/ServiceLoader;

    .line 4
    invoke-virtual {p2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :catch_0
    :try_start_1
    const-string p2, "proc.no.service"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :goto_1
    const/4 p2, 0x0

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "proc.service.problem"

    invoke-virtual {p3, v0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance p2, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/ServiceLoader;Lorg/openjdk/tools/javac/util/Log;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ServiceLoader<",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Log;",
            ")V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    .line 10
    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loader:Ljava/util/ServiceLoader;

    .line 11
    invoke-virtual {p2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->loader:Ljava/util/ServiceLoader;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->internalHasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "proc.bad.config.file"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public internalHasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public internalNext()Lorg/openjdk/javax/annotation/processing/Processor;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/annotation/processing/Processor;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->next()Lorg/openjdk/javax/annotation/processing/Processor;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/javax/annotation/processing/Processor;
    .locals 4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->internalNext()Lorg/openjdk/javax/annotation/processing/Processor;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "proc.bad.config.file"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
