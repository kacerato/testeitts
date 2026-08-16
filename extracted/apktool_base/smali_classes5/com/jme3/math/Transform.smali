.class public final Lcom/jme3/math/Transform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final IDENTITY:Lcom/jme3/math/Transform;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private rot:Lcom/jme3/math/Quaternion;

.field private scale:Lcom/jme3/math/Vector3f;

.field private translation:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    sput-object v0, Lcom/jme3/math/Transform;->IDENTITY:Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Quaternion;->IDENTITY:Lcom/jme3/math/Quaternion;

    invoke-direct {p0, v0, v1}, Lcom/jme3/math/Transform;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Quaternion;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, v0, p1}, Lcom/jme3/math/Transform;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 9
    sget-object v0, Lcom/jme3/math/Quaternion;->IDENTITY:Lcom/jme3/math/Quaternion;

    invoke-direct {p0, p1, v0}, Lcom/jme3/math/Transform;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    .line 5
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 6
    iget-object p1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/jme3/math/Transform;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    .line 8
    iget-object p1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Transform;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Transform;

    .line 3
    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v1}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    .line 4
    iget-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    .line 5
    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/math/Transform;->clone()Lcom/jme3/math/Transform;

    move-result-object v0

    return-object v0
.end method

.method public combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1, v1}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object p1, p1, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jme3/math/Transform;

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget-object v2, p1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object p1, p1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Quaternion;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public fromTransformMatrix(Lcom/jme3/math/Matrix4f;)V
    .locals 3

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2}, Lcom/jme3/math/Matrix4f;->toTranslationVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v2}, Lcom/jme3/math/Matrix4f;->toRotationQuat(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2}, Lcom/jme3/math/Matrix4f;->toScaleVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public getRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-object p1
.end method

.method public getScale()Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->hashCode()I

    move-result v0

    const/16 v1, 0x26f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x59

    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x59

    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public interpolateTransforms(Lcom/jme3/math/Transform;Lcom/jme3/math/Transform;F)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v1, p1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v1, p2, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1, p3}, Lcom/jme3/math/Quaternion;->nlerp(Lcom/jme3/math/Quaternion;F)V

    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget-object v2, p2, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2, p3}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget-object p2, p2, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public invert()Lcom/jme3/math/Transform;
    .locals 2

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    invoke-virtual {p0}, Lcom/jme3/math/Transform;->toTransformMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->fromTransformMatrix(Lcom/jme3/math/Matrix4f;)V

    return-object v0
.end method

.method public isIdentity()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v1, v0, Lcom/jme3/math/Quaternion;->w:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, v0, Lcom/jme3/math/Quaternion;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lcom/jme3/math/Quaternion;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Lcom/jme3/math/Quaternion;->z:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadIdentity()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    const-string v1, "rot"

    sget-object v2, Lcom/jme3/math/Quaternion;->IDENTITY:Lcom/jme3/math/Quaternion;

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    const-string v1, "translation"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    const-string v1, "scale"

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget-object v1, p1, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget-object p1, p1, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-object p0
.end method

.method public setScale(F)Lcom/jme3/math/Transform;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p1, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public setScale(FFF)Lcom/jme3/math/Transform;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public setTranslation(FFF)Lcom/jme3/math/Transform;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n[ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v3, v3, Lcom/jme3/math/Quaternion;->x:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v3, v3, Lcom/jme3/math/Quaternion;->y:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v3, v3, Lcom/jme3/math/Quaternion;->z:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    iget v3, v3, Lcom/jme3/math/Quaternion;->w:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTransformMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Transform;->toTransformMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public toTransformMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Matrix4f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix4f;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Matrix4f;->setTranslation(Lcom/jme3/math/Vector3f;)V

    .line 4
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->toTransformMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 5
    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Matrix4f;->setScale(Lcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public transformInverseVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0, p2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->inverse()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public transformVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v1, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/math/Transform;->rot:Lcom/jme3/math/Quaternion;

    const-string v1, "rot"

    sget-object v2, Lcom/jme3/math/Quaternion;->IDENTITY:Lcom/jme3/math/Quaternion;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/math/Transform;->translation:Lcom/jme3/math/Vector3f;

    const-string v1, "translation"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/math/Transform;->scale:Lcom/jme3/math/Vector3f;

    const-string v1, "scale"

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
