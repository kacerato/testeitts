.class public final Lcom/ardor3d/input/logical/ControllerComponentCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/I<",
        "Lcom/ardor3d/input/logical/TwoInputStates;",
        ">;"
    }
.end annotation


# instance fields
.field private componentIndex:I

.field private componentName:Ljava/lang/String;

.field private controllerIndex:I

.field private controllerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->componentName:Ljava/lang/String;

    .line 4
    iput p1, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerIndex:I

    .line 5
    iput p2, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->componentIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerIndex:I

    .line 8
    iput v0, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->componentIndex:I

    .line 9
    iput-object p1, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->componentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/input/InputState;->getControllerState()Lcom/ardor3d/input/ControllerState;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getPrevious()Lcom/ardor3d/input/InputState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/input/InputState;->getControllerState()Lcom/ardor3d/input/ControllerState;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcom/ardor3d/input/ControllerState;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerName:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/ardor3d/input/ControllerState;->getControllerNames()Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerIndex:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerName:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->componentName:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ardor3d/input/ControllerState;->getControllerComponentNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->componentIndex:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->componentName:Ljava/lang/String;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/ardor3d/input/ControllerState;->getEvents()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/input/ControllerEvent;

    .line 11
    invoke-virtual {v0}, Lcom/ardor3d/input/ControllerEvent;->getControllerName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->controllerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/ardor3d/input/ControllerEvent;->getComponentName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ardor3d/input/logical/ControllerComponentCondition;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/logical/ControllerComponentCondition;->apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z

    move-result p1

    return p1
.end method
