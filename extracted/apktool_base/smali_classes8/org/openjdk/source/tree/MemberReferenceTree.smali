.class public interface abstract Lorg/openjdk/source/tree/MemberReferenceTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/ExpressionTree;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;
    }
.end annotation


# virtual methods
.method public abstract getMode()Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;
.end method

.method public abstract getName()Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract getQualifierExpression()Lorg/openjdk/source/tree/ExpressionTree;
.end method

.method public abstract getTypeArguments()Ljava/util/List;
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
