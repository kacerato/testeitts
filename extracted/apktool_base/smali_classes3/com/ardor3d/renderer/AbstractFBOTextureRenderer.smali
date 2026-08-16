.class public abstract Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/renderer/TextureRenderer;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected _active:I

.field protected _attachBuffer:Ljava/nio/IntBuffer;

.field protected final _backgroundColor:Lcom/ardor3d/math/ColorRGBA;

.field protected final _camera:Lcom/ardor3d/renderer/Camera;

.field protected _depthBits:I

.field protected _depthRBID:I

.field protected final _enforcedStates:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ardor3d/renderer/state/RenderState$StateType;",
            "Lcom/ardor3d/renderer/state/RenderState;",
            ">;"
        }
    .end annotation
.end field

.field protected _fboID:I

.field protected _height:I

.field protected _mscolorRBID:I

.field protected _msdepthRBID:I

.field protected _msfboID:I

.field protected _neededClip:Z

.field private _oldCamera:Lcom/ardor3d/renderer/Camera;

.field protected final _parentRenderer:Lcom/ardor3d/renderer/Renderer;

.field protected _samples:I

.field protected final _supportsDepthTexture:Z

.field protected final _supportsMultisample:Z

.field protected _usingDepthRB:Z

.field protected _width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IIIILcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V
    .locals 26

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_enforcedStates:Ljava/util/EnumMap;

    new-instance v1, Lcom/ardor3d/renderer/Camera;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lcom/ardor3d/renderer/Camera;-><init>(II)V

    iput-object v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_backgroundColor:Lcom/ardor3d/math/ColorRGBA;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_fboID:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_depthRBID:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_msfboID:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_msdepthRBID:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_mscolorRBID:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_width:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_height:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_samples:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_depthBits:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_attachBuffer:Ljava/nio/IntBuffer;

    iput-boolean v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_usingDepthRB:Z

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual/range {p6 .. p6}, Lcom/ardor3d/renderer/ContextCapabilities;->getMaxFBOSamples()I

    move-result v3

    move/from16 v4, p4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_samples:I

    move/from16 v3, p3

    iput v3, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_depthBits:I

    invoke-virtual/range {p6 .. p6}, Lcom/ardor3d/renderer/ContextCapabilities;->isDepthTextureSupported()Z

    move-result v3

    iput-boolean v3, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_supportsDepthTexture:Z

    invoke-virtual/range {p6 .. p6}, Lcom/ardor3d/renderer/ContextCapabilities;->getMaxFBOSamples()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_supportsMultisample:Z

    invoke-virtual/range {p6 .. p6}, Lcom/ardor3d/renderer/ContextCapabilities;->isNonPowerOfTwoTextureSupported()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/ardor3d/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_2

    move v1, v3

    :cond_1
    shl-int/2addr v1, v2

    move/from16 v4, p1

    if-lt v1, v4, :cond_1

    goto :goto_0

    :cond_2
    move/from16 v4, p1

    move v1, v4

    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/ardor3d/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    shl-int/2addr v3, v2

    move/from16 v5, p2

    if-lt v3, v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_4
    move/from16 v5, p2

    goto :goto_1

    :cond_5
    move/from16 v4, p1

    move/from16 v5, p2

    move v1, v4

    :goto_1
    sget-object v2, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating FBO sized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iput v1, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_width:I

    iput v5, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_height:I

    iget-object v2, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v2, v1, v5}, Lcom/ardor3d/renderer/Camera;->resize(II)V

    iget-object v6, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v17, -0x4020000000000000L    # -0.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide v9, 0x408f400000000000L    # 1000.0

    const-wide/high16 v11, -0x4020000000000000L    # -0.5

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v6 .. v18}, Lcom/ardor3d/renderer/Camera;->setFrustum(DDDDDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v25}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v9, Lcom/ardor3d/math/Vector3;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v2, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    const-wide/16 v11, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    new-instance v3, Lcom/ardor3d/math/Vector3;

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    const-wide/16 v18, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iget-object v4, v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v4, v1, v9, v2, v3}, Lcom/ardor3d/renderer/Camera;->setFrame(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method


# virtual methods
.method public abstract activate()V
.end method

.method public abstract blitTo(Lcom/ardor3d/image/Texture;)V
.end method

.method public abstract clearBuffers(I)V
.end method

.method public clearEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearEnforcedStates()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public abstract deactivate()V
.end method

.method public doDraw(Lcom/ardor3d/framework/Scene;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-interface {p1, v0}, Lcom/ardor3d/framework/Scene;->renderUnto(Lcom/ardor3d/renderer/Renderer;)Z

    return-void
.end method

.method public doDraw(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Spatial;->getParent()Lcom/ardor3d/scenegraph/Node;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Intersects:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/Spatial;->setLastFrustumIntersection(Lcom/ardor3d/renderer/Camera$FrustumIntersect;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/Spatial;->onDraw(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public doDraw(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/scenegraph/Spatial;

    .line 6
    invoke-virtual {p0, v2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->doDraw(Lcom/ardor3d/scenegraph/Spatial;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enforceState(Lcom/ardor3d/renderer/state/RenderState;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBackgroundColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_backgroundColor:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getCamera()Lcom/ardor3d/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_height:I

    return v0
.end method

.method public getParentRenderer()Lcom/ardor3d/renderer/Renderer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_width:I

    return v0
.end method

.method public render(Lcom/ardor3d/framework/Scene;Lcom/ardor3d/image/Texture;I)V
    .locals 6

    .line 13
    :try_start_0
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ardor3d/renderer/RenderContext;->pushFBOTextureRenderer(Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->setupForSingleTexDraw(Lcom/ardor3d/image/Texture;)V

    .line 15
    iget v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_samples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_supportsMultisample:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->setMSFBO()V

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->switchCameraIn(I)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->doDraw(Lcom/ardor3d/framework/Scene;)V

    .line 19
    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->switchCameraOut()V

    .line 20
    iget p1, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_samples:I

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_supportsMultisample:Z

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->blitTo(Lcom/ardor3d/image/Texture;)V

    .line 22
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->takedownForSingleTexDraw(Lcom/ardor3d/image/Texture;)V

    .line 23
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->popFBOTextureRenderer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 24
    :goto_1
    sget-object v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "render(Spatial, Texture, boolean)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public render(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/image/Texture;I)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ardor3d/renderer/RenderContext;->pushFBOTextureRenderer(Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->setupForSingleTexDraw(Lcom/ardor3d/image/Texture;)V

    .line 3
    iget v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_samples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_supportsMultisample:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->setMSFBO()V

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->switchCameraIn(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->doDraw(Lcom/ardor3d/scenegraph/Spatial;)V

    .line 7
    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->switchCameraOut()V

    .line 8
    iget p1, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_samples:I

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_supportsMultisample:Z

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->blitTo(Lcom/ardor3d/image/Texture;)V

    .line 10
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->takedownForSingleTexDraw(Lcom/ardor3d/image/Texture;)V

    .line 11
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->popFBOTextureRenderer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 12
    :goto_1
    sget-object v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "render(Spatial, Texture, boolean)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public render(Ljava/util/List;Lcom/ardor3d/image/Texture;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ardor3d/scenegraph/Spatial;",
            ">;",
            "Lcom/ardor3d/image/Texture;",
            "I)V"
        }
    .end annotation

    .line 25
    :try_start_0
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ardor3d/renderer/RenderContext;->pushFBOTextureRenderer(Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->setupForSingleTexDraw(Lcom/ardor3d/image/Texture;)V

    .line 27
    iget v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_samples:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_supportsMultisample:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->setMSFBO()V

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->switchCameraIn(I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->doDraw(Ljava/util/List;)V

    .line 31
    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->switchCameraOut()V

    .line 32
    iget p1, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_samples:I

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_supportsMultisample:Z

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->blitTo(Lcom/ardor3d/image/Texture;)V

    .line 34
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->takedownForSingleTexDraw(Lcom/ardor3d/image/Texture;)V

    .line 35
    invoke-static {}, Lcom/ardor3d/renderer/ContextManager;->getCurrentContext()Lcom/ardor3d/renderer/RenderContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/RenderContext;->popFBOTextureRenderer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 36
    :goto_1
    sget-object v0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "render(List<Spatial>, Texture, boolean)"

    const-string v4, "Exception"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public setBackgroundColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_backgroundColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public abstract setMSFBO()V
.end method

.method public setMultipleTargets(Z)V
    .locals 0

    return-void
.end method

.method public abstract setupForSingleTexDraw(Lcom/ardor3d/image/Texture;)V
.end method

.method public switchCameraIn(I)V
    .locals 1

    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_oldCamera:Lcom/ardor3d/renderer/Camera;

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/Renderer;->getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/queue/RenderQueue;->pushBuckets()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->clearBuffers(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->update()V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/Camera;->apply(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public switchCameraOut()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->flushFrame(Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_oldCamera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v0}, Lcom/ardor3d/renderer/Camera;->update()V

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_oldCamera:Lcom/ardor3d/renderer/Camera;

    iget-object v1, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {v0, v1}, Lcom/ardor3d/renderer/Camera;->apply(Lcom/ardor3d/renderer/Renderer;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractFBOTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/Renderer;->getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/queue/RenderQueue;->popBuckets()V

    return-void
.end method

.method public abstract takedownForSingleTexDraw(Lcom/ardor3d/image/Texture;)V
.end method
