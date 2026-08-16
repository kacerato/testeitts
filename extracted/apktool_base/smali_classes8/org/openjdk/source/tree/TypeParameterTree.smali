.class public interface abstract Lorg/openjdk/source/tree/TypeParameterTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/Tree;


# virtual methods
.method public abstract getAnnotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBounds()Ljava/util/List;
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

.method public abstract getName()Lorg/openjdk/javax/lang/model/element/Name;
.end method
