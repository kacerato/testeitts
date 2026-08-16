.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessorState"
.end annotation


# instance fields
.field public contributed:Z

.field public processor:Lorg/openjdk/javax/annotation/processing/Processor;

.field private supportedAnnotationPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private supportedOptionNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/annotation/processing/Processor;Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/code/Source;ZLorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->contributed:Z

    :try_start_0
    invoke-interface {p1, p5}, Lorg/openjdk/javax/annotation/processing/Processor;->init(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V

    invoke-direct {p0, p3, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->checkSourceVersionCompatibility(Lorg/openjdk/tools/javac/code/Source;Lorg/openjdk/tools/javac/util/Log;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedAnnotationPatterns:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-interface {p1}, Lorg/openjdk/javax/annotation/processing/Processor;->getSupportedAnnotationTypes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p5, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedAnnotationPatterns:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-static {p4, p3, v0, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$100(ZLjava/lang/String;Lorg/openjdk/javax/annotation/processing/Processor;Lorg/openjdk/tools/javac/util/Log;)Ljava/util/regex/Pattern;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedOptionNames:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-interface {p1}, Lorg/openjdk/javax/annotation/processing/Processor;->getSupportedOptions()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->checkOptionName(Ljava/lang/String;Lorg/openjdk/tools/javac/util/Log;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedOptionNames:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    new-instance p2, Lorg/openjdk/tools/javac/processing/AnnotationProcessingError;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/processing/AnnotationProcessingError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    throw p1
.end method

.method private checkOptionName(Ljava/lang/String;Lorg/openjdk/tools/javac/util/Log;)Z
    .locals 2

    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->isValidOptionName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "proc.processor.bad.option.name"

    invoke-virtual {p2, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method private checkSourceVersionCompatibility(Lorg/openjdk/tools/javac/code/Source;Lorg/openjdk/tools/javac/util/Log;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-interface {v0}, Lorg/openjdk/javax/annotation/processing/Processor;->getSupportedSourceVersion()Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->toSourceVersion(Lorg/openjdk/tools/javac/code/Source;)Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proc.processor.incompatible.source.version"

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public annotationSupported(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedAnnotationPatterns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeSupportedOptions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->supportedOptionNames:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method
