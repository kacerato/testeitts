.class public Lcom/jme3/input/event/TouchEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/input/event/TouchEvent$Type;
    }
.end annotation


# instance fields
.field private characters:Ljava/lang/String;

.field private deltaScaleSpan:F

.field private deltaX:F

.field private deltaY:F

.field private keyCode:I

.field private pointerId:I

.field private posX:F

.field private posY:F

.field private pressure:F

.field private scaleFactor:F

.field private scaleSpan:F

.field private scaleSpanInProgress:Z

.field private type:Lcom/jme3/input/event/TouchEvent$Type;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    .line 2
    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->IDLE:Lcom/jme3/input/event/TouchEvent$Type;

    iput-object v1, p0, Lcom/jme3/input/event/TouchEvent;->type:Lcom/jme3/input/event/TouchEvent$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    .line 5
    sget-object v0, Lcom/jme3/input/event/TouchEvent$Type;->IDLE:Lcom/jme3/input/event/TouchEvent$Type;

    iput-object v0, p0, Lcom/jme3/input/event/TouchEvent;->type:Lcom/jme3/input/event/TouchEvent$Type;

    .line 6
    invoke-virtual/range {p0 .. p5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    return-void
.end method


# virtual methods
.method public getCharacters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/event/TouchEvent;->characters:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaScaleSpan()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->deltaScaleSpan:F

    return v0
.end method

.method public getDeltaX()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->deltaX:F

    return v0
.end method

.method public getDeltaY()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->deltaY:F

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->keyCode:I

    return v0
.end method

.method public getPointerId()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->pointerId:I

    return v0
.end method

.method public getPressure()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->pressure:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->scaleFactor:F

    return v0
.end method

.method public getScaleSpan()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpan:F

    return v0
.end method

.method public getType()Lcom/jme3/input/event/TouchEvent$Type;
    .locals 1

    iget-object v0, p0, Lcom/jme3/input/event/TouchEvent;->type:Lcom/jme3/input/event/TouchEvent$Type;

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->posX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/TouchEvent;->posY:F

    return v0
.end method

.method public isScaleSpanInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpanInProgress:Z

    return v0
.end method

.method public set(Lcom/jme3/input/event/TouchEvent$Type;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/jme3/input/event/TouchEvent;->set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V

    return-void
.end method

.method public set(Lcom/jme3/input/event/TouchEvent$Type;FFFF)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/jme3/input/event/TouchEvent;->type:Lcom/jme3/input/event/TouchEvent$Type;

    .line 3
    iput p2, p0, Lcom/jme3/input/event/TouchEvent;->posX:F

    .line 4
    iput p3, p0, Lcom/jme3/input/event/TouchEvent;->posY:F

    .line 5
    iput p4, p0, Lcom/jme3/input/event/TouchEvent;->deltaX:F

    .line 6
    iput p5, p0, Lcom/jme3/input/event/TouchEvent;->deltaY:F

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->pointerId:I

    const/4 p2, 0x0

    .line 8
    iput p2, p0, Lcom/jme3/input/event/TouchEvent;->pressure:F

    .line 9
    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->keyCode:I

    .line 10
    iput p2, p0, Lcom/jme3/input/event/TouchEvent;->scaleFactor:F

    .line 11
    iput p2, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpan:F

    .line 12
    iput p2, p0, Lcom/jme3/input/event/TouchEvent;->deltaScaleSpan:F

    .line 13
    iput-boolean p1, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpanInProgress:Z

    .line 14
    const-string p2, ""

    iput-object p2, p0, Lcom/jme3/input/event/TouchEvent;->characters:Ljava/lang/String;

    .line 15
    iput-boolean p1, p0, Lcom/jme3/input/event/InputEvent;->consumed:Z

    return-void
.end method

.method public setCharacters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/input/event/TouchEvent;->characters:Ljava/lang/String;

    return-void
.end method

.method public setDeltaScaleSpan(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->deltaScaleSpan:F

    return-void
.end method

.method public setKeyCode(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->keyCode:I

    return-void
.end method

.method public setPointerId(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->pointerId:I

    return-void
.end method

.method public setPressure(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->pressure:F

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->scaleFactor:F

    return-void
.end method

.method public setScaleSpan(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpan:F

    return-void
.end method

.method public setScaleSpanInProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpanInProgress:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchEvent(PointerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/TouchEvent;->pointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/input/event/TouchEvent;->type:Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/TouchEvent;->posX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/TouchEvent;->posY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", DX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/TouchEvent;->deltaX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", DY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/TouchEvent;->deltaY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ScaleSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/TouchEvent;->scaleSpan:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dScaleSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/TouchEvent;->deltaScaleSpan:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
