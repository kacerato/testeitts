.class public abstract Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/renderer/TextureRenderer;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected _active:I

.field protected final _backgroundColor:Lcom/ardor3d/math/ColorRGBA;

.field protected _bgColorDirty:Z

.field protected final _camera:Lcom/ardor3d/renderer/Camera;

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

.field protected _height:I

.field protected _oldContext:Lcom/ardor3d/renderer/RenderContext;

.field protected final _parentRenderer:Lcom/ardor3d/renderer/Renderer;

.field protected final _settings:Lcom/ardor3d/framework/DisplaySettings;

.field protected _useDirectRender:Z

.field protected _width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/framework/DisplaySettings;Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/renderer/ContextCapabilities;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/ardor3d/renderer/state/RenderState$StateType;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_enforcedStates:Ljava/util/EnumMap;

    new-instance v1, Lcom/ardor3d/renderer/Camera;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lcom/ardor3d/renderer/Camera;-><init>(II)V

    iput-object v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_backgroundColor:Lcom/ardor3d/math/ColorRGBA;

    iput-boolean v2, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_bgColorDirty:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_useDirectRender:Z

    iput v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_width:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_height:I

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_settings:Lcom/ardor3d/framework/DisplaySettings;

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/framework/DisplaySettings;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/ardor3d/framework/DisplaySettings;->getHeight()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/ardor3d/renderer/ContextCapabilities;->isNonPowerOfTwoTextureSupported()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lcom/ardor3d/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_1

    move v4, v5

    :cond_0
    shl-int/2addr v4, v2

    if-lt v4, v3, :cond_0

    move v3, v4

    :cond_1
    invoke-static {v1}, Lcom/ardor3d/math/MathUtils;->isPowerOfTwo(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    shl-int/2addr v5, v2

    if-lt v5, v1, :cond_2

    move v1, v5

    :cond_3
    iput v3, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_width:I

    iput v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_height:I

    sget-object v1, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created Pbuffer sized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    iget v2, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_width:I

    iget v3, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_height:I

    invoke-virtual {v1, v2, v3}, Lcom/ardor3d/renderer/Camera;->resize(II)V

    iget-object v4, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v15, -0x4020000000000000L    # -0.5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide v7, 0x408f400000000000L    # 1000.0

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v4 .. v16}, Lcom/ardor3d/renderer/Camera;->setFrustum(DDDDDD)V

    new-instance v1, Lcom/ardor3d/math/Vector3;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

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

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lcom/ardor3d/math/Vector3;-><init>(DDD)V

    iget-object v4, v0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    invoke-virtual {v4, v1, v9, v2, v3}, Lcom/ardor3d/renderer/Camera;->setFrame(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method


# virtual methods
.method public abstract clearBuffers(I)V
.end method

.method public clearEnforcedState(Lcom/ardor3d/renderer/state/RenderState$StateType;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearEnforcedStates()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public doDraw(Lcom/ardor3d/framework/Scene;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

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
    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

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
    invoke-virtual {p0, v2}, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->doDraw(Lcom/ardor3d/scenegraph/Spatial;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enforceState(Lcom/ardor3d/renderer/state/RenderState;)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_enforcedStates:Ljava/util/EnumMap;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/state/RenderState;->getType()Lcom/ardor3d/renderer/state/RenderState$StateType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBackgroundColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_backgroundColor:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getCamera()Lcom/ardor3d/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_camera:Lcom/ardor3d/renderer/Camera;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_width:I

    return v0
.end method

.method public setBackgroundColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_backgroundColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_bgColorDirty:Z

    return-void
.end method

.method public switchCameraIn(I)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/Renderer;->getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/queue/RenderQueue;->pushBuckets()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->clearBuffers(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->update()V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->getCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1, v0}, Lcom/ardor3d/renderer/Camera;->apply(Lcom/ardor3d/renderer/Renderer;)V

    return-void
.end method

.method public switchCameraOut()V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->flushFrame(Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/AbstractPbufferTextureRenderer;->_parentRenderer:Lcom/ardor3d/renderer/Renderer;

    invoke-interface {v0}, Lcom/ardor3d/renderer/Renderer;->getQueue()Lcom/ardor3d/renderer/queue/RenderQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/renderer/queue/RenderQueue;->popBuckets()V

    return-void
.end method
