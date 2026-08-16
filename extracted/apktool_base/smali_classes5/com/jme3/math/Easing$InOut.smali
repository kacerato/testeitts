.class public Lcom/jme3/math/Easing$InOut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/math/EaseFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/math/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InOut"
.end annotation


# instance fields
.field private final in:Lcom/jme3/math/EaseFunction;

.field private final out:Lcom/jme3/math/EaseFunction;


# direct methods
.method public constructor <init>(Lcom/jme3/math/EaseFunction;Lcom/jme3/math/EaseFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/math/Easing$InOut;->in:Lcom/jme3/math/EaseFunction;

    iput-object p2, p0, Lcom/jme3/math/Easing$InOut;->out:Lcom/jme3/math/EaseFunction;

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    mul-float/2addr p1, v1

    iget-object v0, p0, Lcom/jme3/math/Easing$InOut;->in:Lcom/jme3/math/EaseFunction;

    invoke-interface {v0, p1}, Lcom/jme3/math/EaseFunction;->apply(F)F

    move-result p1

    div-float/2addr p1, v1

    return p1

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    iget-object v2, p0, Lcom/jme3/math/Easing$InOut;->out:Lcom/jme3/math/EaseFunction;

    invoke-interface {v2, p1}, Lcom/jme3/math/EaseFunction;->apply(F)F

    move-result p1

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    return p1
.end method
