.class public final Lcom/ardor3d/input/logical/MouseMovedCondition;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getPrevious()Lcom/ardor3d/input/InputState;

    move-result-object p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/ardor3d/input/InputState;->getMouseState()Lcom/ardor3d/input/MouseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/input/MouseState;->getDx()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/ardor3d/input/InputState;->getMouseState()Lcom/ardor3d/input/MouseState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/input/MouseState;->getDy()I

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/logical/MouseMovedCondition;->apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z

    move-result p1

    return p1
.end method
