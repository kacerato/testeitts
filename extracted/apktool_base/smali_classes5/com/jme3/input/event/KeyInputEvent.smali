.class public Lcom/jme3/input/event/KeyInputEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "SourceFile"


# instance fields
.field private final keyChar:C

.field private final keyCode:I

.field private final pressed:Z

.field private final repeating:Z


# direct methods
.method public constructor <init>(ICZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    iput p1, p0, Lcom/jme3/input/event/KeyInputEvent;->keyCode:I

    iput-char p2, p0, Lcom/jme3/input/event/KeyInputEvent;->keyChar:C

    iput-boolean p3, p0, Lcom/jme3/input/event/KeyInputEvent;->pressed:Z

    iput-boolean p4, p0, Lcom/jme3/input/event/KeyInputEvent;->repeating:Z

    return-void
.end method


# virtual methods
.method public getKeyChar()C
    .locals 1

    iget-char v0, p0, Lcom/jme3/input/event/KeyInputEvent;->keyChar:C

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/KeyInputEvent;->keyCode:I

    return v0
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/event/KeyInputEvent;->pressed:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/event/KeyInputEvent;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/event/KeyInputEvent;->repeating:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key(CODE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/KeyInputEvent;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/jme3/input/event/KeyInputEvent;->keyChar:C

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", CHAR="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/jme3/input/event/KeyInputEvent;->keyChar:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/jme3/input/event/KeyInputEvent;->repeating:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", REPEATING)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/jme3/input/event/KeyInputEvent;->pressed:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", PRESSED)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", RELEASED)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
