.class Lcom/jme3/anim/tween/Tweens$Parallel;
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
    name = "Parallel"
.end annotation


# instance fields
.field private final delegates:[Lcom/jme3/anim/tween/Tween;

.field private final done:[Z

.field private lastTime:D

.field private length:D


# direct methods
.method public varargs constructor <init>([Lcom/jme3/anim/tween/Tween;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->delegates:[Lcom/jme3/anim/tween/Tween;

    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->done:[Z

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->length:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-interface {v2}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->length:D

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->length:D

    return-wide v0
.end method

.method public getTweens()[Lcom/jme3/anim/tween/Tween;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->delegates:[Lcom/jme3/anim/tween/Tween;

    return-object v0
.end method

.method public interpolate(D)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->lastTime:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/anim/tween/Tweens$Parallel;->reset()V

    :cond_1
    iput-wide p1, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->lastTime:D

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->delegates:[Lcom/jme3/anim/tween/Tween;

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->delegates:[Lcom/jme3/anim/tween/Tween;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->done:[Z

    aget-boolean v6, v5, v3

    if-nez v6, :cond_2

    aget-object v4, v4, v3

    invoke-interface {v4, p1, p2}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    move-result v4

    xor-int/2addr v4, v1

    aput-boolean v4, v5, v3

    :cond_2
    iget-object v4, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->done:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->done:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    const-string v1, "[delegates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Parallel;->delegates:[Lcom/jme3/anim/tween/Tween;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
