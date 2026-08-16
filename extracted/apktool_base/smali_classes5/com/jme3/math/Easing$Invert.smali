.class Lcom/jme3/math/Easing$Invert;
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
    name = "Invert"
.end annotation


# instance fields
.field private final func:Lcom/jme3/math/EaseFunction;


# direct methods
.method public constructor <init>(Lcom/jme3/math/EaseFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/math/Easing$Invert;->func:Lcom/jme3/math/EaseFunction;

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Easing$Invert;->func:Lcom/jme3/math/EaseFunction;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    invoke-interface {v0, p1}, Lcom/jme3/math/EaseFunction;->apply(F)F

    move-result p1

    sub-float/2addr v1, p1

    return v1
.end method
