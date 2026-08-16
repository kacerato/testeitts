.class public interface abstract Lorg/openjdk/source/tree/LambdaExpressionTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ExpressionTree;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;
    }
.end annotation


# virtual methods
.method public abstract getBody()Lorg/openjdk/source/tree/Tree;
.end method

.method public abstract getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;
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
