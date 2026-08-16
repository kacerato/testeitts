.class public interface abstract Lcom/simsilica/mathd/trans/Transition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/simsilica/mathd/trans/Transition;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract containsTime(J)Z
.end method

.method public abstract getEndTime()J
.end method

.method public abstract getStartTime()J
.end method

.method public abstract setPreviousTransition(Lcom/simsilica/mathd/trans/Transition;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
