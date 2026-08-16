.class public Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;
.super Lcom/jme3/anim/interpolator/AnimInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/anim/interpolator/AnimInterpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatmullRomInterpolator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/anim/interpolator/AnimInterpolator<",
        "Lcom/jme3/math/Vector3f;",
        ">;"
    }
.end annotation


# instance fields
.field private final p0:Lcom/jme3/math/Vector3f;

.field private final p1:Lcom/jme3/math/Vector3f;

.field private final p2:Lcom/jme3/math/Vector3f;

.field private final p3:Lcom/jme3/math/Vector3f;

.field private tension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jme3/anim/interpolator/AnimInterpolator;-><init>()V

    .line 8
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p0:Lcom/jme3/math/Vector3f;

    .line 9
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p1:Lcom/jme3/math/Vector3f;

    .line 10
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p2:Lcom/jme3/math/Vector3f;

    .line 11
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p3:Lcom/jme3/math/Vector3f;

    const v0, 0x3f333333    # 0.7f

    .line 12
    iput v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->tension:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/anim/interpolator/AnimInterpolator;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p0:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p1:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p2:Lcom/jme3/math/Vector3f;

    .line 5
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p3:Lcom/jme3/math/Vector3f;

    .line 6
    iput p1, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->tension:F

    return-void
.end method


# virtual methods
.method public interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 7
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

    add-int/lit8 p4, p2, -0x1

    .line 2
    iget-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p0:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p4, v0}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p4, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p2, p4}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p2, 0x1

    .line 4
    iget-object v0, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p4, v0}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x2

    .line 5
    iget-object p4, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p3:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p2, p4}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->getEntryModSkip(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->tension:F

    iget-object v2, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p0:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p1:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p2:Lcom/jme3/math/Vector3f;

    iget-object v5, p0, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->p3:Lcom/jme3/math/Vector3f;

    move v0, p1

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/jme3/math/FastMath;->interpolateCatmullRom(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

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

    invoke-virtual/range {p0 .. p5}, Lcom/jme3/anim/interpolator/AnimInterpolators$CatmullRomInterpolator;->interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method
