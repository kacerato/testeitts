.class public final Lcom/ardor3d/input/logical/MouseButtonPressedCondition;
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
.field private final _button:Lcom/ardor3d/input/MouseButton;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/MouseButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/ardor3d/input/logical/MouseButtonPressedCondition;->_button:Lcom/ardor3d/input/MouseButton;

    return-void
.end method


# virtual methods
.method public apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getPrevious()Lcom/ardor3d/input/InputState;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ardor3d/input/InputState;->getMouseState()Lcom/ardor3d/input/MouseState;

    move-result-object v1

    sget-object v2, Lcom/ardor3d/input/ButtonState;->DOWN:Lcom/ardor3d/input/ButtonState;

    invoke-virtual {v1, v2}, Lcom/ardor3d/input/MouseState;->hasButtonState(Lcom/ardor3d/input/ButtonState;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/ardor3d/input/InputState;->getMouseState()Lcom/ardor3d/input/MouseState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/input/InputState;->getMouseState()Lcom/ardor3d/input/MouseState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/input/MouseState;->getButtonsPressedSince(Lcom/ardor3d/input/MouseState;)Ljava/util/EnumSet;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/input/logical/MouseButtonPressedCondition;->_button:Lcom/ardor3d/input/MouseButton;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/logical/MouseButtonPressedCondition;->apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z

    move-result p1

    return p1
.end method
