.class public Lcom/jme3/animation/AnimationFactory$Rotation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/animation/AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Rotation"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field eulerAngles:Lcom/jme3/math/Vector3f;

.field masterKeyFrame:I

.field rotation:Lcom/jme3/math/Quaternion;

.field final synthetic this$0:Lcom/jme3/animation/AnimationFactory;


# direct methods
.method public constructor <init>(Lcom/jme3/animation/AnimationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->this$0:Lcom/jme3/animation/AnimationFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->rotation:Lcom/jme3/math/Quaternion;

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->eulerAngles:Lcom/jme3/math/Vector3f;

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->masterKeyFrame:I

    iget-object p1, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    return-void
.end method


# virtual methods
.method public set(FFF)V
    .locals 2

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 6
    iget-object v1, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Quaternion;->fromAngles([F)Lcom/jme3/math/Quaternion;

    .line 7
    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->eulerAngles:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public set(Lcom/jme3/math/Quaternion;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    const/4 p1, 0x3

    .line 2
    new-array p1, p1, [F

    .line 3
    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->toAngles([F)[F

    .line 4
    iget-object v0, p0, Lcom/jme3/animation/AnimationFactory$Rotation;->eulerAngles:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method
