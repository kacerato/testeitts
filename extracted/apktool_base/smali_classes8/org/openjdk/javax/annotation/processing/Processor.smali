.class public interface abstract Lorg/openjdk/javax/annotation/processing/Processor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCompletions(Lorg/openjdk/javax/lang/model/element/Element;Lorg/openjdk/javax/lang/model/element/AnnotationMirror;Lorg/openjdk/javax/lang/model/element/ExecutableElement;Ljava/lang/String;)Ljava/lang/Iterable;
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
.end method

.method public abstract getSupportedAnnotationTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedOptions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedSourceVersion()Lorg/openjdk/javax/lang/model/SourceVersion;
.end method

.method public abstract init(Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V
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
