.class public Lcom/jme3/input/event/MouseButtonEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "SourceFile"


# instance fields
.field private final btnIndex:I

.field private final pressed:Z

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IZII)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    iput p1, p0, Lcom/jme3/input/event/MouseButtonEvent;->btnIndex:I

    iput-boolean p2, p0, Lcom/jme3/input/event/MouseButtonEvent;->pressed:Z

    iput p3, p0, Lcom/jme3/input/event/MouseButtonEvent;->x:I

    iput p4, p0, Lcom/jme3/input/event/MouseButtonEvent;->y:I

    return-void
.end method


# virtual methods
.method public getButtonIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->btnIndex:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->y:I

    return v0
.end method

.method public isPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->pressed:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/event/MouseButtonEvent;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MouseButton(BTN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/MouseButtonEvent;->btnIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/input/event/MouseButtonEvent;->pressed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", PRESSED)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", RELEASED)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
