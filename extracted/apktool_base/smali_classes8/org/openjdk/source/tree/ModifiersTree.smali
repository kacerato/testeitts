.class public interface abstract Lorg/openjdk/source/tree/ModifiersTree;
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

.method public abstract getFlags()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end method
