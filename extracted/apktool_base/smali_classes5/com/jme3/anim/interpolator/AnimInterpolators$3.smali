.class Lcom/jme3/anim/interpolator/AnimInterpolators$3;
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
        "Lcom/jme3/math/Quaternion;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/jme3/math/Quaternion;

.field private b:Lcom/jme3/math/Quaternion;

.field private q0:Lcom/jme3/math/Quaternion;

.field private q1:Lcom/jme3/math/Quaternion;

.field private q2:Lcom/jme3/math/Quaternion;

.field private q3:Lcom/jme3/math/Quaternion;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/anim/interpolator/AnimInterpolator;-><init>()V

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->a:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->b:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q0:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q1:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q2:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q3:Lcom/jme3/math/Quaternion;

    return-void
.end method


# virtual methods
.method public interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader<",
            "Lcom/jme3/math/Quaternion;",
            ">;",
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;",
            "Lcom/jme3/math/Quaternion;",
            ")",
            "Lcom/jme3/math/Quaternion;"
        }
    .end annotation

    add-int/lit8 p4, p2, -0x1

    .line 2
    iget-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q0:Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p4, v0}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p4, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q1:Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p2, p4}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p2, 0x1

    .line 4
    iget-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q2:Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p4, v0}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x2

    .line 5
    iget-object p4, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q3:Lcom/jme3/math/Quaternion;

    invoke-virtual {p3, p2, p4}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q0:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q1:Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q2:Lcom/jme3/math/Quaternion;

    iget-object v3, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->q3:Lcom/jme3/math/Quaternion;

    iget-object v4, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->a:Lcom/jme3/math/Quaternion;

    iget-object v5, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->b:Lcom/jme3/math/Quaternion;

    move v6, p1

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/jme3/math/MathUtils;->squad(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;FLcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

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
    check-cast p5, Lcom/jme3/math/Quaternion;

    invoke-virtual/range {p0 .. p5}, Lcom/jme3/anim/interpolator/AnimInterpolators$3;->interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method
