.class public Lcom/ardor3d/input/logical/BasicTriggersApplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/input/logical/LogicalTriggersApplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAndPerformTriggers(Ljava/util/Set;Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ardor3d/input/logical/InputTrigger;",
            ">;",
            "Lcom/ardor3d/framework/Canvas;",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            "D)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/input/logical/InputTrigger;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/ardor3d/input/logical/InputTrigger;->performIfValid(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V

    goto :goto_0

    :cond_0
    return-void
.end method
