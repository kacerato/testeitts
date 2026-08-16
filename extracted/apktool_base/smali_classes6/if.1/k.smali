.class public final Lif/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/k;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/jme3/anim/AnimTrack;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/AnimTrack<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/jme3/anim/TransformTrack;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object p0

    instance-of p0, p0, Lcom/jme3/anim/Joint;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static B(Lcom/jme3/anim/AnimTrack;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/anim/AnimTrack<",
            "*>;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/jme3/anim/TransformTrack;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object p0

    instance-of p0, p0, Lcom/jme3/scene/Spatial;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static C(ILcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)Lcom/jme3/animation/BoneTrack;
    .locals 3

    const-string v0, "bone index"

    invoke-static {p0, v0}, Lif/E;->q(ILjava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    filled-new-array {p1}, [Lcom/jme3/math/Vector3f;

    move-result-object p1

    filled-new-array {p2}, [Lcom/jme3/math/Quaternion;

    move-result-object p2

    filled-new-array {p3}, [Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-static {p0, v0, p1, p2, p3}, Lif/k;->E(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)Lcom/jme3/animation/BoneTrack;

    move-result-object p0

    return-object p0
.end method

.method public static D(I[FLcom/jme3/math/Transform;)Lcom/jme3/animation/BoneTrack;
    .locals 7

    const-string v0, "bone index"

    invoke-static {p0, v0}, Lif/E;->q(ILjava/lang/String;)Z

    array-length v0, p1

    new-array v1, v0, [F

    new-array v2, v0, [Lcom/jme3/math/Vector3f;

    new-array v3, v0, [Lcom/jme3/math/Quaternion;

    new-array v4, v0, [Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    aget v6, p1, v5

    aput v6, v1, v5

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, v2, v3, v4}, Lif/k;->E(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)Lcom/jme3/animation/BoneTrack;

    move-result-object p0

    return-object p0
.end method

.method public static E(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)Lcom/jme3/animation/BoneTrack;
    .locals 7

    const-string v0, "times"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "translations"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "rotations"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    array-length v0, p1

    if-nez p4, :cond_0

    new-instance p4, Lcom/jme3/animation/BoneTrack;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/jme3/animation/BoneTrack;-><init>(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/jme3/animation/BoneTrack;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/animation/BoneTrack;-><init>(I[F[Lcom/jme3/math/Vector3f;[Lcom/jme3/math/Quaternion;[Lcom/jme3/math/Vector3f;)V

    move-object p4, v6

    :goto_0
    return-object p4
.end method

.method public static a(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Quaternion;
    .locals 1

    instance-of v0, p0, Lcom/jme3/animation/BoneTrack;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/animation/BoneTrack;

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getRotations()[Lcom/jme3/math/Quaternion;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/animation/SpatialTrack;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/animation/SpatialTrack;

    invoke-virtual {p0}, Lcom/jme3/animation/SpatialTrack;->getRotations()[Lcom/jme3/math/Quaternion;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Vector3f;
    .locals 1

    instance-of v0, p0, Lcom/jme3/animation/BoneTrack;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/animation/BoneTrack;

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getScales()[Lcom/jme3/math/Vector3f;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/animation/SpatialTrack;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/animation/SpatialTrack;

    invoke-virtual {p0}, Lcom/jme3/animation/SpatialTrack;->getScales()[Lcom/jme3/math/Vector3f;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Vector3f;
    .locals 1

    instance-of v0, p0, Lcom/jme3/animation/BoneTrack;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/animation/BoneTrack;

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getTranslations()[Lcom/jme3/math/Vector3f;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/animation/SpatialTrack;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/animation/SpatialTrack;

    invoke-virtual {p0}, Lcom/jme3/animation/SpatialTrack;->getTranslations()[Lcom/jme3/math/Vector3f;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Lcom/jme3/animation/Animation;Ljava/lang/Class;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/animation/Track;",
            ">(",
            "Lcom/jme3/animation/Animation;",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/animation/Animation;->getTracks()[Lcom/jme3/animation/Track;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method public static e(Lcom/jme3/anim/AnimClip;Lcom/jme3/anim/AnimComposer;)Ljava/lang/String;
    .locals 4

    const-string v0, "composer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/anim/AnimClip;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/anim/AnimClip;->getTracks()[Lcom/jme3/anim/AnimTrack;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s[%d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lif/k;->f(Lcom/jme3/anim/AnimTrack;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lif/t;->q([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%s(%s)"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static f(Lcom/jme3/anim/AnimTrack;)Ljava/lang/String;
    .locals 3

    const-string v0, "track"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lif/k;->i(Ljava/lang/Object;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lcom/jme3/anim/MorphTrack;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/jme3/anim/MorphTrack;

    invoke-virtual {p0}, Lcom/jme3/anim/MorphTrack;->getTarget()Lcom/jme3/scene/Geometry;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/jme3/anim/TransformTrack;

    if-eqz v1, :cond_3

    check-cast p0, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lif/k;->w(Lcom/jme3/anim/util/HasLocalTransform;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getTranslations()[Lcom/jme3/math/Vector3f;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getRotations()[Lcom/jme3/math/Quaternion;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getScales()[Lcom/jme3/math/Vector3f;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p0, "S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/jme3/animation/Animation;Lcom/jme3/animation/AnimControl;)Ljava/lang/String;
    .locals 5

    const-string v0, "anim control"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/animation/Animation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/animation/Animation;->getTracks()[Lcom/jme3/animation/Track;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-static {v0}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s[%d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-static {v4, p1}, Lif/k;->h(Lcom/jme3/animation/Track;Lcom/jme3/animation/AnimControl;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lif/t;->q([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%s(%s)"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static h(Lcom/jme3/animation/Track;Lcom/jme3/animation/AnimControl;)Ljava/lang/String;
    .locals 2

    const-string v0, "track"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "anim control"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lif/k;->i(Ljava/lang/Object;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    instance-of v1, p0, Lcom/jme3/animation/BoneTrack;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/jme3/animation/SpatialTrack;

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {p0, p1}, Lif/k;->x(Lcom/jme3/animation/Track;Lcom/jme3/animation/AnimControl;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lif/t;->s(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lif/k;->c(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Vector3f;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "T"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p0}, Lif/k;->a(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Quaternion;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "R"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {p0}, Lif/k;->b(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Vector3f;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p0, "S"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)C
    .locals 1

    instance-of v0, p0, Lcom/jme3/animation/AudioTrack;

    if-eqz v0, :cond_0

    const/16 p0, 0x61

    return p0

    :cond_0
    instance-of v0, p0, Lcom/jme3/animation/BoneTrack;

    if-eqz v0, :cond_1

    const/16 p0, 0x62

    return p0

    :cond_1
    instance-of v0, p0, Lcom/jme3/animation/EffectTrack;

    if-eqz v0, :cond_2

    const/16 p0, 0x65

    return p0

    :cond_2
    instance-of v0, p0, Lcom/jme3/anim/MorphTrack;

    if-eqz v0, :cond_3

    const/16 p0, 0x6d

    return p0

    :cond_3
    instance-of v0, p0, Lcom/jme3/animation/SpatialTrack;

    if-eqz v0, :cond_4

    const/16 p0, 0x73

    return p0

    :cond_4
    instance-of p0, p0, Lcom/jme3/anim/TransformTrack;

    if-eqz p0, :cond_5

    const/16 p0, 0x74

    return p0

    :cond_5
    const/16 p0, 0x3f

    return p0
.end method

.method public static j(Lcom/jme3/animation/Animation;I)Lcom/jme3/animation/BoneTrack;
    .locals 4

    const-string v0, "bone index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/animation/Animation;->getTracks()[Lcom/jme3/animation/Track;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/jme3/animation/BoneTrack;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/jme3/animation/BoneTrack;

    invoke-virtual {v2}, Lcom/jme3/animation/BoneTrack;->getTargetBoneIndex()I

    move-result v3

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Lcom/jme3/anim/AnimClip;I)Lcom/jme3/anim/TransformTrack;
    .locals 5

    const-string v0, "joint index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/anim/AnimClip;->getTracks()[Lcom/jme3/anim/AnimTrack;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/jme3/anim/TransformTrack;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {v2}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object v3

    instance-of v4, v3, Lcom/jme3/anim/Joint;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/jme3/anim/Joint;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getId()I

    move-result v3

    if-ne p1, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lcom/jme3/anim/TransformTrack;F)I
    .locals 1

    const-string v0, "time"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getTimes()[F

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static m(Lcom/jme3/animation/Track;F)I
    .locals 1

    const-string v0, "time"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-interface {p0}, Lcom/jme3/animation/Track;->getKeyFrameTimes()[F

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static n(Lcom/jme3/animation/Animation;)F
    .locals 9

    invoke-virtual {p0}, Lcom/jme3/animation/Animation;->getTracks()[Lcom/jme3/animation/Track;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    invoke-interface {v4}, Lcom/jme3/animation/Track;->getKeyFrameTimes()[F

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    cmpl-float v8, v7, v1

    if-lez v8, :cond_0

    move v1, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static o(Lcom/jme3/anim/TransformTrack;F)I
    .locals 1

    const-string v0, "time"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getTimes()[F

    move-result-object p0

    invoke-static {p1, p0}, Ljf/c;->f(F[F)I

    move-result p0

    return p0
.end method

.method public static p(Lcom/jme3/animation/Track;F)I
    .locals 1

    const-string v0, "time"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-interface {p0}, Lcom/jme3/animation/Track;->getKeyFrameTimes()[F

    move-result-object p0

    invoke-static {p1, p0}, Ljf/c;->f(F[F)I

    move-result p0

    return p0
.end method

.method public static q(Lcom/jme3/animation/AnimControl;Lcom/jme3/animation/Animation;Lcom/jme3/scene/Spatial;)Lcom/jme3/animation/SpatialTrack;
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/animation/Animation;->getTracks()[Lcom/jme3/animation/Track;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/jme3/animation/SpatialTrack;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/jme3/animation/SpatialTrack;

    invoke-virtual {v2}, Lcom/jme3/animation/SpatialTrack;->getTrackSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v3

    :cond_0
    if-ne v3, p2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static r(Lcom/jme3/animation/Animation;Lcom/jme3/animation/Track;)I
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/animation/Animation;->getTracks()[Lcom/jme3/animation/Track;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public static s(Lcom/jme3/anim/AnimClip;I)Lcom/jme3/anim/TransformTrack;
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/anim/AnimClip;->getTracks()[Lcom/jme3/anim/AnimTrack;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Lcom/jme3/anim/TransformTrack;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {v2}, Lcom/jme3/anim/TransformTrack;->getTarget()Lcom/jme3/anim/util/HasLocalTransform;

    move-result-object v3

    instance-of v4, v3, Lcom/jme3/anim/Joint;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/jme3/anim/Joint;

    invoke-virtual {v3}, Lcom/jme3/anim/Joint;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static t(Ljava/lang/Object;)[F
    .locals 1

    instance-of v0, p0, Lcom/jme3/anim/MorphTrack;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/anim/MorphTrack;

    invoke-virtual {p0}, Lcom/jme3/anim/MorphTrack;->getTimes()[F

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/animation/Track;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/animation/Track;

    invoke-interface {p0}, Lcom/jme3/animation/Track;->getKeyFrameTimes()[F

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/jme3/anim/TransformTrack;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/anim/TransformTrack;

    invoke-virtual {p0}, Lcom/jme3/anim/TransformTrack;->getTimes()[F

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Quaternion;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lif/k;->a(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Vector3f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lif/k;->b(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lcom/jme3/anim/util/HasLocalTransform;)Ljava/lang/String;
    .locals 3

    const-string v0, "target"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/anim/Joint;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/anim/Joint;

    invoke-virtual {p0}, Lcom/jme3/anim/Joint;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static x(Lcom/jme3/animation/Track;Lcom/jme3/animation/AnimControl;)Ljava/lang/String;
    .locals 1

    const-string v0, "track"

    invoke-static {p0, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p0, Lcom/jme3/animation/BoneTrack;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/animation/BoneTrack;

    invoke-virtual {p0}, Lcom/jme3/animation/BoneTrack;->getTargetBoneIndex()I

    move-result p0

    invoke-virtual {p1}, Lcom/jme3/animation/AnimControl;->getSkeleton()Lcom/jme3/animation/Skeleton;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/animation/Skeleton;->getBone(I)Lcom/jme3/animation/Bone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/animation/Bone;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/jme3/animation/SpatialTrack;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/jme3/animation/SpatialTrack;

    invoke-virtual {p0}, Lcom/jme3/animation/SpatialTrack;->getTrackSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static y(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Vector3f;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lif/k;->c(Lcom/jme3/animation/Track;)[Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lcom/jme3/animation/Animation;I)Z
    .locals 1

    const-string v0, "bone index"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    invoke-static {p0, p1}, Lif/k;->j(Lcom/jme3/animation/Animation;I)Lcom/jme3/animation/BoneTrack;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
