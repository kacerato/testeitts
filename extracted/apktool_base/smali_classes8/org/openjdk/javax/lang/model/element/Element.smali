.class public interface abstract Lorg/openjdk/javax/lang/model/element/Element;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/AnnotatedConstruct;


# virtual methods
.method public abstract accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/ElementVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation
.end method

.method public abstract asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getAnnotationMirrors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnclosedElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;
.end method

.method public abstract getKind()Lorg/openjdk/javax/lang/model/element/ElementKind;
.end method

.method public abstract getModifiers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract hashCode()I
.end method
