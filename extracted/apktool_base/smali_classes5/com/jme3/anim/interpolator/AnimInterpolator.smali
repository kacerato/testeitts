.class public abstract Lcom/jme3/anim/interpolator/AnimInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader<",
            "TT;>;",
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;",
            "TT;)TT;"
        }
    .end annotation
.end method
