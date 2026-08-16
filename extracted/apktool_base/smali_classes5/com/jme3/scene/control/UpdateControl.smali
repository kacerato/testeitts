.class public Lcom/jme3/scene/control/UpdateControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# instance fields
.field private taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/jme3/app/AppTask<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/control/UpdateControl;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    return-void
.end method

.method public controlUpdate(F)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/scene/control/UpdateControl;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/app/AppTask;

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/app/AppTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/control/UpdateControl;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/app/AppTask;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/app/AppTask;->invoke()V

    iget-object p1, p0, Lcom/jme3/scene/control/UpdateControl;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/app/AppTask;

    if-nez p1, :cond_0

    :goto_0
    return-void
.end method

.method public enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/app/AppTask;

    invoke-direct {v0, p1}, Lcom/jme3/app/AppTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p1, p0, Lcom/jme3/scene/control/UpdateControl;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 3

    invoke-super {p0}, Lcom/jme3/scene/control/AbstractControl;->jmeClone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/control/UpdateControl;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, v0, Lcom/jme3/scene/control/UpdateControl;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lcom/jme3/scene/control/UpdateControl;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
