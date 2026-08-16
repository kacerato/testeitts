.class public Lcom/jme3/math/Triangle;
.super Lcom/jme3/math/AbstractTriangle;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private transient center:Lcom/jme3/math/Vector3f;

.field private index:I

.field private transient normal:Lcom/jme3/math/Vector3f;

.field private pointA:Lcom/jme3/math/Vector3f;

.field private pointB:Lcom/jme3/math/Vector3f;

.field private pointC:Lcom/jme3/math/Vector3f;

.field private projection:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/math/AbstractTriangle;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/jme3/math/AbstractTriangle;-><init>()V

    .line 6
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    .line 7
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    .line 8
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    .line 9
    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 10
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 11
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public static computeTriangleNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3, p1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-virtual {p3, p0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v2

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p2, p0

    invoke-virtual {p1, v0, v1, p2}, Lcom/jme3/math/Vector3f;->crossLocal(FFF)Lcom/jme3/math/Vector3f;

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateCenter()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    iget-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const v1, 0x3eaaaaab

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public calculateNormal()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    iget-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v3, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v4

    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v3, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v4, v5

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v4, v1}, Lcom/jme3/math/Vector3f;->crossLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public clone()Lcom/jme3/math/Triangle;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Triangle;

    .line 3
    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    .line 5
    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;
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
    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->clone()Lcom/jme3/math/Triangle;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/jme3/math/Vector3f;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public get1()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public get2()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public get3()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->calculateCenter()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/math/Triangle;->index:I

    return v0
.end method

.method public getNormal()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Triangle;->calculateNormal()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getProjection()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Triangle;->projection:F

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    const-string v3, "pointa"

    invoke-interface {v0, v3, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v2, "pointb"

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "pointc"

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public set(IFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    .line 7
    iput-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p3, p4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p3, p4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2, p3, p4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_0
    return-void
.end method

.method public set(ILcom/jme3/math/Vector3f;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    .line 2
    iput-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-void
.end method

.method public set(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    .line 12
    iput-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    .line 13
    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 14
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 15
    iget-object p1, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public set1(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public set2(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public set3(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setCenter(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Triangle;->center:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/Triangle;->index:I

    return-void
.end method

.method public setNormal(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Triangle;->normal:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setProjection(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/Triangle;->projection:F

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointA:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const-string v3, "pointa"

    invoke-interface {v0, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Triangle;->pointB:Lcom/jme3/math/Vector3f;

    const-string v3, "pointb"

    invoke-interface {v0, v1, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/math/Triangle;->pointC:Lcom/jme3/math/Vector3f;

    const-string v1, "pointc"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
