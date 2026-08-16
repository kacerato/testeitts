.class Lcom/ardor3d/input/control/FirstPersonControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/input/control/FirstPersonControl;->setupKeyboardTriggers(Lcom/ardor3d/input/logical/LogicalLayer;)Lw2/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field keys:[Lcom/ardor3d/input/Key;

.field final synthetic this$0:Lcom/ardor3d/input/control/FirstPersonControl;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/control/FirstPersonControl;)V
    .locals 8

    iput-object p1, p0, Lcom/ardor3d/input/control/FirstPersonControl$2;->this$0:Lcom/ardor3d/input/control/FirstPersonControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ardor3d/input/Key;->W:Lcom/ardor3d/input/Key;

    sget-object v1, Lcom/ardor3d/input/Key;->A:Lcom/ardor3d/input/Key;

    sget-object v2, Lcom/ardor3d/input/Key;->S:Lcom/ardor3d/input/Key;

    sget-object v3, Lcom/ardor3d/input/Key;->D:Lcom/ardor3d/input/Key;

    sget-object v4, Lcom/ardor3d/input/Key;->LEFT:Lcom/ardor3d/input/Key;

    sget-object v5, Lcom/ardor3d/input/Key;->RIGHT:Lcom/ardor3d/input/Key;

    sget-object v6, Lcom/ardor3d/input/Key;->UP:Lcom/ardor3d/input/Key;

    sget-object v7, Lcom/ardor3d/input/Key;->DOWN:Lcom/ardor3d/input/Key;

    filled-new-array/range {v0 .. v7}, [Lcom/ardor3d/input/Key;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/input/control/FirstPersonControl$2;->keys:[Lcom/ardor3d/input/Key;

    return-void
.end method


# virtual methods
.method public apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/ardor3d/input/control/FirstPersonControl$2;->keys:[Lcom/ardor3d/input/Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/ardor3d/input/logical/TwoInputStates;->getCurrent()Lcom/ardor3d/input/InputState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/input/InputState;->getKeyboardState()Lcom/ardor3d/input/KeyboardState;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ardor3d/input/KeyboardState;->isDown(Lcom/ardor3d/input/Key;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/input/logical/TwoInputStates;

    invoke-virtual {p0, p1}, Lcom/ardor3d/input/control/FirstPersonControl$2;->apply(Lcom/ardor3d/input/logical/TwoInputStates;)Z

    move-result p1

    return p1
.end method
