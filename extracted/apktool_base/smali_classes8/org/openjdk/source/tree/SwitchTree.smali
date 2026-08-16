.class public interface abstract Lorg/openjdk/source/tree/SwitchTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/StatementTree;


# virtual methods
.method public abstract getCases()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/CaseTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpression()Lorg/openjdk/source/tree/ExpressionTree;
.end method
