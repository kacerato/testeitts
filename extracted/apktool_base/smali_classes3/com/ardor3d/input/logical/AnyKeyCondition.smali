.class public Lcom/ardor3d/input/logical/AnyKeyCondition;
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
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getPrevious()Lcom/ardor3d/input/InputState;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/ardor3d/input/InputState;->getKeyboardState()Lcom/ardor3d/input/KeyboardState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/input/InputState;->getKeyboardState()Lcom/ardor3d/input/KeyboardState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ardor3d/input/KeyboardState;->getKeysPressedSince(Lcom/ardor3d/input/KeyboardState;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/logical/AnyKeyCondition;->apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z

    move-result p1

    return p1
.end method
