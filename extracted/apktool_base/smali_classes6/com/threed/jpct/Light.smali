.class public Lcom/threed/jpct/Light;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIGHT_INVISIBLE:Z = false

.field public static final LIGHT_VISIBLE:Z = true


# instance fields
.field private light:I

.field private on:Z

.field private rotCache:Lcom/threed/jpct/SimpleVector;

.field private world:Lcom/threed/jpct/World;


# direct methods
.method public constructor <init>(Lcom/threed/jpct/World;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Light;->light:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Light;->on:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Light;->rotCache:Lcom/threed/jpct/SimpleVector;

    iput-object p1, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {p1, v0, v1, v1, v1}, Lcom/threed/jpct/World;->addLight(Lcom/threed/jpct/SimpleVector;FFF)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/Light;->light:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/Light;->on:Z

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Light;->on:Z

    iget-object v1, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v2, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v1, v2, v0}, Lcom/threed/jpct/World;->setLightVisibility(IZ)V

    return-void
.end method

.method public enable()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Light;->on:Z

    iget-object v1, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v2, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v1, v2, v0}, Lcom/threed/jpct/World;->setLightVisibility(IZ)V

    return-void
.end method

.method public getAttenuation()F
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->getLightAttenuation(I)F

    move-result v0

    return v0
.end method

.method public getDiscardDistance()F
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->getLightDiscardDistance(I)F

    move-result v0

    return v0
.end method

.method public getDistanceOverride()F
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->getLightDistanceOverride(I)F

    move-result v0

    return v0
.end method

.method public getIntensity()Lcom/threed/jpct/SimpleVector;
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->getLightIntensity(I)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/threed/jpct/SimpleVector;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/World;->getLightPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->getLightPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Light;->on:Z

    return v0
.end method

.method public rotate(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    iget-object v2, p0, Lcom/threed/jpct/Light;->rotCache:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/World;->getLightPosition(ILcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->rotateX(F)V

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->rotateY(F)V

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->rotateZ(F)V

    invoke-virtual {v0, p2}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Light;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setAttenuation(F)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->setLightAttenuation(IF)V

    return-void
.end method

.method public setDiscardDistance(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->setLightDiscardDistance(IF)V

    return-void
.end method

.method public setDistanceOverride(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->setLightDistanceOverride(IF)V

    return-void
.end method

.method public setIntensity(FFF)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/threed/jpct/World;->setLightIntensity(IFFF)V

    return-void
.end method

.method public setIntensity(Lcom/threed/jpct/SimpleVector;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/threed/jpct/Light;->setIntensity(FFF)V

    return-void
.end method

.method public setPosition(Lcom/threed/jpct/SimpleVector;)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Light;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/Light;->light:I

    invoke-virtual {v0, v1, p1}, Lcom/threed/jpct/World;->setLightPosition(ILcom/threed/jpct/SimpleVector;)V

    return-void
.end method
