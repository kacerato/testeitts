.class public final Lcom/ardor3d/input/logical/InputTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _action:Lcom/ardor3d/input/logical/TriggerAction;

.field private final _condition:Lw2/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;"
        }
    .end annotation
.end field

.field private _id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lw2/I;Lcom/ardor3d/input/logical/TriggerAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;",
            "Lcom/ardor3d/input/logical/TriggerAction;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ardor3d/input/logical/InputTrigger;->_condition:Lw2/I;

    .line 3
    iput-object p2, p0, Lcom/ardor3d/input/logical/InputTrigger;->_action:Lcom/ardor3d/input/logical/TriggerAction;

    return-void
.end method

.method public constructor <init>(Lw2/I;Lcom/ardor3d/input/logical/TriggerAction;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/I<",
            "Lcom/ardor3d/input/logical/TwoInputStates;",
            ">;",
            "Lcom/ardor3d/input/logical/TriggerAction;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/ardor3d/input/logical/InputTrigger;->_condition:Lw2/I;

    .line 6
    iput-object p2, p0, Lcom/ardor3d/input/logical/InputTrigger;->_action:Lcom/ardor3d/input/logical/TriggerAction;

    .line 7
    iput-object p3, p0, Lcom/ardor3d/input/logical/InputTrigger;->_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/logical/InputTrigger;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public performIfValid(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/logical/InputTrigger;->_condition:Lw2/I;

    invoke-interface {v0, p2}, Lw2/I;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/input/logical/InputTrigger;->_action:Lcom/ardor3d/input/logical/TriggerAction;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ardor3d/input/logical/TriggerAction;->perform(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/logical/TwoInputStates;D)V

    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/logical/InputTrigger;->_id:Ljava/lang/String;

    return-void
.end method
