.class Lcom/jme3/anim/interpolator/AnimInterpolators$4;
.super Lcom/jme3/anim/interpolator/AnimInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/interpolator/AnimInterpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/anim/interpolator/AnimInterpolator<",
        "Lcom/jme3/math/Vector3f;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/anim/interpolator/AnimInterpolator;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$4;->next:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;",
            "Lcom/jme3/math/Vector3f;",
            ")",
            "Lcom/jme3/math/Vector3f;"
        }
    .end annotation

    .line 2
    invoke-virtual {p3, p2, p5}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryClamp(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    .line 3
    iget-object p4, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$4;->next:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p2, p4}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryClamp(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$4;->next:Lcom/jme3/math/Vector3f;

    invoke-virtual {p5, p2, p1}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    return-object p5
.end method

.method public bridge synthetic interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p5, Lcom/jme3/math/Vector3f;

    invoke-virtual/range {p0 .. p5}, Lcom/jme3/anim/interpolator/AnimInterpolators$4;->interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method
