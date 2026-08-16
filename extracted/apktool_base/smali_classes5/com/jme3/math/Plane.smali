.class public Lcom/jme3/math/Plane;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/math/Plane$Side;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field protected constant:F

.field protected normal:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/math/Plane;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Plane;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;F)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 6
    iput p2, p0, Lcom/jme3/math/Plane;->constant:F

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "normal cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 8
    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/jme3/math/Plane;-><init>(Lcom/jme3/math/Vector3f;F)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Plane;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Plane;

    .line 3
    iget-object v1, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
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
    invoke-virtual {p0}, Lcom/jme3/math/Plane;->clone()Lcom/jme3/math/Plane;

    move-result-object v0

    return-object v0
.end method

.method public getClosestPoint(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Plane;->getClosestPoint(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getClosestPoint(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    .line 1
    iget v0, p0, Lcom/jme3/math/Plane;->constant:F

    iget-object v1, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    div-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getConstant()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Plane;->constant:F

    return v0
.end method

.method public getNormal()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public isOnPlane(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    const/high16 v0, 0x34000000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x4c000000

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pseudoDistance(Lcom/jme3/math/Vector3f;)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iget v0, p0, Lcom/jme3/math/Plane;->constant:F

    sub-float/2addr p1, v0

    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "normal"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    const-string v0, "constant"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Plane;->constant:F

    return-void
.end method

.method public reflect(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public setConstant(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/Plane;->constant:F

    return-void
.end method

.method public setNormal(FFF)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setNormal(Lcom/jme3/math/Vector3f;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "normal cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOriginNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/jme3/math/Plane;->constant:F

    return-void
.end method

.method public setPlanePoints(Lcom/jme3/math/AbstractTriangle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/math/AbstractTriangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/math/Plane;->setPlanePoints(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPlanePoints(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    iget-object p2, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    iget v0, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v2

    iget p3, p3, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p3, v2

    invoke-virtual {p2, v0, v1, p3}, Lcom/jme3/math/Vector3f;->crossLocal(FFF)Lcom/jme3/math/Vector3f;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 5
    iget-object p2, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Plane;->constant:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Normal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - Constant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Plane;->constant:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whichSide(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Plane$Side;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    sget-object p1, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    return-object p1

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    sget-object p1, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    return-object p1

    :cond_1
    sget-object p1, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

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

    iget-object v0, p0, Lcom/jme3/math/Plane;->normal:Lcom/jme3/math/Vector3f;

    const-string v1, "normal"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/math/Plane;->constant:F

    const-string v1, "constant"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
