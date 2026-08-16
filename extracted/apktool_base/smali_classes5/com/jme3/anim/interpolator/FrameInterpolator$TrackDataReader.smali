.class public Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/interpolator/FrameInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackDataReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Lcom/jme3/animation/CompactArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/animation/CompactArray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClamp(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    int-to-float p1, p1

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->data:Lcom/jme3/animation/CompactArray;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactArray;->getTotalObjectSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->data:Lcom/jme3/animation/CompactArray;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntryMod(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->data:Lcom/jme3/animation/CompactArray;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactArray;->getTotalObjectSize()I

    move-result v1

    invoke-static {p1, v1}, Lcom/jme3/anim/interpolator/FrameInterpolator;->access$000(II)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->data:Lcom/jme3/animation/CompactArray;

    invoke-virtual {v0}, Lcom/jme3/animation/CompactArray;->getTotalObjectSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    invoke-static {p1, v0}, Lcom/jme3/anim/interpolator/FrameInterpolator;->access$000(II)I

    move-result p1

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->data:Lcom/jme3/animation/CompactArray;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/animation/CompactArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setData(Lcom/jme3/animation/CompactArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/animation/CompactArray<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->data:Lcom/jme3/animation/CompactArray;

    return-void
.end method
