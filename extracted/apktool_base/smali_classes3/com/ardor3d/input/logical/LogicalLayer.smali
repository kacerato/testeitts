.class public final Lcom/ardor3d/input/logical/LogicalLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/input/logical/LogicalLayer$InputSource;
    }
.end annotation


# instance fields
.field private _applier:Lcom/ardor3d/input/logical/LogicalTriggersApplier;

.field private final _inputs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ardor3d/input/logical/LogicalLayer$InputSource;",
            ">;"
        }
    .end annotation
.end field

.field private final _triggers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ardor3d/input/logical/InputTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_inputs:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_triggers:Ljava/util/Set;

    new-instance v0, Lcom/ardor3d/input/logical/BasicTriggersApplier;

    invoke-direct {v0}, Lcom/ardor3d/input/logical/BasicTriggersApplier;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_applier:Lcom/ardor3d/input/logical/LogicalTriggersApplier;

    return-void
.end method


# virtual methods
.method public declared-synchronized checkTriggers(D)V
    .locals 12
    .annotation runtime Lcom/ardor3d/annotation/MainThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_inputs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;

    invoke-static {v1}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->access$000(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/input/PhysicalLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/input/PhysicalLayer;->readState()V

    invoke-static {v1}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->access$000(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/input/PhysicalLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/input/PhysicalLayer;->drainAvailableStates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_applier:Lcom/ardor3d/input/logical/LogicalTriggersApplier;

    iget-object v5, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_triggers:Ljava/util/Set;

    invoke-static {v1}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->access$100(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/framework/Canvas;

    move-result-object v6

    new-instance v7, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-static {v1}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->access$200(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/input/InputState;

    move-result-object v2

    invoke-static {v1}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->access$200(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/input/InputState;

    move-result-object v1

    invoke-direct {v7, v2, v1}, Lcom/ardor3d/input/logical/TwoInputStates;-><init>(Lcom/ardor3d/input/InputState;Lcom/ardor3d/input/InputState;)V

    move-wide v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/ardor3d/input/logical/LogicalTriggersApplier;->checkAndPerformTriggers(Ljava/util/Set;Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    div-double v3, p1, v3

    move-wide v8, v3

    goto :goto_1

    :cond_2
    move-wide v8, p1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/ardor3d/input/InputState;

    sget-object v2, Lcom/ardor3d/input/InputState;->LOST_FOCUS:Lcom/ardor3d/input/InputState;

    if-eq v11, v2, :cond_3

    iget-object v2, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_applier:Lcom/ardor3d/input/logical/LogicalTriggersApplier;

    iget-object v3, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_triggers:Ljava/util/Set;

    invoke-static {v1}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->access$100(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/framework/Canvas;

    move-result-object v4

    new-instance v5, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-static {v1}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->access$200(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/input/InputState;

    move-result-object v6

    invoke-direct {v5, v6, v11}, Lcom/ardor3d/input/logical/TwoInputStates;-><init>(Lcom/ardor3d/input/InputState;Lcom/ardor3d/input/InputState;)V

    move-wide v6, v8

    invoke-interface/range {v2 .. v7}, Lcom/ardor3d/input/logical/LogicalTriggersApplier;->checkAndPerformTriggers(Ljava/util/Set;Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V

    :cond_3
    invoke-static {v1, v11}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->access$202(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;Lcom/ardor3d/input/InputState;)Lcom/ardor3d/input/InputState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    monitor-exit p0

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public deregisterTrigger(Lcom/ardor3d/input/logical/InputTrigger;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_triggers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public findTriggerById(Ljava/lang/String;)Lcom/ardor3d/input/logical/InputTrigger;
    .locals 3

    iget-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_triggers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/input/logical/InputTrigger;

    invoke-virtual {v1}, Lcom/ardor3d/input/logical/InputTrigger;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getApplier()Lcom/ardor3d/input/logical/LogicalTriggersApplier;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_applier:Lcom/ardor3d/input/logical/LogicalTriggersApplier;

    return-object v0
.end method

.method public getTriggers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ardor3d/input/logical/InputTrigger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_triggers:Ljava/util/Set;

    return-object v0
.end method

.method public registerInput(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/PhysicalLayer;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_inputs:Ljava/util/Set;

    new-instance v1, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;

    invoke-direct {v1, p1, p2}, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;-><init>(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/PhysicalLayer;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerTrigger(Lcom/ardor3d/input/logical/InputTrigger;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_triggers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setApplier(Lcom/ardor3d/input/logical/LogicalTriggersApplier;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/logical/LogicalLayer;->_applier:Lcom/ardor3d/input/logical/LogicalTriggersApplier;

    return-void
.end method
