.class public Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;
.super Lcom/jme3/anim/interpolator/AnimInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/interpolator/AnimInterpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeInterpolator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/anim/interpolator/AnimInterpolator<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final ease:Lcom/jme3/math/EaseFunction;


# direct methods
.method public constructor <init>(Lcom/jme3/math/EaseFunction;)V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/anim/interpolator/AnimInterpolator;-><init>()V

    iput-object p1, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;->ease:Lcom/jme3/math/EaseFunction;

    return-void
.end method


# virtual methods
.method public interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;",
            "Ljava/lang/Float;",
            ")",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;->ease:Lcom/jme3/math/EaseFunction;

    invoke-interface {p2, p1}, Lcom/jme3/math/EaseFunction;->apply(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
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
    check-cast p5, Ljava/lang/Float;

    invoke-virtual/range {p0 .. p5}, Lcom/jme3/anim/interpolator/AnimInterpolators$TimeInterpolator;->interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
