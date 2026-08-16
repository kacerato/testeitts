.class public Lcom/jme3/material/logic/DefaultTechniqueDefLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/material/logic/TechniqueDefLogic;


# instance fields
.field protected final techniqueDef:Lcom/jme3/material/TechniqueDef;


# direct methods
.method public constructor <init>(Lcom/jme3/material/TechniqueDef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    return-void
.end method

.method public static getAmbientColor(Lcom/jme3/light/LightList;ZLcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v0, v0, v1}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/light/LightList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v2

    instance-of v3, v2, Lcom/jme3/light/AmbientLight;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/jme3/math/ColorRGBA;->addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/jme3/light/LightList;->remove(Lcom/jme3/light/Light;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p2, Lcom/jme3/math/ColorRGBA;->a:F

    return-object p2
.end method

.method public static renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getLodLevel()I

    move-result v1

    instance-of v2, p1, Lcom/jme3/scene/instancing/InstancedGeometry;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/jme3/scene/instancing/InstancedGeometry;

    invoke-virtual {p1}, Lcom/jme3/scene/instancing/InstancedGeometry;->getNumVisibleInstances()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/jme3/scene/instancing/InstancedGeometry;->getAllInstanceData()[Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lcom/jme3/renderer/Renderer;->renderMesh(Lcom/jme3/scene/Mesh;II[Lcom/jme3/scene/VertexBuffer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, p1, v2}, Lcom/jme3/renderer/Renderer;->renderMesh(Lcom/jme3/scene/Mesh;II[Lcom/jme3/scene/VertexBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public makeCurrent(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Ljava/util/EnumSet;Lcom/jme3/light/LightList;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Lcom/jme3/renderer/RenderManager;",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;",
            "Lcom/jme3/light/LightList;",
            "Lcom/jme3/shader/DefineList;",
            ")",
            "Lcom/jme3/shader/Shader;"
        }
    .end annotation

    iget-object p2, p0, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {p2, p1, p3, p5}, Lcom/jme3/material/TechniqueDef;->getShader(Lcom/jme3/asset/AssetManager;Ljava/util/EnumSet;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;

    move-result-object p1

    return-object p1
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V
    .locals 0

    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    invoke-static {p1, p3}, Lcom/jme3/material/logic/DefaultTechniqueDefLogic;->renderMeshFromGeometry(Lcom/jme3/renderer/Renderer;Lcom/jme3/scene/Geometry;)V

    return-void
.end method
