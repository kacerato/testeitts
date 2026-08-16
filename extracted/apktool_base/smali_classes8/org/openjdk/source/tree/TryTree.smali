.class public interface abstract Lorg/openjdk/source/tree/TryTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/StatementTree;


# virtual methods
.method public abstract getBlock()Lorg/openjdk/source/tree/BlockTree;
.end method

.method public abstract getCatches()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/tree/CatchTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFinallyBlock()Lorg/openjdk/source/tree/BlockTree;
.end method

.method public abstract getResources()Ljava/util/List;
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
