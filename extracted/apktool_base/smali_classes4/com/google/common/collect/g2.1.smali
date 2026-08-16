.class public interface abstract Lcom/google/common/collect/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation runtime LI2/f;
    value = "Use Iterators.peekingIterator"
.end annotation

.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# virtual methods
.method public abstract next()Ljava/lang/Object;
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract peek()Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract remove()V
.end method
