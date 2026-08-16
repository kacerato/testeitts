.class public Lcom/threed/jpct/util/Overlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threed/jpct/util/Overlay$MyController;
    }
.end annotation


# static fields
.field private static cnt:I = 0x0

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private adjuster:Lcom/threed/jpct/util/Overlay$MyController;

.field private depth:F

.field private disposed:Z

.field private lowerRightU:I

.field private lowerRightV:I

.field private lowerRightX:I

.field private lowerRightY:I

.field private pivotX:I

.field private pivotY:I

.field private plane:Lcom/threed/jpct/Object3D;

.field private rotMode:Z

.field private rotation:F

.field private tmp1:Lcom/threed/jpct/SimpleVector;

.field private tmp2:Lcom/threed/jpct/SimpleVector;

.field private tmp3:Lcom/threed/jpct/SimpleVector;

.field private tmp4:Lcom/threed/jpct/SimpleVector;

.field private tmp5:Lcom/threed/jpct/SimpleVector;

.field private tmp6:Lcom/threed/jpct/SimpleVector;

.field private tmpMat:Lcom/threed/jpct/Matrix;

.field private upperLeftU:I

.field private upperLeftV:I

.field private upperLeftX:I

.field private upperLeftY:I

.field private uvChange:Z

.field private world:Lcom/threed/jpct/World;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/World;IIIILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/util/Overlay;-><init>(Lcom/threed/jpct/World;IIIILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/World;IIIILjava/lang/String;Z)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;

    const v1, -0x3b9ac9ff

    .line 5
    iput v1, p0, Lcom/threed/jpct/util/Overlay;->pivotX:I

    iput v1, p0, Lcom/threed/jpct/util/Overlay;->pivotY:I

    .line 6
    sget v1, Lcom/threed/jpct/Config;->nearPlane:F

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/threed/jpct/util/Overlay;->depth:F

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/threed/jpct/util/Overlay;->disposed:Z

    .line 8
    iput-boolean v1, p0, Lcom/threed/jpct/util/Overlay;->uvChange:Z

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/threed/jpct/util/Overlay;->rotation:F

    .line 10
    iput-boolean v1, p0, Lcom/threed/jpct/util/Overlay;->rotMode:Z

    .line 11
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp1:Lcom/threed/jpct/SimpleVector;

    .line 12
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp2:Lcom/threed/jpct/SimpleVector;

    .line 13
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp3:Lcom/threed/jpct/SimpleVector;

    .line 14
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp4:Lcom/threed/jpct/SimpleVector;

    .line 15
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp5:Lcom/threed/jpct/SimpleVector;

    .line 16
    new-instance v2, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v2}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmp6:Lcom/threed/jpct/SimpleVector;

    .line 17
    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/util/Overlay;->tmpMat:Lcom/threed/jpct/Matrix;

    .line 18
    iput-object p1, p0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    .line 19
    iput p2, p0, Lcom/threed/jpct/util/Overlay;->upperLeftX:I

    .line 20
    iput p3, p0, Lcom/threed/jpct/util/Overlay;->upperLeftY:I

    .line 21
    iput p4, p0, Lcom/threed/jpct/util/Overlay;->lowerRightX:I

    .line 22
    iput p5, p0, Lcom/threed/jpct/util/Overlay;->lowerRightY:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    .line 23
    invoke-static {p3, p2}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    if-eqz p6, :cond_0

    .line 24
    invoke-virtual {p2, p6}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object p2

    invoke-virtual {p2, p6}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "__overlay plane "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p5, Lcom/threed/jpct/util/Overlay;->cnt:I

    add-int/lit8 p6, p5, 0x1

    sput p6, Lcom/threed/jpct/util/Overlay;->cnt:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "__"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    sget-object p4, Lcom/threed/jpct/RGBColor;->WHITE:Lcom/threed/jpct/RGBColor;

    invoke-virtual {p2, p4}, Lcom/threed/jpct/Object3D;->setAdditionalColor(Lcom/threed/jpct/RGBColor;)V

    .line 28
    iget-object p2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {p2, p3}, Lcom/threed/jpct/Object3D;->setLighting(I)V

    .line 29
    iget-object p2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {p2, p0}, Lcom/threed/jpct/Object3D;->setUserObject(Ljava/lang/Object;)V

    .line 30
    iget-object p2, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {p1, p2}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 31
    new-instance p1, Lcom/threed/jpct/util/Overlay$MyController;

    invoke-direct {p1, v0}, Lcom/threed/jpct/util/Overlay$MyController;-><init>(Lcom/threed/jpct/util/Overlay$MyController;)V

    iput-object p1, p0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;

    .line 32
    iget-object p1, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object p1

    iget-object p2, p0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;

    invoke-virtual {p1, p2, v1}, Lcom/threed/jpct/Mesh;->setVertexController(Lcom/threed/jpct/IVertexController;Z)Z

    .line 33
    iget-object p1, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    xor-int/lit8 p2, p7, 0x1

    invoke-virtual {p1, p2}, Lcom/threed/jpct/Object3D;->build(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/threed/jpct/util/Overlay;-><init>(Lcom/threed/jpct/World;IIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/util/Overlay;->disposed:Z

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    iget-object v1, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/World;->removeObject(Lcom/threed/jpct/Object3D;)V

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->setUserObject(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    iput-object v1, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    iput-object v1, p0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/threed/jpct/util/Overlay;->dispose()V

    return-void
.end method

.method public getObject3D()Lcom/threed/jpct/Object3D;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    return-object v0
.end method

.method public setColor(Lcom/threed/jpct/RGBColor;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setAdditionalColor(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public setDepth(F)V
    .locals 2

    sget v0, Lcom/threed/jpct/Config;->nearPlane:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    :cond_0
    iput p1, p0, Lcom/threed/jpct/util/Overlay;->depth:F

    return-void
.end method

.method public setNewCoordinates(IIII)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/util/Overlay;->upperLeftX:I

    iput p2, p0, Lcom/threed/jpct/util/Overlay;->upperLeftY:I

    iput p3, p0, Lcom/threed/jpct/util/Overlay;->lowerRightX:I

    iput p4, p0, Lcom/threed/jpct/util/Overlay;->lowerRightY:I

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iput p1, p0, Lcom/threed/jpct/util/Overlay;->rotation:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/util/Overlay;->rotMode:Z

    :cond_0
    return-void
.end method

.method public setRotationPivot(II)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/util/Overlay;->pivotX:I

    iput p2, p0, Lcom/threed/jpct/util/Overlay;->pivotY:I

    return-void
.end method

.method public setSourceCoordinates(IIII)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/util/Overlay;->upperLeftU:I

    iput p2, p0, Lcom/threed/jpct/util/Overlay;->upperLeftV:I

    iput p3, p0, Lcom/threed/jpct/util/Overlay;->lowerRightU:I

    iput p4, p0, Lcom/threed/jpct/util/Overlay;->lowerRightV:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/util/Overlay;->uvChange:Z

    return-void
.end method

.method public setTexture(Lcom/threed/jpct/TextureInfo;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTexture(Lcom/threed/jpct/TextureInfo;)V

    return-void
.end method

.method public setTexture(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    return-void
.end method

.method public setTransparency(I)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    return-void
.end method

.method public setTransparencyMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTransparencyMode(I)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setVisibility(Z)V

    return-void
.end method

.method public unlink()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public update(Lcom/threed/jpct/FrameBuffer;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/threed/jpct/util/Overlay;->disposed:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/threed/jpct/util/Overlay;->uvChange:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getPolygonManager()Lcom/threed/jpct/PolygonManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/threed/jpct/PolygonManager;->getPolygonTexture(I)I

    move-result v12

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v4

    iget v5, v0, Lcom/threed/jpct/util/Overlay;->upperLeftU:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v13, v5, v6

    iget v5, v0, Lcom/threed/jpct/util/Overlay;->upperLeftV:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v14, v5, v6

    iget v5, v0, Lcom/threed/jpct/util/Overlay;->lowerRightU:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v15, v5, v6

    iget v5, v0, Lcom/threed/jpct/util/Overlay;->lowerRightV:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v16, v5, v4

    new-instance v11, Lcom/threed/jpct/TextureInfo;

    move-object v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v13

    move/from16 v9, v16

    move v10, v15

    move-object v2, v11

    move v11, v14

    invoke-direct/range {v4 .. v11}, Lcom/threed/jpct/TextureInfo;-><init>(IFFFFFF)V

    invoke-virtual {v1, v3, v2}, Lcom/threed/jpct/PolygonManager;->setPolygonTexture(ILcom/threed/jpct/TextureInfo;)V

    new-instance v2, Lcom/threed/jpct/TextureInfo;

    move-object v4, v2

    move/from16 v7, v16

    move v8, v15

    invoke-direct/range {v4 .. v11}, Lcom/threed/jpct/TextureInfo;-><init>(IFFFFFF)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/threed/jpct/PolygonManager;->setPolygonTexture(ILcom/threed/jpct/TextureInfo;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iget-object v1, v0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    invoke-virtual {v1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v1

    iget v2, v0, Lcom/threed/jpct/util/Overlay;->pivotX:I

    const v5, -0x3b9ac9ff

    if-eq v2, v5, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget v7, v0, Lcom/threed/jpct/util/Overlay;->upperLeftX:I

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->upperLeftY:I

    iget v9, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    iget-object v10, v0, Lcom/threed/jpct/util/Overlay;->tmp1:Lcom/threed/jpct/SimpleVector;

    move-object v5, v1

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v3

    iget v7, v0, Lcom/threed/jpct/util/Overlay;->upperLeftX:I

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->lowerRightY:I

    iget v9, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    iget-object v10, v0, Lcom/threed/jpct/util/Overlay;->tmp2:Lcom/threed/jpct/SimpleVector;

    invoke-static/range {v5 .. v10}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v4

    iget v7, v0, Lcom/threed/jpct/util/Overlay;->lowerRightX:I

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->lowerRightY:I

    iget v9, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    iget-object v10, v0, Lcom/threed/jpct/util/Overlay;->tmp3:Lcom/threed/jpct/SimpleVector;

    invoke-static/range {v5 .. v10}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v11

    iget v7, v0, Lcom/threed/jpct/util/Overlay;->lowerRightX:I

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->upperLeftY:I

    iget v9, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    iget-object v10, v0, Lcom/threed/jpct/util/Overlay;->tmp4:Lcom/threed/jpct/SimpleVector;

    invoke-static/range {v5 .. v10}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v12

    if-eqz v2, :cond_2

    iget v7, v0, Lcom/threed/jpct/util/Overlay;->pivotX:I

    iget v8, v0, Lcom/threed/jpct/util/Overlay;->pivotY:I

    iget v9, v0, Lcom/threed/jpct/util/Overlay;->depth:F

    iget-object v10, v0, Lcom/threed/jpct/util/Overlay;->tmp6:Lcom/threed/jpct/SimpleVector;

    move-object v5, v1

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/threed/jpct/Interact2D;->reproject2D3D(Lcom/threed/jpct/Camera;Lcom/threed/jpct/FrameBuffer;IIFLcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, v0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    invoke-virtual {v5}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v5

    iget-object v6, v0, Lcom/threed/jpct/util/Overlay;->world:Lcom/threed/jpct/World;

    invoke-virtual {v6}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v6

    iget-object v7, v0, Lcom/threed/jpct/util/Overlay;->tmp5:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v6, v7}, Lcom/threed/jpct/Camera;->getPosition(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    invoke-virtual {v3, v6}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v4, v6}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v11, v6}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v12, v6}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    iget-object v7, v0, Lcom/threed/jpct/util/Overlay;->tmpMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v7}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    invoke-virtual {v4, v5}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    invoke-virtual {v11, v5}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    invoke-virtual {v12, v5}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    if-eqz v2, :cond_3

    invoke-virtual {v1, v6}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v1, v5}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    :cond_3
    iget-object v6, v0, Lcom/threed/jpct/util/Overlay;->adjuster:Lcom/threed/jpct/util/Overlay$MyController;

    invoke-virtual {v6, v3, v4, v12, v11}, Lcom/threed/jpct/util/Overlay$MyController;->setNewBounds(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    iget-object v6, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/threed/jpct/Mesh;->applyVertexController()V

    iget-boolean v6, v0, Lcom/threed/jpct/util/Overlay;->rotMode:Z

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v6}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v6

    invoke-virtual {v6}, Lcom/threed/jpct/Matrix;->setIdentity()V

    iget-object v6, v0, Lcom/threed/jpct/util/Overlay;->tmp1:Lcom/threed/jpct/SimpleVector;

    if-nez v2, :cond_4

    invoke-virtual {v6, v3}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v6, v4}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v6, v12}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v6, v11}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v6, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    :goto_3
    iget-object v1, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v1, v6}, Lcom/threed/jpct/Object3D;->setRotationPivot(Lcom/threed/jpct/SimpleVector;)V

    iget-object v1, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v5}, Lcom/threed/jpct/Matrix;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    iget v3, v0, Lcom/threed/jpct/util/Overlay;->rotation:F

    invoke-virtual {v1, v2, v3}, Lcom/threed/jpct/Object3D;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    :cond_5
    iget-object v1, v0, Lcom/threed/jpct/util/Overlay;->plane:Lcom/threed/jpct/Object3D;

    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->touch()V

    :cond_6
    return-void
.end method
