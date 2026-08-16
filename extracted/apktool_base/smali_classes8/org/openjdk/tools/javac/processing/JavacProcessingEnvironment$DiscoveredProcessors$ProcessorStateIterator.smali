.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessorStateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;",
        ">;"
    }
.end annotation


# instance fields
.field innerIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;",
            ">;"
        }
    .end annotation
.end field

.field onProcInterator:Z

.field psi:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

.field final synthetic this$1:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object p1, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->procStateList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v0, v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v0, v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->next()Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;
    .locals 7

    .line 2
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v0, v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v1, v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/openjdk/javax/annotation/processing/Processor;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v1, v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v3, v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v4, v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->source:Lorg/openjdk/tools/javac/code/Source;

    .line 8
    invoke-static {v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$200(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v5

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v6, v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;-><init>(Lorg/openjdk/javax/annotation/processing/Processor;Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/code/Source;ZLorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V

    .line 9
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->psi:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v1, v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->procStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 10
    :cond_2
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

.method public runContributingProcs(Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)V
    .locals 3

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->onProcInterator:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->innerIter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    iget-boolean v2, v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->contributed:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->this$1:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    iget-object v2, v2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v1, v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-static {v2, v1, v0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$300(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/javax/annotation/processing/Processor;Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
