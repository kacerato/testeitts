.class public interface abstract Lorg/openjdk/source/tree/IfTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/StatementTree;


# virtual methods
.method public abstract getCondition()Lorg/openjdk/source/tree/ExpressionTree;
.end method

.method public abstract getElseStatement()Lorg/openjdk/source/tree/StatementTree;
.end method

.method public abstract getThenStatement()Lorg/openjdk/source/tree/StatementTree;
.end method
