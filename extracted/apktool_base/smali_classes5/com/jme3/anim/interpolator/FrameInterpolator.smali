.class public Lcom/jme3/anim/interpolator/FrameInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;,
        Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/jme3/anim/interpolator/FrameInterpolator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final THREAD_DEFAULT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/anim/interpolator/FrameInterpolator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private rotationInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private final rotationReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader<",
            "Lcom/jme3/math/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private scaleInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private final scaleReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private timeInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final timesReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;

.field private final transforms:Lcom/jme3/math/Transform;

.field private translationInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private final translationReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/anim/interpolator/FrameInterpolator;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/FrameInterpolator;-><init>()V

    sput-object v0, Lcom/jme3/anim/interpolator/FrameInterpolator;->DEFAULT:Lcom/jme3/anim/interpolator/FrameInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/a;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/a;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/jme3/anim/interpolator/FrameInterpolator;->THREAD_DEFAULT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/jme3/anim/interpolator/AnimInterpolators;->LinearVec3f:Lcom/jme3/anim/interpolator/AnimInterpolator;

    iput-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->translationInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    sget-object v1, Lcom/jme3/anim/interpolator/AnimInterpolators;->NLerp:Lcom/jme3/anim/interpolator/AnimInterpolator;

    iput-object v1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->rotationInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    iput-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->scaleInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    new-instance v0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->translationReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    new-instance v0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->rotationReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    new-instance v0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->scaleReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    new-instance v0, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->timesReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->transforms:Lcom/jme3/math/Transform;

    return-void
.end method

.method public static synthetic a()Lcom/jme3/anim/interpolator/FrameInterpolator;
    .locals 1

    invoke-static {}, Lcom/jme3/anim/interpolator/FrameInterpolator;->lambda$static$0()Lcom/jme3/anim/interpolator/FrameInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$000(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/anim/interpolator/FrameInterpolator;->mod(II)I

    move-result p0

    return p0
.end method

.method public static getThreadDefault()Lcom/jme3/anim/interpolator/FrameInterpolator;
    .locals 1

    sget-object v0, Lcom/jme3/anim/interpolator/FrameInterpolator;->THREAD_DEFAULT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/anim/interpolator/FrameInterpolator;

    return-object v0
.end method

.method private static synthetic lambda$static$0()Lcom/jme3/anim/interpolator/FrameInterpolator;
    .locals 1

    new-instance v0, Lcom/jme3/anim/interpolator/FrameInterpolator;

    invoke-direct {v0}, Lcom/jme3/anim/interpolator/FrameInterpolator;-><init>()V

    return-object v0
.end method

.method private static mod(II)I
    .locals 0

    rem-int/2addr p0, p1

    add-int/2addr p0, p1

    rem-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public interpolate(FILcom/jme3/animation/CompactVector3Array;Lcom/jme3/animation/CompactQuaternionArray;Lcom/jme3/animation/CompactVector3Array;[F)Lcom/jme3/math/Transform;
    .locals 7

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->timesReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;

    invoke-virtual {v0, p6}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;->setData([F)V

    iget-object v1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->timeInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->timesReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/jme3/anim/interpolator/AnimInterpolator;->interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_0
    if-eqz p3, :cond_1

    iget-object p6, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->translationReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    invoke-virtual {p6, p3}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->setData(Lcom/jme3/animation/CompactArray;)V

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->translationInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    iget-object v3, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->translationReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    iget-object v4, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->timesReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;

    iget-object p3, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->transforms:Lcom/jme3/math/Transform;

    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/anim/interpolator/AnimInterpolator;->interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->rotationReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    invoke-virtual {p3, p4}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->setData(Lcom/jme3/animation/CompactArray;)V

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->rotationInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    iget-object v3, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->rotationReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    iget-object v4, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->timesReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;

    iget-object p3, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->transforms:Lcom/jme3/math/Transform;

    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/anim/interpolator/AnimInterpolator;->interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p5, :cond_3

    iget-object p3, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->scaleReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    invoke-virtual {p3, p5}, Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;->setData(Lcom/jme3/animation/CompactArray;)V

    iget-object v0, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->scaleInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    iget-object v3, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->scaleReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;

    iget-object v4, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->timesReader:Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;

    iget-object p3, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->transforms:Lcom/jme3/math/Transform;

    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v5

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/anim/interpolator/AnimInterpolator;->interpolate(FILcom/jme3/anim/interpolator/FrameInterpolator$TrackDataReader;Lcom/jme3/anim/interpolator/FrameInterpolator$TrackTimeReader;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->transforms:Lcom/jme3/math/Transform;

    return-object p1
.end method

.method public interpolateWeights(FI[FI[F)V
    .locals 4

    mul-int/2addr p2, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p2, v0

    add-int v2, v1, p4

    array-length v3, p3

    if-lt v2, v3, :cond_0

    move v2, v1

    :cond_0
    aget v1, p3, v1

    aget v2, p3, v2

    invoke-static {p1, v1, v2}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v1

    aput v1, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRotationInterpolator(Lcom/jme3/anim/interpolator/AnimInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Quaternion;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->rotationInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    return-void
.end method

.method public setScaleInterpolator(Lcom/jme3/anim/interpolator/AnimInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Vector3f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->scaleInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    return-void
.end method

.method public setTimeInterpolator(Lcom/jme3/anim/interpolator/AnimInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->timeInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    return-void
.end method

.method public setTranslationInterpolator(Lcom/jme3/anim/interpolator/AnimInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/interpolator/AnimInterpolator<",
            "Lcom/jme3/math/Vector3f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/anim/interpolator/FrameInterpolator;->translationInterpolator:Lcom/jme3/anim/interpolator/AnimInterpolator;

    return-void
.end method
