.class public Lcom/ardor3d/math/ValidatingTransform;
.super Lcom/ardor3d/math/Transform;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/math/Transform;-><init>()V

    return-void
.end method

.method private validate()V
    .locals 2

    invoke-static {p0}, Lcom/ardor3d/math/Transform;->isValid(Lcom/ardor3d/math/type/ReadOnlyTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/ardor3d/util/Ardor3dException;

    const-string v1, "Transform is invalid"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fromHomogeneousMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Transform;
    .locals 0

    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->fromHomogeneousMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Transform;

    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-object p0
.end method

.method public invert(Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;
    .locals 1

    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->invert(Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;

    move-result-object p1

    invoke-static {p1}, Lcom/ardor3d/math/Transform;->isValid(Lcom/ardor3d/math/type/ReadOnlyTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    const-string v0, "Transform is invalid"

    invoke-direct {p1, v0}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public multiply(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ardor3d/math/Transform;->multiply(Lcom/ardor3d/math/type/ReadOnlyTransform;Lcom/ardor3d/math/Transform;)Lcom/ardor3d/math/Transform;

    move-result-object p1

    invoke-static {p1}, Lcom/ardor3d/math/Transform;->isValid(Lcom/ardor3d/math/type/ReadOnlyTransform;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    const-string p2, "Transform is invalid"

    invoke-direct {p1, p2}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;
    .locals 0

    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->set(Lcom/ardor3d/math/type/ReadOnlyTransform;)Lcom/ardor3d/math/Transform;

    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-object p0
.end method

.method public setMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->setMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-void
.end method

.method public setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-void
.end method

.method public setRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyQuaternion;)V

    .line 4
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-void
.end method

.method public setScale(D)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/ardor3d/math/Transform;->setScale(D)V

    .line 4
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-void
.end method

.method public setScale(DDD)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/ardor3d/math/Transform;->setScale(DDD)V

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-void
.end method

.method public setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 6
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-void
.end method

.method public setTranslation(DDD)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/ardor3d/math/Transform;->setTranslation(DDD)V

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-void
.end method

.method public setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->setTranslation(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    .line 4
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-void
.end method

.method public translate(DDD)Lcom/ardor3d/math/Transform;
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/ardor3d/math/Transform;->translate(DDD)Lcom/ardor3d/math/Transform;

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-object p0
.end method

.method public translate(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Transform;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/ardor3d/math/Transform;->translate(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Transform;

    .line 4
    invoke-direct {p0}, Lcom/ardor3d/math/ValidatingTransform;->validate()V

    return-object p0
.end method
