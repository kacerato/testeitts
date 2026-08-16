.class public interface abstract Lorg/openjdk/source/tree/NewClassTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ExpressionTree;


# virtual methods
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

.method public abstract getClassBody()Lorg/openjdk/source/tree/ClassTree;
.end method

.method public abstract getEnclosingExpression()Lorg/openjdk/source/tree/ExpressionTree;
.end method

.method public abstract getIdentifier()Lorg/openjdk/source/tree/ExpressionTree;
.end method

.method public abstract getTypeArguments()Ljava/util/List;
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
