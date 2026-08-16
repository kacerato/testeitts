.class public Lcom/jme3/input/event/MouseMotionEvent;
.super Lcom/jme3/input/event/InputEvent;
.source "SourceFile"


# instance fields
.field private final deltaWheel:I

.field private final dx:I

.field private final dy:I

.field private final wheel:I

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/input/event/InputEvent;-><init>()V

    iput p1, p0, Lcom/jme3/input/event/MouseMotionEvent;->x:I

    iput p2, p0, Lcom/jme3/input/event/MouseMotionEvent;->y:I

    iput p3, p0, Lcom/jme3/input/event/MouseMotionEvent;->dx:I

    iput p4, p0, Lcom/jme3/input/event/MouseMotionEvent;->dy:I

    iput p5, p0, Lcom/jme3/input/event/MouseMotionEvent;->wheel:I

    iput p6, p0, Lcom/jme3/input/event/MouseMotionEvent;->deltaWheel:I

    return-void
.end method


# virtual methods
.method public getDX()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->dx:I

    return v0
.end method

.method public getDY()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->dy:I

    return v0
.end method

.method public getDeltaWheel()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->deltaWheel:I

    return v0
.end method

.method public getWheel()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->wheel:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/jme3/input/event/MouseMotionEvent;->y:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MouseMotion(X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->dx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->dy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Wheel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->wheel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dWheel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/input/event/MouseMotionEvent;->deltaWheel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
