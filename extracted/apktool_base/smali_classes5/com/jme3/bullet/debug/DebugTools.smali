.class public Lcom/jme3/bullet/debug/DebugTools;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final UNIT_XYZ_CHECK:Lcom/jme3/math/Vector3f;

.field protected static final UNIT_X_CHECK:Lcom/jme3/math/Vector3f;

.field protected static final UNIT_Y_CHECK:Lcom/jme3/math/Vector3f;

.field protected static final UNIT_Z_CHECK:Lcom/jme3/math/Vector3f;

.field protected static final ZERO_CHECK:Lcom/jme3/math/Vector3f;

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field public DEBUG_BLUE:Lcom/jme3/material/Material;

.field public DEBUG_GREEN:Lcom/jme3/material/Material;

.field public DEBUG_MAGENTA:Lcom/jme3/material/Material;

.field public DEBUG_PINK:Lcom/jme3/material/Material;

.field public DEBUG_RED:Lcom/jme3/material/Material;

.field public DEBUG_YELLOW:Lcom/jme3/material/Material;

.field public arrowBlue:Lcom/jme3/scene/debug/Arrow;

.field public arrowBlueGeom:Lcom/jme3/scene/Geometry;

.field public arrowGreen:Lcom/jme3/scene/debug/Arrow;

.field public arrowGreenGeom:Lcom/jme3/scene/Geometry;

.field public arrowMagenta:Lcom/jme3/scene/debug/Arrow;

.field public arrowMagentaGeom:Lcom/jme3/scene/Geometry;

.field public arrowPink:Lcom/jme3/scene/debug/Arrow;

.field public arrowPinkGeom:Lcom/jme3/scene/Geometry;

.field public arrowRed:Lcom/jme3/scene/debug/Arrow;

.field public arrowRedGeom:Lcom/jme3/scene/Geometry;

.field public arrowYellow:Lcom/jme3/scene/debug/Arrow;

.field public arrowYellowGeom:Lcom/jme3/scene/Geometry;

.field public debugNode:Lcom/jme3/scene/Node;

.field protected final manager:Lcom/jme3/asset/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/jme3/bullet/debug/DebugTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/DebugTools;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/debug/DebugTools;->UNIT_XYZ_CHECK:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/debug/DebugTools;->UNIT_X_CHECK:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/debug/DebugTools;->UNIT_Y_CHECK:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/debug/DebugTools;->UNIT_Z_CHECK:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/debug/DebugTools;->ZERO_CHECK:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/scene/debug/Arrow;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowBlue:Lcom/jme3/scene/debug/Arrow;

    new-instance v0, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowGreen:Lcom/jme3/scene/debug/Arrow;

    new-instance v0, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowMagenta:Lcom/jme3/scene/debug/Arrow;

    new-instance v0, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowPink:Lcom/jme3/scene/debug/Arrow;

    new-instance v0, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowRed:Lcom/jme3/scene/debug/Arrow;

    new-instance v0, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowYellow:Lcom/jme3/scene/debug/Arrow;

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "Blue Arrow"

    iget-object v2, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowBlue:Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowBlueGeom:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "Green Arrow"

    iget-object v2, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowGreen:Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowGreenGeom:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "Magenta Arrow"

    iget-object v2, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowMagenta:Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowMagentaGeom:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "Pink Arrow"

    iget-object v2, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowPink:Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowPinkGeom:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "Red Arrow"

    iget-object v2, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowRed:Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowRedGeom:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/scene/Geometry;

    const-string v1, "Yellow Arrow"

    iget-object v2, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowYellow:Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowYellowGeom:Lcom/jme3/scene/Geometry;

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Debug Node"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugTools;->manager:Lcom/jme3/asset/AssetManager;

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/DebugTools;->setupMaterials()V

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/DebugTools;->setupDebugNode()V

    return-void
.end method


# virtual methods
.method public setBlueArrow(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowBlueGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowBlue:Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setGreenArrow(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowGreenGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowGreen:Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setMagentaArrow(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowMagentaGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowMagenta:Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPinkArrow(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowPinkGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowPink:Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setRedArrow(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowRedGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowRed:Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setYellowArrow(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowYellowGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowYellow:Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setupDebugNode()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowBlueGeom:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_BLUE:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowGreenGeom:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_GREEN:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowRedGeom:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_RED:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowMagentaGeom:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_MAGENTA:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowYellowGeom:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_YELLOW:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowPinkGeom:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_PINK:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowBlueGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowGreenGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowRedGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowMagentaGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowYellowGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->arrowPinkGeom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public setupMaterials()V
    .locals 5

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/bullet/debug/DebugTools;->manager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_BLUE:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_BLUE:Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    const-string v4, "Color"

    invoke-virtual {v0, v4, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/bullet/debug/DebugTools;->manager:Lcom/jme3/asset/AssetManager;

    invoke-direct {v0, v3, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_GREEN:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_GREEN:Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v4, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/bullet/debug/DebugTools;->manager:Lcom/jme3/asset/AssetManager;

    invoke-direct {v0, v3, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_RED:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_RED:Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v4, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/bullet/debug/DebugTools;->manager:Lcom/jme3/asset/AssetManager;

    invoke-direct {v0, v3, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_YELLOW:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_YELLOW:Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/math/ColorRGBA;->Yellow:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v4, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/bullet/debug/DebugTools;->manager:Lcom/jme3/asset/AssetManager;

    invoke-direct {v0, v3, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_MAGENTA:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_MAGENTA:Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/math/ColorRGBA;->Magenta:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v4, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/bullet/debug/DebugTools;->manager:Lcom/jme3/asset/AssetManager;

    invoke-direct {v0, v3, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_PINK:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->DEBUG_PINK:Lcom/jme3/material/Material;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Pink:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v4, v1}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    return-void
.end method

.method public show(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/bullet/debug/DebugTools;->UNIT_X_CHECK:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/bullet/debug/DebugTools;->UNIT_Y_CHECK:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/bullet/debug/DebugTools;->UNIT_Z_CHECK:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/bullet/debug/DebugTools;->UNIT_XYZ_CHECK:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/bullet/debug/DebugTools;->ZERO_CHECK:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->updateGeometricState()V

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugTools;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v0, p2}, Lcom/jme3/renderer/RenderManager;->renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unit vectors compromised!\nX: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nY: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nZ: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nXYZ: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\nZERO: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
