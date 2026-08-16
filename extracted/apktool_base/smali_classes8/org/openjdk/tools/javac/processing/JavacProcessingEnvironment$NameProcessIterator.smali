.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameProcessIterator"
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
.field log:Lorg/openjdk/tools/javac/util/Log;

.field names:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

.field processorCL:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lorg/openjdk/tools/javac/util/Log;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->names:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->processorCL:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    return-void
.end method

.method private ensureReadable(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "getModule"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "addReads"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :goto_0
    return-void
.end method

.method private getNextProcessor(Ljava/lang/String;)Lorg/openjdk/javax/annotation/processing/Processor;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->processorCL:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->ensureReadable(Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/annotation/processing/Processor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "proc.processor.cant.instantiate"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "proc.processor.wrong.type"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "proc.processor.not.found"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/processing/AnnotationProcessingError;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/processing/AnnotationProcessingError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->names:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->names:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->getNextProcessor(Ljava/lang/String;)Lorg/openjdk/javax/annotation/processing/Processor;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->next()Lorg/openjdk/javax/annotation/processing/Processor;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/javax/annotation/processing/Processor;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
