.class Lcom/jme3/anim/tween/Tweens$SmoothStep;
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
    name = "SmoothStep"
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
    invoke-direct {p0}, Lcom/jme3/anim/tween/Tweens$SmoothStep;-><init>()V

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
    mul-double v0, p1, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method
