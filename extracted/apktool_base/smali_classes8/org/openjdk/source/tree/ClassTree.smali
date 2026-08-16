.class public interface abstract Lorg/openjdk/source/tree/ClassTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/StatementTree;


# virtual methods
.method public abstract getExtendsClause()Lorg/openjdk/source/tree/Tree;
.end method

.method public abstract getImplementsClause()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMembers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModifiers()Lorg/openjdk/source/tree/ModifiersTree;
.end method

.method public abstract getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
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
