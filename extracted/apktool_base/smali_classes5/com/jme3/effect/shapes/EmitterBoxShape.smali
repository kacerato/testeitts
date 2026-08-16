.class public Lcom/jme3/effect/shapes/EmitterBoxShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/effect/shapes/EmitterShape;


# instance fields
.field private len:Lcom/jme3/math/Vector3f;

.field private min:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    .line 5
    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "min or max cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public deepClone()Lcom/jme3/effect/shapes/EmitterShape;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/effect/shapes/EmitterBoxShape;

    iget-object v1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getLen()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getMin()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getRandomPoint(Lcom/jme3/math/Vector3f;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iget-object v1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget-object v1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public getRandomPointAndNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/effect/shapes/EmitterBoxShape;->getRandomPoint(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    const-string v0, "min"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    const-string v0, "length"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setLen(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setMin(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    return-void
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

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->min:Lcom/jme3/math/Vector3f;

    const-string v1, "min"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/effect/shapes/EmitterBoxShape;->len:Lcom/jme3/math/Vector3f;

    const-string v1, "length"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
