.class public Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/interpolator/FrameInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackTimeReader"
.end annotation


# instance fields
.field private data:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntry(I)F
    .locals 2

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;->data:[F

    array-length v1, v0

    invoke-static {p1, v1}, Lcom/jme3/anim/interpolator/FrameInterpolator;->access$000(II)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;->data:[F

    array-length v0, v0

    return v0
.end method

.method public setData([F)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;->data:[F

    return-void
.end method
