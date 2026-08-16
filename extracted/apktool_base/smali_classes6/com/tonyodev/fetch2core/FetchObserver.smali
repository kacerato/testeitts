.class public interface abstract Lcom/tonyodev/fetch2core/FetchObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onChanged(Ljava/lang/Object;Lcom/tonyodev/fetch2core/Reason;)V
    .param p2    # Lcom/tonyodev/fetch2core/Reason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/tonyodev/fetch2core/Reason;",
            ")V"
        }
    .end annotation
.end method
