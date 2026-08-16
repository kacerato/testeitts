.class final Lcom/ardor3d/input/logical/TriggerConditions$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/input/logical/TriggerConditions;->passedThrottle(DLcom/ardor3d/util/Timer;)Lw2/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/I<",
        "Lcom/ardor3d/input/logical/TwoInputStates;",
        ">;"
    }
.end annotation


# instance fields
.field private lastPass:D

.field final synthetic val$throttleTime:D

.field final synthetic val$timer:Lcom/ardor3d/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ardor3d/util/Timer;D)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/logical/TriggerConditions$3;->val$timer:Lcom/ardor3d/util/Timer;

    iput-wide p2, p0, Lcom/ardor3d/input/logical/TriggerConditions$3;->val$throttleTime:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/ardor3d/input/logical/TriggerConditions$3;->lastPass:D

    return-void
.end method


# virtual methods
.method public apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/ardor3d/input/logical/TriggerConditions$3;->val$timer:Lcom/ardor3d/util/Timer;

    invoke-virtual {p1}, Lcom/ardor3d/util/Timer;->getTimeInSeconds()D

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/ardor3d/input/logical/TriggerConditions$3;->lastPass:D

    sub-double v2, v0, v2

    iget-wide v4, p0, Lcom/ardor3d/input/logical/TriggerConditions$3;->val$throttleTime:D

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_0

    .line 4
    iput-wide v0, p0, Lcom/ardor3d/input/logical/TriggerConditions$3;->lastPass:D

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/logical/TriggerConditions$3;->apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z

    move-result p1

    return p1
.end method
