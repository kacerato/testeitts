.class public Lcom/threed/jpct/util/SkyBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private box:Lcom/threed/jpct/Object3D;

.field private disposed:Z

.field private size:F

.field private world:Lcom/threed/jpct/World;


# direct methods
.method public constructor <init>(F)V
    .locals 8

    .line 1
    const-string v5, "up"

    const-string v6, "down"

    const-string v1, "left"

    const-string v2, "front"

    const-string v3, "right"

    const-string v4, "back"

    move-object v0, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/threed/jpct/util/SkyBox;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    .line 3
    iput-object v8, v0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    .line 4
    iput-object v8, v0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    const/4 v8, 0x0

    .line 5
    iput-boolean v8, v0, Lcom/threed/jpct/util/SkyBox;->disposed:Z

    .line 6
    iput v7, v0, Lcom/threed/jpct/util/SkyBox;->size:F

    .line 7
    new-instance v8, Lcom/threed/jpct/World;

    invoke-direct {v8}, Lcom/threed/jpct/World;-><init>()V

    iput-object v8, v0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    .line 8
    invoke-static {}, Lcom/threed/jpct/Object3D;->createDummyObj()Lcom/threed/jpct/Object3D;

    move-result-object v8

    iput-object v8, v0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    .line 9
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v8

    .line 10
    invoke-virtual {v8, v1}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v9

    .line 11
    invoke-virtual {v8, v2}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v10

    .line 12
    invoke-virtual {v8, v4}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v11

    .line 13
    invoke-virtual {v8, v3}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v12

    .line 14
    invoke-virtual {v8, v5}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v13

    .line 15
    invoke-virtual {v8, v6}, Lcom/threed/jpct/TextureManager;->getTexture(Ljava/lang/String;)Lcom/threed/jpct/Texture;

    move-result-object v8

    const/4 v14, 0x1

    if-eqz v9, :cond_1

    if-eqz v12, :cond_1

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    if-eqz v13, :cond_1

    if-nez v8, :cond_0

    goto/16 :goto_0

    .line 16
    :cond_0
    invoke-virtual {v9, v14}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 17
    invoke-virtual {v10, v14}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 18
    invoke-virtual {v11, v14}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 19
    invoke-virtual {v12, v14}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 20
    invoke-virtual {v13, v14}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 21
    invoke-virtual {v8, v14}, Lcom/threed/jpct/Texture;->setClamping(Z)V

    .line 22
    invoke-static {v14, v7}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v8

    .line 23
    invoke-static {v14, v7}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v9

    .line 24
    invoke-static {v14, v7}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v10

    .line 25
    invoke-static {v14, v7}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v11

    .line 26
    invoke-static {v14, v7}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v12

    .line 27
    invoke-static {v14, v7}, Lcom/threed/jpct/Primitives;->getPlane(IF)Lcom/threed/jpct/Object3D;

    move-result-object v13

    const v15, 0x3fc90fdb

    .line 28
    invoke-virtual {v12, v15}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    const v14, -0x4036f025

    .line 29
    invoke-virtual {v13, v14}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    .line 30
    invoke-virtual {v13, v14}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    .line 31
    invoke-virtual {v9, v14}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    .line 32
    invoke-virtual {v10, v15}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    const v15, -0x3fb6f025

    .line 33
    invoke-virtual {v11, v15}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    .line 34
    invoke-virtual {v11, v15}, Lcom/threed/jpct/Object3D;->rotateZ(F)V

    .line 35
    invoke-virtual {v12, v14}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    .line 36
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 37
    invoke-virtual {v13}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 38
    invoke-virtual {v9}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 39
    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 40
    invoke-virtual {v11}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    .line 41
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 42
    invoke-virtual {v13}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 43
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 44
    invoke-virtual {v9}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 45
    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->clearRotation()V

    .line 46
    invoke-virtual {v11}, Lcom/threed/jpct/Object3D;->clearRotation()V

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v7, v14

    const/4 v15, 0x0

    .line 47
    invoke-virtual {v8, v15, v15, v14}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    neg-float v7, v14

    .line 48
    invoke-virtual {v11, v15, v15, v7}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 49
    invoke-virtual {v9, v7, v15, v15}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 50
    invoke-virtual {v10, v14, v15, v15}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 51
    invoke-virtual {v13, v15, v7, v15}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 52
    invoke-virtual {v12, v15, v14, v15}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    .line 53
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 54
    invoke-virtual {v13}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 55
    invoke-virtual {v12}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 56
    invoke-virtual {v9}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 57
    invoke-virtual {v10}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 58
    invoke-virtual {v11}, Lcom/threed/jpct/Object3D;->translateMesh()V

    .line 59
    invoke-virtual {v8, v2}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v13, v5}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v9, v1}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v10, v3}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v11, v4}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v12, v6}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    move-object/from16 p1, v8

    move-object/from16 p2, v13

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move-object/from16 p5, v11

    move-object/from16 p6, v12

    .line 65
    filled-new-array/range {p1 .. p6}, [Lcom/threed/jpct/Object3D;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Object3D;->mergeAll([Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;

    move-result-object v1

    iput-object v1, v0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    .line 66
    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->build()V

    .line 67
    iget-object v1, v0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    const/16 v2, 0xff

    invoke-virtual {v1, v2, v2, v2}, Lcom/threed/jpct/World;->setAmbientLight(III)V

    .line 68
    iget-object v1, v0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Object3D;->setLighting(I)V

    .line 69
    iget-object v1, v0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    iget-object v2, v0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/World;->addObject(Lcom/threed/jpct/Object3D;)I

    .line 70
    iget-object v1, v0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v3, p7

    invoke-virtual {v1, v2, v3}, Lcom/threed/jpct/World;->setClippingPlanes(FF)V

    return-void

    .line 71
    :cond_1
    :goto_0
    const-string v1, "Skybox textures not found!"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public compile()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->compile()V

    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/threed/jpct/util/SkyBox;->disposed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->removeAllObjects()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/util/SkyBox;->box:Lcom/threed/jpct/Object3D;

    iput-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/util/SkyBox;->disposed:Z
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

    invoke-virtual {p0}, Lcom/threed/jpct/util/SkyBox;->dispose()V

    return-void
.end method

.method public getWorld()Lcom/threed/jpct/World;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    return-object v0
.end method

.method public render(Lcom/threed/jpct/World;Lcom/threed/jpct/FrameBuffer;)V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/util/SkyBox;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {v0}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/threed/jpct/Camera;->getBack()Lcom/threed/jpct/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    iget-object p1, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {p1, p2}, Lcom/threed/jpct/World;->renderScene(Lcom/threed/jpct/FrameBuffer;)V

    iget-object p1, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {p1, p2}, Lcom/threed/jpct/World;->draw(Lcom/threed/jpct/FrameBuffer;)V

    return-void
.end method

.method public setCenter(Lcom/threed/jpct/SimpleVector;)V
    .locals 3

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    iget-object v1, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    invoke-virtual {v1}, Lcom/threed/jpct/World;->getCamera()Lcom/threed/jpct/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Camera;->setPosition(Lcom/threed/jpct/SimpleVector;)V

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/threed/jpct/util/SkyBox;->world:Lcom/threed/jpct/World;

    iget v1, p0, Lcom/threed/jpct/util/SkyBox;->size:F

    add-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-virtual {v0, p1, v1}, Lcom/threed/jpct/World;->setClippingPlanes(FF)V

    return-void
.end method
