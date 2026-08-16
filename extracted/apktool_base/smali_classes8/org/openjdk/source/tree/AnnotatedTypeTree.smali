.class public interface abstract Lorg/openjdk/source/tree/AnnotatedTypeTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ExpressionTree;


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

.method public abstract getUnderlyingType()Lorg/openjdk/source/tree/ExpressionTree;
.end method
