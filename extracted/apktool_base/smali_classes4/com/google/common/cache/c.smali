.class public interface abstract Lcom/google/common/cache/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LI2/f;
    value = "Use CacheBuilder.newBuilder().build()"
.end annotation

.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# virtual methods
.method public abstract R(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract b0(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build LI2/c;
            value = "K"
        .end annotation
    .end param
.end method

.method public abstract cleanUp()V
.end method

.method public abstract j0()V
.end method

.method public abstract k()Ljava/util/concurrent/ConcurrentMap;
    .annotation runtime LI2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract m(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public abstract putAll(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation
.end method

.method public abstract r(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build LI2/c;
            value = "K"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public abstract s(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract size()J
    .annotation runtime LI2/b;
    .end annotation
.end method

.method public abstract stats()Lcom/google/common/cache/f;
    .annotation runtime LI2/b;
    .end annotation
.end method
