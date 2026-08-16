.class public Lcom/jme3/scene/control/AreaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcScreenArea(Lcom/jme3/bounding/BoundingVolume;FF)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jme3/util/AreaUtils;->calcScreenArea(Lcom/jme3/bounding/BoundingVolume;FF)F

    move-result p0

    return p0
.end method
