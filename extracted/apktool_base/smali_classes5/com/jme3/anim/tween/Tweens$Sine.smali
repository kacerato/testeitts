.class Lcom/jme3/anim/tween/Tweens$Sine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/anim/tween/Tweens$CurveFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/tween/Tweens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sine"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/anim/tween/Tweens$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/anim/tween/Tweens$Sine;-><init>()V

    return-void
.end method


# virtual methods
.method public curve(D)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    return-wide v0

    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v2

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, v0

    return-wide p1
.end method
