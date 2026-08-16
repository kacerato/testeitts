.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;
.super Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NameServiceIterator"
.end annotation


# instance fields
.field private namedProcessorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field

.field private nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

.field private processorNames:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/ServiceLoader;Lorg/openjdk/tools/javac/util/Log;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ServiceLoader<",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Log;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/ServiceLoader;Lorg/openjdk/tools/javac/util/Log;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->namedProcessorsMap:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->processorNames:Ljava/util/Iterator;

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    const-string p1, ","

    invoke-virtual {p4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->processorNames:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public internalHasNext()Z
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->processorNames:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->namedProcessorsMap:Ljava/util/Map;

    return v2

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->processorNames:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->namedProcessorsMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/annotation/processing/Processor;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->namedProcessorsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    return v1

    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    return v1

    :cond_3
    iget-object v5, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->namedProcessorsMap:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ProcProcessorNotFound(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return v2
.end method

.method public internalNext()Lorg/openjdk/javax/annotation/processing/Processor;
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;->nextProc:Lorg/openjdk/javax/annotation/processing/Processor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
