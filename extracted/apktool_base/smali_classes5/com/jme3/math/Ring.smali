.class public final Lcom/jme3/math/Ring;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static transient b1:Lcom/jme3/math/Vector3f; = null

.field private static transient b2:Lcom/jme3/math/Vector3f; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private center:Lcom/jme3/math/Vector3f;

.field private innerRadius:F

.field private outerRadius:F

.field private up:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/jme3/math/Ring;->b1:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/jme3/math/Ring;->b2:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    .line 3
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/jme3/math/Ring;->innerRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/jme3/math/Ring;->outerRadius:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    .line 8
    iput-object p2, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    .line 9
    iput p3, p0, Lcom/jme3/math/Ring;->innerRadius:F

    .line 10
    iput p4, p0, Lcom/jme3/math/Ring;->outerRadius:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Ring;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Ring;

    .line 3
    iget-object v1, p0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v1, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
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
    invoke-virtual {p0}, Lcom/jme3/math/Ring;->clone()Lcom/jme3/math/Ring;

    move-result-object v0

    return-object v0
.end method

.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getInnerRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Ring;->innerRadius:F

    return v0
.end method

.method public getOuterRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Ring;->outerRadius:F

    return v0
.end method

.method public getUp()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public random()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Ring;->random(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public random(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/math/Ring;->innerRadius:F

    mul-float/2addr v0, v0

    .line 4
    iget v1, p0, Lcom/jme3/math/Ring;->outerRadius:F

    mul-float/2addr v1, v1

    .line 5
    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    sub-float/2addr v1, v0

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    .line 6
    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v1

    const v2, 0x40c90fdb

    mul-float/2addr v1, v2

    .line 7
    iget-object v2, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    sget-object v4, Lcom/jme3/math/Ring;->b1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 8
    sget-object v2, Lcom/jme3/math/Ring;->b1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v2

    const/high16 v3, 0x34000000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    sget-object v4, Lcom/jme3/math/Ring;->b1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 10
    :cond_1
    sget-object v2, Lcom/jme3/math/Ring;->b1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 11
    iget-object v2, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Ring;->b1:Lcom/jme3/math/Vector3f;

    sget-object v4, Lcom/jme3/math/Ring;->b2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v4}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 12
    sget-object v2, Lcom/jme3/math/Ring;->b1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 13
    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    sget-object v1, Lcom/jme3/math/Ring;->b2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0, v1, p1}, Lcom/jme3/math/Vector3f;->scaleAdd(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
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

    const-string v1, "center"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "up"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    const-string v0, "innerRadius"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Ring;->innerRadius:F

    const-string v0, "outerRadius"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Ring;->outerRadius:F

    return-void
.end method

.method public setCenter(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setInnerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/Ring;->innerRadius:F

    return-void
.end method

.method public setOuterRadius(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/Ring;->outerRadius:F

    return-void
.end method

.method public setUp(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

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

    iget-object v0, p0, Lcom/jme3/math/Ring;->center:Lcom/jme3/math/Vector3f;

    const-string v1, "center"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/math/Ring;->up:Lcom/jme3/math/Vector3f;

    const-string v1, "up"

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/math/Ring;->innerRadius:F

    const-string v1, "innerRadius"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Ring;->outerRadius:F

    const-string v1, "outerRadius"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
