.class Lcom/jme3/anim/tween/Tweens$Curve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/tween/Tween;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/tween/Tweens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Curve"
.end annotation


# instance fields
.field private final delegate:Lcom/jme3/anim/tween/Tween;

.field private final func:Lcom/jme3/anim/tween/Tweens$CurveFunction;

.field private final length:D


# direct methods
.method public constructor <init>(Lcom/jme3/anim/tween/Tween;Lcom/jme3/anim/tween/Tweens$CurveFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/anim/tween/Tweens$Curve;->delegate:Lcom/jme3/anim/tween/Tween;

    iput-object p2, p0, Lcom/jme3/anim/tween/Tweens$Curve;->func:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    invoke-interface {p1}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/jme3/anim/tween/Tweens$Curve;->length:D

    return-void
.end method


# virtual methods
.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Curve;->length:D

    return-wide v0
.end method

.method public interpolate(D)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-wide v2, p0, Lcom/jme3/anim/tween/Tweens$Curve;->length:D

    cmpl-double v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Curve;->delegate:Lcom/jme3/anim/tween/Tween;

    invoke-interface {v0, p1, p2}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Curve;->func:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    div-double/2addr p1, v2

    invoke-interface {v0, p1, p2}, Lcom/jme3/anim/tween/Tweens$CurveFunction;->curve(D)D

    move-result-wide p1

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Curve;->delegate:Lcom/jme3/anim/tween/Tween;

    iget-wide v1, p0, Lcom/jme3/anim/tween/Tweens$Curve;->length:D

    mul-double/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Curve;->delegate:Lcom/jme3/anim/tween/Tween;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", func="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Curve;->func:Lcom/jme3/anim/tween/Tweens$CurveFunction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
