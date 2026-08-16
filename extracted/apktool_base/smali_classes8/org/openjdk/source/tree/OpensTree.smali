.class public interface abstract Lorg/openjdk/source/tree/OpensTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/DirectiveTree;


# virtual methods
.method public abstract getModuleNames()Ljava/util/List;
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

.method public abstract getPackageName()Lorg/openjdk/source/tree/ExpressionTree;
.end method
