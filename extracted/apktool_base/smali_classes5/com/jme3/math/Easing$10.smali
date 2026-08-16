.class Lcom/jme3/math/Easing$10;
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
    .locals 3

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x41700000    # 15.0f

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0
.end method
