.class Lcom/jme3/anim/tween/Tweens$Stretch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/tween/Tween;
.implements Lcom/jme3/anim/tween/ContainsTweens;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/tween/Tweens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stretch"
.end annotation


# instance fields
.field private final delegate:[Lcom/jme3/anim/tween/Tween;

.field private final length:D

.field private final scale:D


# direct methods
.method public constructor <init>(Lcom/jme3/anim/tween/Tween;D)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jme3/anim/tween/Tween;

    iput-object v0, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-wide p2, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->length:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v0

    div-double/2addr v0, p2

    iput-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->scale:D

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->scale:D

    :goto_0
    return-void
.end method


# virtual methods
.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->length:D

    return-wide v0
.end method

.method public getTweens()[Lcom/jme3/anim/tween/Tween;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->delegate:[Lcom/jme3/anim/tween/Tween;

    return-object v0
.end method

.method public interpolate(D)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-wide v2, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->length:D

    cmpl-double v0, v2, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->scale:D

    mul-double v2, p1, v0

    :cond_1
    iget-object p1, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-interface {p1, v2, v3}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/anim/tween/Tweens$Stretch;->length:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
