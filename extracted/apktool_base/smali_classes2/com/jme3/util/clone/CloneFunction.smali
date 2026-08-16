.class public interface abstract Lcom/jme3/util/clone/CloneFunction;
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


# virtual methods
.method public abstract cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/clone/Cloner;",
            "TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract cloneObject(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/clone/Cloner;",
            "TT;)TT;"
        }
    .end annotation
.end method
