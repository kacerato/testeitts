.class Lcom/jme3/anim/tween/Tweens$Sequence;
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
    name = "Sequence"
.end annotation


# instance fields
.field private baseTime:D

.field private current:I

.field private final delegates:[Lcom/jme3/anim/tween/Tween;

.field private length:D


# direct methods
.method public varargs constructor <init>([Lcom/jme3/anim/tween/Tween;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->current:I

    iput-object p1, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->delegates:[Lcom/jme3/anim/tween/Tween;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-wide v3, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->length:D

    invoke-interface {v2}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v5

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->length:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->length:D

    return-wide v0
.end method

.method public getTweens()[Lcom/jme3/anim/tween/Tween;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->delegates:[Lcom/jme3/anim/tween/Tween;

    return-object v0
.end method

.method public interpolate(D)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x1

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->baseTime:D

    cmpg-double v2, p1, v4

    const/4 v4, 0x0

    if-gez v2, :cond_1

    iput v4, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->current:I

    iput-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->baseTime:D

    :cond_1
    iget v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->current:I

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->delegates:[Lcom/jme3/anim/tween/Tween;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    return v4

    :cond_2
    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->delegates:[Lcom/jme3/anim/tween/Tween;

    iget v1, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->current:I

    aget-object v0, v0, v1

    iget-wide v1, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->baseTime:D

    sub-double v1, p1, v1

    invoke-interface {v0, v1, v2}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->baseTime:D

    iget-object v2, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->delegates:[Lcom/jme3/anim/tween/Tween;

    iget v5, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->current:I

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v5

    add-double/2addr v0, v5

    iput-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->baseTime:D

    iget v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->current:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->current:I

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->delegates:[Lcom/jme3/anim/tween/Tween;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    return v4

    :cond_3
    return v3
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

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Sequence;->delegates:[Lcom/jme3/anim/tween/Tween;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
