.class public Ljpct/ae/wrapper/JMesh;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctMesh"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Mesh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final COMPRESS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final DONT_COMPRESS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final SERIALIZE_ALL()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final SERIALIZE_LOW_PRECISION()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final SERIALIZE_VERTICES_ONLY()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public Initialize(Lcom/threed/jpct/Object3D;)V
    .locals 0

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljpct/ae/wrapper/JMesh;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(Lcom/threed/jpct/Mesh;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljpct/ae/wrapper/JMesh;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public applyVertexController()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->applyVertexController()V

    return-void
.end method

.method public cloneMesh(Z)Lcom/threed/jpct/Mesh;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Mesh;->cloneMesh(Z)Lcom/threed/jpct/Mesh;

    move-result-object p1

    return-object p1
.end method

.method public forceCompress()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->compress()V

    return-void
.end method

.method public getBoundingBox()[F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->getBoundingBox()[F

    move-result-object v0

    return-object v0
.end method

.method public getTriangleCount()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->getTriangleCount()I

    move-result v0

    return v0
.end method

.method public getUniqueVertexCount()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->getUniqueVertexCount()I

    move-result v0

    return v0
.end method

.method public getVertexCount()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->getVertexCount()I

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->isLocked()Z

    move-result v0

    return v0
.end method

.method public removeVertexController()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->removeVertexController()V

    return-void
.end method

.method public setLocked(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Mesh;->setLocked(Z)V

    return-void
.end method

.method public setSerializeMethod(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Mesh;->setSerializeMethod(I)V

    return-void
.end method

.method public setVertexController(Lcom/threed/jpct/IVertexController;Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Mesh;->setVertexController(Lcom/threed/jpct/IVertexController;Z)Z

    return-void
.end method

.method public strip()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JMesh;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->strip()V

    return-void
.end method
