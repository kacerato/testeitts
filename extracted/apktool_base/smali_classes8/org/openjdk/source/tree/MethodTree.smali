.class public interface abstract Lorg/openjdk/source/tree/MethodTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/Tree;


# virtual methods
.method public abstract getBody()Lorg/openjdk/source/tree/BlockTree;
.end method

.method public abstract getDefaultValue()Lorg/openjdk/source/tree/Tree;
.end method

.method public abstract getModifiers()Lorg/openjdk/source/tree/ModifiersTree;
.end method

.method public abstract getName()Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract getParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/VariableTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReceiverParameter()Lorg/openjdk/source/tree/VariableTree;
.end method

.method public abstract getReturnType()Lorg/openjdk/source/tree/Tree;
.end method

.method public abstract getThrows()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionTree;",
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
            "Lorg/openjdk/source/tree/TypeParameterTree;",
            ">;"
        }
    .end annotation
.end method
