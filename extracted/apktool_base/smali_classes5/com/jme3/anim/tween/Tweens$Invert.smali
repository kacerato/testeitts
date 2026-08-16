.class Lcom/jme3/anim/tween/Tweens$Invert;
.super Lcom/jme3/anim/tween/AbstractTween;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/tween/ContainsTweens;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/tween/Tweens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Invert"
.end annotation


# instance fields
.field private final delegate:[Lcom/jme3/anim/tween/Tween;


# direct methods
.method public constructor <init>(Lcom/jme3/anim/tween/Tween;)V
    .locals 2

    invoke-interface {p1}, Lcom/jme3/anim/tween/Tween;->getLength()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/jme3/anim/tween/AbstractTween;-><init>(D)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jme3/anim/tween/Tween;

    iput-object v0, p0, Lcom/jme3/anim/tween/Tweens$Invert;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public doInterpolate(D)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Invert;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, p1

    invoke-virtual {p0}, Lcom/jme3/anim/tween/AbstractTween;->getLength()D

    move-result-wide p1

    mul-double/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/jme3/anim/tween/Tween;->interpolate(D)Z

    return-void
.end method

.method public getTweens()[Lcom/jme3/anim/tween/Tween;
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/tween/Tweens$Invert;->delegate:[Lcom/jme3/anim/tween/Tween;

    return-object v0
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

    iget-object v1, p0, Lcom/jme3/anim/tween/Tweens$Invert;->delegate:[Lcom/jme3/anim/tween/Tween;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/anim/tween/AbstractTween;->getLength()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
