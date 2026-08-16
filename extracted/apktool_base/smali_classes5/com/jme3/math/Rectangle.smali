.class public final Lcom/jme3/math/Rectangle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Lcom/jme3/math/Vector3f;

.field private b:Lcom/jme3/math/Vector3f;

.field private c:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    .line 7
    iput-object p2, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    .line 8
    iput-object p3, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public calculateD()Lcom/jme3/math/Vector3f;
    .locals 6

    iget-object v0, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v4

    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v2, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v4, v5

    iget v5, v3, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v4, v5

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v0, v2

    iget v2, v3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v2

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v1, v4, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v2
.end method

.method public calculateNormal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public clone()Lcom/jme3/math/Rectangle;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Rectangle;

    .line 3
    iget-object v1, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v1, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    .line 5
    iget-object v1, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;
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
    invoke-virtual {p0}, Lcom/jme3/math/Rectangle;->clone()Lcom/jme3/math/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getA()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getB()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getC()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public random()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Rectangle;->random(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public random(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v0

    .line 4
    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    sub-float/2addr v2, v1

    .line 5
    iget-object v3, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v0}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v3, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
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

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "a"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    const-string v1, "b"

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    const-string v1, "c"

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setA(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setB(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setC(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/jme3/math/Rectangle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [A: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  C: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/jme3/math/Rectangle;->a:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const-string v2, "a"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/math/Rectangle;->b:Lcom/jme3/math/Vector3f;

    const-string v2, "b"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/math/Rectangle;->c:Lcom/jme3/math/Vector3f;

    const-string v2, "c"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
