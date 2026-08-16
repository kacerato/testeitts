.class public interface abstract Lorg/openjdk/javax/lang/model/element/ExecutableElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/Element;
.implements Lorg/openjdk/javax/lang/model/element/Parameterizable;


# virtual methods
.method public abstract getDefaultValue()Lorg/openjdk/javax/lang/model/element/AnnotationValue;
.end method

.method public abstract getParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/VariableElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReceiverType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
.end method

.method public abstract getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract getThrownTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/TypeParameterElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isDefault()Z
.end method

.method public abstract isVarArgs()Z
.end method
