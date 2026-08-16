.class public interface abstract Lorg/openjdk/source/tree/AnnotationTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ExpressionTree;


# virtual methods
.method public abstract getAnnotationType()Lorg/openjdk/source/tree/Tree;
.end method

.method public abstract getArguments()Ljava/util/List;
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
