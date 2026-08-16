.class public Ljpct/ae/wrapper/JPolygonManager;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctPolygonManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/PolygonManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(Lcom/threed/jpct/Object3D;)V
    .locals 0

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getPolygonManager()Lcom/threed/jpct/PolygonManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljpct/ae/wrapper/JPolygonManager;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public addTexture(III)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/PolygonManager;->addTexture(III)V

    return-void
.end method

.method public getMaxPolygonID()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0}, Lcom/threed/jpct/PolygonManager;->getMaxPolygonID()I

    move-result v0

    return v0
.end method

.method public getPolygonTexture(I)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/PolygonManager;->getPolygonTexture(I)I

    move-result p1

    return p1
.end method

.method public getPolygonTextures2(I)[I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/PolygonManager;->getPolygonTextures(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getTextureUV(II)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/PolygonManager;->getTextureUV(II)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getTransformedNormal(I)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/PolygonManager;->getTransformedNormal(I)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getTransformedVertex(II)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/PolygonManager;->getTransformedVertex(II)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public setPolygonTexture(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/PolygonManager;->setPolygonTexture(II)V

    return-void
.end method

.method public setPolygonTexture(ILcom/threed/jpct/TextureInfo;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/PolygonManager;->setPolygonTexture(ILcom/threed/jpct/TextureInfo;)V

    return-void
.end method

.method public setVertexAlpha(IIF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JPolygonManager;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/PolygonManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/PolygonManager;->setVertexAlpha(IIF)V

    return-void
.end method
