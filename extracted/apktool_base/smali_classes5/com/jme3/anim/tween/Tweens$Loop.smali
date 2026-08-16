.class Lcom/jme3/anim/tween/Tweens$Loop;
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
    name = "Loop"
.end annotation


# instance fields
.field private baseTime:D

.field private current:I

.field private final delegate:[Lcom/jme3/anim/tween/Tween;

.field private final length:D

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lcom/jme3/anim/tween/Tween;D)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/jme3/anim/tween/Tween;

    iput-object v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/jme3/anim/tween/Tweens$Loop;->current:I

    .line 4
    invoke-interface {p1}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-lez v2, :cond_1

    cmpg-double v2, p2, v4

    if-lez v2, :cond_0

    .line 5
    aput-object p1, v0, v1

    .line 6
    iput-wide p2, p0, Lcom/jme3/anim/tween/Tweens$Loop;->length:D

    .line 7
    invoke-interface {p1}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v0

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/jme3/anim/tween/Tweens$Loop;->loopCount:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duration must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Delegate length must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/jme3/anim/tween/Tween;I)V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Lcom/jme3/anim/tween/Tween;

    iput-object v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/jme3/anim/tween/Tweens$Loop;->current:I

    if-lez p2, :cond_0

    .line 13
    aput-object p1, v0, v1

    int-to-double v0, p2

    .line 14
    invoke-interface {p1}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->length:D

    .line 15
    iput p2, p0, Lcom/jme3/anim/tween/Tweens$Loop;->loopCount:I

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Loop count must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->length:D

    return-wide v0
.end method

.method public getTweens()[Lcom/jme3/anim/tween/Tween;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->delegate:[Lcom/jme3/anim/tween/Tween;

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
    iget-wide v4, p0, Lcom/jme3/anim/tween/Tweens$Loop;->baseTime:D

    cmpg-double v2, p1, v4

    const/4 v4, 0x0

    if-gez v2, :cond_1

    iput v4, p0, Lcom/jme3/anim/tween/Tweens$Loop;->current:I

    iput-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->baseTime:D

    :cond_1
    iget v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->current:I

    iget v1, p0, Lcom/jme3/anim/tween/Tweens$Loop;->loopCount:I

    if-lt v0, v1, :cond_2

    return v4

    :cond_2
    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->delegate:[Lcom/jme3/anim/tween/Tween;

    aget-object v0, v0, v4

    iget-wide v1, p0, Lcom/jme3/anim/tween/Tweens$Loop;->baseTime:D

    sub-double v1, p1, v1

    invoke-interface {v0, v1, v2}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->baseTime:D

    iget-object v2, p0, Lcom/jme3/anim/tween/Tweens$Loop;->delegate:[Lcom/jme3/anim/tween/Tween;

    aget-object v2, v2, v4

    invoke-interface {v2}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v5

    add-double/2addr v0, v5

    iput-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->baseTime:D

    iget v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->current:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->current:I

    iget v1, p0, Lcom/jme3/anim/tween/Tweens$Loop;->loopCount:I

    if-lt v0, v1, :cond_2

    return v4

    :cond_3
    iget-wide v0, p0, Lcom/jme3/anim/tween/Tweens$Loop;->length:D

    cmpg-double p1, p1, v0

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    return v3
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

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Loop;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jme3/anim/tween/Tweens$Loop;->length:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
