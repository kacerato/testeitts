.class public interface abstract Lorg/openjdk/source/tree/ForLoopTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/StatementTree;


# virtual methods
.method public abstract getCondition()Lorg/openjdk/source/tree/ExpressionTree;
.end method

.method public abstract getInitializer()Ljava/util/List;
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

.method public abstract getStatement()Lorg/openjdk/source/tree/StatementTree;
.end method

.method public abstract getUpdate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/ExpressionStatementTree;",
            ">;"
        }
    .end annotation
.end method
