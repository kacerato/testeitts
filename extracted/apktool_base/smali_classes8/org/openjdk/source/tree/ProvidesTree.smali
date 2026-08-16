.class public interface abstract Lorg/openjdk/source/tree/ProvidesTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/DirectiveTree;


# virtual methods
.method public abstract getImplementationNames()Ljava/util/List;
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

.method public abstract getServiceName()Lorg/openjdk/source/tree/ExpressionTree;
.end method
