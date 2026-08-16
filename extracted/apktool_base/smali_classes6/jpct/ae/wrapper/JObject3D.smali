.class public Ljpct/ae/wrapper/JObject3D;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctObject3D"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/Object3D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .line 1
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;)V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    .line 2
    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    .line 3
    new-instance v0, Lcom/threed/jpct/Object3D;

    invoke-direct {v0, p1}, Lcom/threed/jpct/Object3D;-><init>(Lcom/threed/jpct/Object3D;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JObject3D;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public static final BILLBOARDING_DISABLED()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final BILLBOARDING_ENABLED()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final COLLISION_CHECK_NONE()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final COLLISION_CHECK_OTHERS()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final COLLISION_CHECK_SELF()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final COLLISION_DETECTION_NOT_OPTIMIZED()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final COLLISION_DETECTION_OPTIMIZED()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final COLLISION_NONE()F
    .locals 1

    const v0, 0x5368d4a5    # 1.0E12f

    return v0
.end method

.method public static final CULLING_DISABLED()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final CULLING_ENABLED()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final ELLIPSOID_ALIGNED()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final ELLIPSOID_TRANSFORMED()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final ENVMAP_DISABLED()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final ENVMAP_ENABLED()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final LIGHTING_ALL_ENABLED()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final LIGHTING_NO_LIGHTS()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final NO_OBJECT()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public static final OBJ_INVISIBLE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final OBJ_VISIBLE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final RAY_MISSES_BOX()F
    .locals 1

    const v0, 0x5368d4a5    # 1.0E12f

    return v0
.end method

.method public static final SHADING_FAKED_FLAT()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final SHADING_GOURAUD()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final SPECULAR_DISABLED()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final SPECULAR_ENABLED()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final TRANSPARENCY_MODE_ADD()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final TRANSPARENCY_MODE_DEFAULT()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final UNKNOWN_OBJECTSIZE()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public Initialize1([F[F[II)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Object3D;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/threed/jpct/Object3D;-><init>([F[F[II)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JObject3D;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(I)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Object3D;

    invoke-direct {v0, p1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JObject3D;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize3(Lcom/threed/jpct/Object3D;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Object3D;

    invoke-direct {v0, p1}, Lcom/threed/jpct/Object3D;-><init>(Lcom/threed/jpct/Object3D;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JObject3D;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize4(Lcom/threed/jpct/Object3D;Z)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/Object3D;

    invoke-direct {v0, p1, p2}, Lcom/threed/jpct/Object3D;-><init>(Lcom/threed/jpct/Object3D;Z)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JObject3D;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public addChild(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->addChild(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public addCollisionListener(Lcom/threed/jpct/CollisionListener;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->addCollisionListener(Lcom/threed/jpct/CollisionListener;)V

    return-void
.end method

.method public addParent(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->addParent(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Object3D;->addTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)I

    move-result p1

    return p1
.end method

.method public addTriangle2(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FF)I
    .locals 11

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/Object3D;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/threed/jpct/Object3D;->addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FF)I

    move-result v0

    return v0
.end method

.method public addTriangle3(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFI)I
    .locals 12

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/Object3D;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/threed/jpct/Object3D;->addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFI)I

    move-result v0

    return v0
.end method

.method public addTriangle4(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFII)I
    .locals 13

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/Object3D;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/threed/jpct/Object3D;->addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFII)I

    move-result v0

    return v0
.end method

.method public addTriangle5(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/TextureInfo;)I
    .locals 0

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/threed/jpct/Object3D;

    invoke-virtual {p3, p1, p2, p1, p4}, Lcom/threed/jpct/Object3D;->addTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/TextureInfo;)I

    move-result p1

    return p1
.end method

.method public align(Lcom/threed/jpct/Camera;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->align(Lcom/threed/jpct/Camera;)V

    return-void
.end method

.method public align2(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->align(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public animate(FI)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->animate(FI)V

    return-void
.end method

.method public animate2(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->animate(F)V

    return-void
.end method

.method public build()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->build()V

    return-void
.end method

.method public build2(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->build(Z)V

    return-void
.end method

.method public calcBoundingBox()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    return-void
.end method

.method public calcCenter()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->calcCenter()V

    return-void
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    return p1
.end method

.method public calcMinDistance2(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Object3D;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F

    move-result p1

    return p1
.end method

.method public calcNormals()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->calcNormals()V

    return-void
.end method

.method public calcTangentVectors()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->calcTangentVectors()V

    return-void
.end method

.method public calcTextureWrap()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->calcTextureWrap()V

    return-void
.end method

.method public calcTextureWrapSpherical()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->calcTextureWrapSpherical()V

    return-void
.end method

.method public checkForCollision(Lcom/threed/jpct/SimpleVector;F)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->checkForCollision(Lcom/threed/jpct/SimpleVector;F)I

    move-result p1

    return p1
.end method

.method public checkForCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Object3D;->checkForCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public checkForCollisionSpherical(Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->checkForCollisionSpherical(Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public clearAdditionalColor()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->clearAdditionalColor()V

    return-void
.end method

.method public clearAnimation()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->clearAnimation()V

    return-void
.end method

.method public clearObject()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->clearObject()V

    return-void
.end method

.method public clearRotation()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->clearRotation()V

    return-void
.end method

.method public clearShader()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->clearShader()V

    return-void
.end method

.method public clearTranslation()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->clearTranslation()V

    return-void
.end method

.method public cloneObject()Lcom/threed/jpct/Object3D;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->cloneObject()Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public compile()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->compile()V

    return-void
.end method

.method public compile2(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->compile(Z)V

    return-void
.end method

.method public compile3(ZZ)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    return-void
.end method

.method public createDummyObj()Lcom/threed/jpct/Object3D;
    .locals 1

    invoke-static {}, Lcom/threed/jpct/Object3D;->createDummyObj()Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public cullingIsInverted()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->cullingIsInverted()Z

    move-result v0

    return v0
.end method

.method public decoupleMesh()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->decoupleMesh()V

    return-void
.end method

.method public disableCollisionListeners()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->disableCollisionListeners()V

    return-void
.end method

.method public disableLazyTransformations()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->disableLazyTransformations()V

    return-void
.end method

.method public disableVertexSharing()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->disableVertexSharing()V

    return-void
.end method

.method public ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z

    move-result p1

    return p1
.end method

.method public enableCollisionListeners()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->enableCollisionListeners()V

    return-void
.end method

.method public enableLazyTransformations()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->enableLazyTransformations()V

    return-void
.end method

.method public forceGeometryIndices(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->forceGeometryIndices(Z)V

    return-void
.end method

.method public getAdditionalColor()Lcom/threed/jpct/RGBColor;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getAdditionalColor()Lcom/threed/jpct/RGBColor;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationSequence()Lcom/threed/jpct/Animation;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getAnimationSequence()Lcom/threed/jpct/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getCenter()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionListeners()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/threed/jpct/CollisionListener;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getCollisionListeners()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getCulling()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getCulling()Z

    move-result v0

    return v0
.end method

.method public getEllipsoidMode()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getEllipsoidMode()I

    move-result v0

    return v0
.end method

.method public getID()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v0

    return v0
.end method

.method public getInverseWorldTransformation()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getInverseWorldTransformation2(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getLightCount()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getLightCount()I

    move-result v0

    return v0
.end method

.method public getLighting()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getLighting()I

    move-result v0

    return v0
.end method

.method public getMaxLights()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getMaxLights()I

    move-result v0

    return v0
.end method

.method public getMesh()Lcom/threed/jpct/Mesh;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextID()I
    .locals 1

    invoke-static {}, Lcom/threed/jpct/Object3D;->getNextID()I

    move-result v0

    return v0
.end method

.method public getOcTree()Lcom/threed/jpct/OcTree;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getOcTree()Lcom/threed/jpct/OcTree;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getOrigin()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getOriginMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getOriginMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getParents()[Lcom/threed/jpct/Object3D;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getParents()[Lcom/threed/jpct/Object3D;

    move-result-object v0

    return-object v0
.end method

.method public getPolygonManager()Lcom/threed/jpct/PolygonManager;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getPolygonManager()Lcom/threed/jpct/PolygonManager;

    move-result-object v0

    return-object v0
.end method

.method public getRenderHook()Lcom/threed/jpct/IRenderHook;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getRenderHook()Lcom/threed/jpct/IRenderHook;

    move-result-object v0

    return-object v0
.end method

.method public getRotationMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getRotationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getRotationPivot()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getRotationPivot()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v0

    return v0
.end method

.method public getShader()Lcom/threed/jpct/GLSLShader;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getShader()Lcom/threed/jpct/GLSLShader;

    move-result-object v0

    return-object v0
.end method

.method public getTextureMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getTextureMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getTransformedCenter()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getTransformedCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getTransformedCenter(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->getTransformedCenter(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getTranslation()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getTranslation()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getTranslation2(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->getTranslation(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public getTranslationMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getTranslationMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getTransparency()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getTransparency()I

    move-result v0

    return v0
.end method

.method public getTransparencyMode()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getTransparencyMode()I

    move-result v0

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualizer()Lcom/threed/jpct/Virtualizer;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getVirtualizer()Lcom/threed/jpct/Virtualizer;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getVisibility()Z

    move-result v0

    return v0
.end method

.method public getWorldTransformation()Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getWorldTransformation2(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getXAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public hasChild(Lcom/threed/jpct/Object3D;)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->hasChild(Lcom/threed/jpct/Object3D;)Z

    move-result p1

    return p1
.end method

.method public hasParent(Lcom/threed/jpct/Object3D;)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->hasParent(Lcom/threed/jpct/Object3D;)Z

    move-result p1

    return p1
.end method

.method public hasVertexAlpha()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->hasVertexAlpha()Z

    move-result v0

    return v0
.end method

.method public invert()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->invert()V

    return-void
.end method

.method public invertCulling(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->invertCulling(Z)V

    return-void
.end method

.method public isEnvmapped()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->isEnvmapped()Z

    move-result v0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->isTransparent()Z

    move-result v0

    return v0
.end method

.method public mergeAll([Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Object3D;->mergeAll([Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public mergeObjects(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;
    .locals 0

    invoke-static {p1, p2}, Lcom/threed/jpct/Object3D;->mergeObjects(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;

    move-result-object p1

    return-object p1
.end method

.method public rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)F

    move-result p1

    return p1
.end method

.method public rayIntersectsAABB2(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)F

    move-result p1

    return p1
.end method

.method public removeChild(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->removeChild(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public removeCollisionListener(Lcom/threed/jpct/CollisionListener;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->removeCollisionListener(Lcom/threed/jpct/CollisionListener;)V

    return-void
.end method

.method public removeParent(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->removeParent(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public resetCollisionStatus()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->resetCollisionStatus()V

    return-void
.end method

.method public resetNextID()V
    .locals 0

    invoke-static {}, Lcom/threed/jpct/Object3D;->resetNextID()V

    return-void
.end method

.method public rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    return-void
.end method

.method public rotateMesh()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->rotateMesh()V

    return-void
.end method

.method public rotateX(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->rotateX(F)V

    return-void
.end method

.method public rotateY(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->rotateY(F)V

    return-void
.end method

.method public rotateZ(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->rotateZ(F)V

    return-void
.end method

.method public setAdditionalColor(Lcom/threed/jpct/RGBColor;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setAdditionalColor(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public setAnimationSequence(Lcom/threed/jpct/Animation;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setAnimationSequence(Lcom/threed/jpct/Animation;)V

    return-void
.end method

.method public setBillboarding(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setBillboarding(Z)V

    return-void
.end method

.method public setBoundingBox(FFFFFF)V
    .locals 8

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/Object3D;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/threed/jpct/Object3D;->setBoundingBox(FFFFFF)V

    return-void
.end method

.method public setCenter(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setCenter(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setCollisionMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setCollisionMode(I)V

    return-void
.end method

.method public setCollisionOptimization(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setCollisionOptimization(Z)V

    return-void
.end method

.method public setCulling(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setCulling(Z)V

    return-void
.end method

.method public setEllipsoidMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setEllipsoidMode(I)V

    return-void
.end method

.method public setEnvmapped(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setEnvmapped(Z)V

    return-void
.end method

.method public setFixedPointMode(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setFixedPointMode(Z)V

    return-void
.end method

.method public setLighting(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setLighting(I)V

    return-void
.end method

.method public setMaxLights(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setMaxLights(I)V

    return-void
.end method

.method public setMesh(Lcom/threed/jpct/Mesh;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setMesh(Lcom/threed/jpct/Mesh;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setNextID(I)V
    .locals 0

    invoke-static {p1}, Lcom/threed/jpct/Object3D;->setNextID(I)V

    return-void
.end method

.method public setOcTree(Lcom/threed/jpct/OcTree;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setOcTree(Lcom/threed/jpct/OcTree;)V

    return-void
.end method

.method public setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setOrigin(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setOrigin(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setRenderHook(Lcom/threed/jpct/IRenderHook;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setRenderHook(Lcom/threed/jpct/IRenderHook;)V

    return-void
.end method

.method public setRotationMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setRotationMatrix(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public setRotationPivot(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setRotationPivot(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setScale(F)V

    return-void
.end method

.method public setShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setShader(Lcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public setShadingMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setShadingMode(I)V

    return-void
.end method

.method public setSortOffset(F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setSortOffset(F)V

    return-void
.end method

.method public setSpecularLighting(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setSpecularLighting(Z)V

    return-void
.end method

.method public setTexture(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTexture(Ljava/lang/String;)V

    return-void
.end method

.method public setTexture2(Lcom/threed/jpct/TextureInfo;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTexture(Lcom/threed/jpct/TextureInfo;)V

    return-void
.end method

.method public setTextureMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTextureMatrix(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public setTranslationMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTranslationMatrix(Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public setTransparency(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    return-void
.end method

.method public setTransparencyMode(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setTransparencyMode(I)V

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public setVirtualizer(Lcom/threed/jpct/Virtualizer;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setVirtualizer(Lcom/threed/jpct/Virtualizer;)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->setVisibility(Z)V

    return-void
.end method

.method public shareCompiledData(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->shareCompiledData(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public shareTextureData(Lcom/threed/jpct/Object3D;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->shareTextureData(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public sphereIntersectsAABB(Lcom/threed/jpct/SimpleVector;F)Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Object3D;->sphereIntersectsAABB(Lcom/threed/jpct/SimpleVector;F)Z

    move-result p1

    return p1
.end method

.method public strip()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->strip()V

    return-void
.end method

.method public touch()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->touch()V

    return-void
.end method

.method public translate(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Object3D;->translate(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public translate2(FFF)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Object3D;->translate(FFF)V

    return-void
.end method

.method public translateMesh()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->translateMesh()V

    return-void
.end method

.method public wasTargetOfLastCollision()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->wasTargetOfLastCollision()Z

    move-result v0

    return v0
.end method

.method public wasVisible()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JObject3D;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->wasVisible()Z

    move-result v0

    return v0
.end method
