.class public Ljpct/ae/wrapper/JOcTree;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctOcTree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/OcTree;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final COLLISION_DONT_USE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final COLLISION_USE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final MODE_NORMAL()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final MODE_OPTIMIZED()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final RENDERING_DONT_USE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final RENDERING_USE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/OcTree;

    invoke-direct {v0}, Lcom/threed/jpct/OcTree;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JOcTree;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(Lcom/threed/jpct/Mesh;II)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/OcTree;

    invoke-direct {v0, p1, p2, p3}, Lcom/threed/jpct/OcTree;-><init>(Lcom/threed/jpct/Mesh;II)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JOcTree;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize3(Lcom/threed/jpct/Mesh;III)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/OcTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/threed/jpct/OcTree;-><init>(Lcom/threed/jpct/Mesh;III)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JOcTree;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize4(Lcom/threed/jpct/Object3D;II)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/OcTree;

    invoke-direct {v0, p1, p2, p3}, Lcom/threed/jpct/OcTree;-><init>(Lcom/threed/jpct/Object3D;II)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JOcTree;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize5(Lcom/threed/jpct/Object3D;III)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/OcTree;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/threed/jpct/OcTree;-><init>(Lcom/threed/jpct/Object3D;III)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JOcTree;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public getCollisionUse()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOcTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/OcTree;

    invoke-virtual {v0}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v0

    return v0
.end method

.method public getFilledLeafs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOcTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/OcTree;

    invoke-virtual {v0}, Lcom/threed/jpct/OcTree;->getFilledLeafs()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getRadiusMultiplier()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOcTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/OcTree;

    invoke-virtual {v0}, Lcom/threed/jpct/OcTree;->getRadiusMultiplier()F

    move-result v0

    return v0
.end method

.method public getRenderingUse()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOcTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/OcTree;

    invoke-virtual {v0}, Lcom/threed/jpct/OcTree;->getRenderingUse()Z

    move-result v0

    return v0
.end method

.method public isOfOrderZero()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOcTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/OcTree;

    invoke-virtual {v0}, Lcom/threed/jpct/OcTree;->isOfOrderZero()Z

    move-result v0

    return v0
.end method

.method public setCollisionUse(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOcTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/OcTree;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/OcTree;->setCollisionUse(Z)V

    return-void
.end method

.method public setRadiusMultiplier(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOcTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/OcTree;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/OcTree;->setRadiusMultiplier(F)V

    return-void
.end method

.method public setRenderingUse(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JOcTree;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/OcTree;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/OcTree;->setRenderingUse(Z)V

    return-void
.end method
