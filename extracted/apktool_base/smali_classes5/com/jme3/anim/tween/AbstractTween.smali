.class public abstract Lcom/jme3/anim/tween/AbstractTween;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/anim/tween/Tween;


# instance fields
.field private length:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/jme3/anim/tween/AbstractTween;->length:D

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract doInterpolate(D)V
.end method

.method public getLength()D
    .locals 2

    iget-wide v0, p0, Lcom/jme3/anim/tween/AbstractTween;->length:D

    return-wide v0
.end method

.method public interpolate(D)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x1

    if-gez v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Lcom/jme3/anim/tween/AbstractTween;->length:D

    cmpl-double v0, v4, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_1

    move-wide p1, v1

    goto :goto_0

    :cond_1
    div-double/2addr p1, v4

    :goto_0
    cmpl-double v0, p1, v1

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move-wide v1, p1

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/jme3/anim/tween/AbstractTween;->doInterpolate(D)V

    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public jmeClone()Lcom/jme3/anim/tween/AbstractTween;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/tween/AbstractTween;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/anim/tween/AbstractTween;->jmeClone()Lcom/jme3/anim/tween/AbstractTween;

    move-result-object v0

    return-object v0
.end method

.method public setLength(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/jme3/anim/tween/AbstractTween;->length:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length must be greater than or equal to 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
