.class public Lcom/jme3/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clampWrapTime(FFLcom/jme3/animation/LoopMode;)F
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_7

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/jme3/animation/AnimationUtils$1;->$SwitchMap$com$jme3$animation$LoopMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v1, :cond_5

    if-eq p2, v2, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    return p0

    :cond_1
    rem-float/2addr p0, p1

    return p0

    :cond_2
    cmpl-float p2, p0, p1

    if-lez p2, :cond_3

    move p0, p1

    goto :goto_0

    :cond_3
    cmpg-float p1, p0, v0

    if-gez p1, :cond_4

    move p0, v0

    :cond_4
    :goto_0
    return p0

    :cond_5
    div-float p2, p0, p1

    float-to-int p2, p2

    rem-int/2addr p2, v2

    if-eqz p2, :cond_6

    rem-float/2addr p0, p1

    sub-float/2addr p1, p0

    neg-float p0, p1

    goto :goto_1

    :cond_6
    rem-float/2addr p0, p1

    :goto_1
    return p0

    :cond_7
    :goto_2
    return v0
.end method
