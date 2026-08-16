.class Lcom/jme3/math/Easing$7;
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
    .locals 2

    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v0

    const v1, 0x3d99999a    # 0.075f

    sub-float/2addr p1, v1

    const v1, 0x40c90fdb

    mul-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    div-float/2addr p1, v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    return v0
.end method
