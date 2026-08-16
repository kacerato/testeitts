.class public abstract Lorg/openjdk/javax/annotation/processing/AbstractProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/annotation/processing/Processor;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private initialized:Z

.field protected processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->initialized:Z

    return-void
.end method

.method private static arrayToSet([Ljava/lang/String;Z)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz p1, :cond_0

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCompletions(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            "Lorg/openjdk/javax/lang/model/element/AnnotationMirror;",
            "Lorg/openjdk/javax/lang/model/element/ExecutableElement;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Completion;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/openjdk/javax/annotation/processing/SupportedAnnotationTypes;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/annotation/processing/SupportedAnnotationTypes;

    invoke-virtual {p0}, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->isInitialized()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getMessager()Lorg/openjdk/javax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No SupportedAnnotationTypes annotation found on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", returning an empty set."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/openjdk/javax/annotation/processing/Messager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getSourceVersion()Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_8:Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/openjdk/javax/annotation/processing/SupportedAnnotationTypes;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->arrayToSet([Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOptions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/openjdk/javax/annotation/processing/SupportedOptions;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/annotation/processing/SupportedOptions;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openjdk/javax/annotation/processing/SupportedOptions;->value()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->arrayToSet([Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSourceVersion()Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_6:Lorg/openjdk/javax/lang/model/SourceVersion;

    invoke-virtual {p0}, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;->getMessager()Lorg/openjdk/javax/annotation/processing/Messager;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/tools/Diagnostic$Kind;->WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SupportedSourceVersion annotation found on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/openjdk/javax/annotation/processing/Messager;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;->value()Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public declared-synchronized init(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->initialized:Z

    if-nez v0, :cond_0

    const-string v0, "Tool provided null ProcessingEnvironment"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->processingEnv:Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call init more than once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/openjdk/javax/annotation/processing/AbstractProcessor;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract process(Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;",
            "Lorg/openjdk/javax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation
.end method
