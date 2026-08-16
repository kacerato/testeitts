.class public interface abstract Lcom/jme3/anim/AnimTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/jme3/export/Savable;",
        "Lcom/jme3/util/clone/JmeCloneable;"
    }
.end annotation


# virtual methods
.method public abstract getDataAtTime(DLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DTT;)V"
        }
    .end annotation
.end method

.method public abstract getLength()D
.end method
