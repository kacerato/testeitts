.class Lcom/jme3/math/Easing$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/math/EaseFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/math/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 6

    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40f20000    # 7.5625f

    if-gez v0, :cond_0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    return v1

    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f400000    # 0.75f

    add-float/2addr v1, p1

    return v1

    :cond_1
    float-to-double v2, p1

    const-wide v4, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f700000    # 0.9375f

    add-float/2addr v1, p1

    return v1

    :cond_2
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f7c0000    # 0.984375f

    add-float/2addr v1, p1

    return v1
.end method
