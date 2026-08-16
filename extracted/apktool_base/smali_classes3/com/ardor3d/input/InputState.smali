.class public Lcom/ardor3d/input/InputState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/ardor3d/input/InputState;

.field public static final LOST_FOCUS:Lcom/ardor3d/input/InputState;


# instance fields
.field private final controllerState:Lcom/ardor3d/input/ControllerState;

.field private final keyboardState:Lcom/ardor3d/input/KeyboardState;

.field private final mouseState:Lcom/ardor3d/input/MouseState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ardor3d/input/InputState;

    sget-object v1, Lcom/ardor3d/input/KeyboardState;->NOTHING:Lcom/ardor3d/input/KeyboardState;

    sget-object v2, Lcom/ardor3d/input/MouseState;->NOTHING:Lcom/ardor3d/input/MouseState;

    sget-object v3, Lcom/ardor3d/input/ControllerState;->NOTHING:Lcom/ardor3d/input/ControllerState;

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/input/InputState;-><init>(Lcom/ardor3d/input/KeyboardState;Lcom/ardor3d/input/MouseState;Lcom/ardor3d/input/ControllerState;)V

    sput-object v0, Lcom/ardor3d/input/InputState;->LOST_FOCUS:Lcom/ardor3d/input/InputState;

    new-instance v0, Lcom/ardor3d/input/InputState;

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/input/InputState;-><init>(Lcom/ardor3d/input/KeyboardState;Lcom/ardor3d/input/MouseState;Lcom/ardor3d/input/ControllerState;)V

    sput-object v0, Lcom/ardor3d/input/InputState;->EMPTY:Lcom/ardor3d/input/InputState;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/input/KeyboardState;Lcom/ardor3d/input/MouseState;Lcom/ardor3d/input/ControllerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/ardor3d/input/InputState;->keyboardState:Lcom/ardor3d/input/KeyboardState;

    iput-object p2, p0, Lcom/ardor3d/input/InputState;->mouseState:Lcom/ardor3d/input/MouseState;

    iput-object p3, p0, Lcom/ardor3d/input/InputState;->controllerState:Lcom/ardor3d/input/ControllerState;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Controller state"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Mouse state"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Keyboard state"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getControllerState()Lcom/ardor3d/input/ControllerState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/InputState;->controllerState:Lcom/ardor3d/input/ControllerState;

    return-object v0
.end method

.method public getKeyboardState()Lcom/ardor3d/input/KeyboardState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/InputState;->keyboardState:Lcom/ardor3d/input/KeyboardState;

    return-object v0
.end method

.method public getMouseState()Lcom/ardor3d/input/MouseState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/input/InputState;->mouseState:Lcom/ardor3d/input/MouseState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputState{keyboardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/InputState;->keyboardState:Lcom/ardor3d/input/KeyboardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mouseState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/InputState;->mouseState:Lcom/ardor3d/input/MouseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controllerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ardor3d/input/InputState;->controllerState:Lcom/ardor3d/input/ControllerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
