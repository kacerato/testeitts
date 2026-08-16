.class public interface abstract Lorg/openjdk/source/tree/CaseTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/Tree;


# virtual methods
.method public abstract getExpression()Lorg/openjdk/source/tree/ExpressionTree;
.end method

.method public abstract getStatements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/StatementTree;",
            ">;"
        }
    .end annotation
.end method
