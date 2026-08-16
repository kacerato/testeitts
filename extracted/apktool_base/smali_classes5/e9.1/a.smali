.class public Le9/a;
.super Le9/b;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public b:I

.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le9/b;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Le9/a;->b:I

    return-void
.end method


# virtual methods
.method public b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Le9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    invoke-virtual {p0, p1}, Le9/a;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;LJAVARuntime/GizmoObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "emitter",
            "gizmoObject"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoTransform;->setScale(F)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2}, LJAVARuntime/GizmoTransform;->getRotation()LJAVARuntime/Quaternion;

    move-result-object p2

    iget-object p2, p2, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget p2, p0, Le9/a;->c:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->b()F

    move-result v0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    iget p2, p0, Le9/a;->d:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->c()F

    move-result v0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    iget p2, p0, Le9/a;->e:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v0

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Le9/a;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    :cond_1
    return-void
.end method

.method public final e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->b()F

    move-result v1

    iput v1, v0, Le9/a;->c:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->c()F

    move-result v1

    iput v1, v0, Le9/a;->d:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v1

    iput v1, v0, Le9/a;->e:F

    iget v1, v0, Le9/a;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v2, v1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, v0, Le9/a;->b:I

    const/4 v8, 0x0

    if-ge v6, v7, :cond_0

    int-to-float v7, v6

    mul-float/2addr v7, v2

    invoke-static {v7}, LNc/b;->d0(F)F

    move-result v9

    invoke-static {v7}, LNc/b;->m1(F)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v10

    mul-float/2addr v7, v10

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v10, v9, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    move v7, v8

    :goto_1
    iget v9, v0, Le9/a;->b:I

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v11, 0x3f800000    # 1.0f

    if-ge v6, v9, :cond_1

    int-to-float v7, v6

    mul-float/2addr v7, v2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->b()F

    move-result v9

    sub-float/2addr v10, v9

    invoke-static {v7}, LNc/b;->d0(F)F

    move-result v9

    invoke-static {v7}, LNc/b;->m1(F)F

    move-result v12

    invoke-static {v10}, LNc/b;->m1(F)F

    move-result v10

    sub-float v13, v11, v10

    mul-float/2addr v9, v13

    mul-float/2addr v12, v13

    invoke-virtual {v4, v9, v12, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    invoke-static {v7}, LNc/b;->d0(F)F

    move-result v10

    invoke-static {v7}, LNc/b;->m1(F)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v12

    mul-float/2addr v10, v12

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v12

    mul-float/2addr v7, v12

    new-instance v12, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v12, v10, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v12, v4, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_2
    iget v9, v0, Le9/a;->b:I

    if-ge v6, v9, :cond_2

    int-to-float v9, v6

    mul-float/2addr v9, v2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->c()F

    move-result v12

    sub-float v12, v10, v12

    invoke-static {v9}, LNc/b;->d0(F)F

    move-result v13

    invoke-static {v9}, LNc/b;->m1(F)F

    move-result v14

    invoke-static {v12}, LNc/b;->m1(F)F

    move-result v12

    sub-float v15, v11, v12

    mul-float/2addr v13, v15

    mul-float/2addr v14, v15

    invoke-virtual {v4, v13, v14, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-static {v9}, LNc/b;->d0(F)F

    move-result v12

    invoke-static {v9}, LNc/b;->m1(F)F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->d()F

    move-result v13

    mul-float/2addr v9, v13

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v13, v12, v9, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v13, v4, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v2, v5

    :goto_3
    iget v4, v0, Le9/a;->b:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    new-instance v4, LJAVARuntime/Point3;

    invoke-direct {v4}, LJAVARuntime/Point3;-><init>()V

    invoke-virtual {v4, v2}, LJAVARuntime/Point3;->setZ(I)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, LJAVARuntime/Point3;->setY(I)V

    iget v7, v0, Le9/a;->b:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, LJAVARuntime/Point3;->setX(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LJAVARuntime/Point3;

    invoke-direct {v4}, LJAVARuntime/Point3;-><init>()V

    invoke-virtual {v4, v2}, LJAVARuntime/Point3;->setZ(I)V

    iget v7, v0, Le9/a;->b:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, LJAVARuntime/Point3;->setY(I)V

    iget v7, v0, Le9/a;->b:I

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, LJAVARuntime/Point3;->setX(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_3

    :cond_3
    new-instance v2, LJAVARuntime/Point3;

    invoke-direct {v2}, LJAVARuntime/Point3;-><init>()V

    iget v4, v0, Le9/a;->b:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, LJAVARuntime/Point3;->setZ(I)V

    iget v4, v0, Le9/a;->b:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, LJAVARuntime/Point3;->setY(I)V

    invoke-virtual {v2, v5}, LJAVARuntime/Point3;->setX(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LJAVARuntime/Point3;

    invoke-direct {v2}, LJAVARuntime/Point3;-><init>()V

    iget v4, v0, Le9/a;->b:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, LJAVARuntime/Point3;->setZ(I)V

    invoke-virtual {v2, v5}, LJAVARuntime/Point3;->setY(I)V

    iget v4, v0, Le9/a;->b:I

    invoke-virtual {v2, v4}, LJAVARuntime/Point3;->setX(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    :goto_4
    iget v4, v0, Le9/a;->b:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    new-instance v4, LJAVARuntime/Point3;

    invoke-direct {v4}, LJAVARuntime/Point3;-><init>()V

    invoke-virtual {v4, v2}, LJAVARuntime/Point3;->setX(I)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, LJAVARuntime/Point3;->setY(I)V

    iget v7, v0, Le9/a;->b:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, LJAVARuntime/Point3;->setZ(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LJAVARuntime/Point3;

    invoke-direct {v4}, LJAVARuntime/Point3;-><init>()V

    invoke-virtual {v4, v2}, LJAVARuntime/Point3;->setX(I)V

    iget v7, v0, Le9/a;->b:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, LJAVARuntime/Point3;->setY(I)V

    iget v7, v0, Le9/a;->b:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, LJAVARuntime/Point3;->setZ(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_4

    :cond_4
    new-instance v2, LJAVARuntime/Point3;

    invoke-direct {v2}, LJAVARuntime/Point3;-><init>()V

    iget v4, v0, Le9/a;->b:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, LJAVARuntime/Point3;->setX(I)V

    iget v4, v0, Le9/a;->b:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, LJAVARuntime/Point3;->setY(I)V

    invoke-virtual {v2, v5}, LJAVARuntime/Point3;->setZ(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LJAVARuntime/Point3;

    invoke-direct {v2}, LJAVARuntime/Point3;-><init>()V

    iget v4, v0, Le9/a;->b:I

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, LJAVARuntime/Point3;->setX(I)V

    invoke-virtual {v2, v5}, LJAVARuntime/Point3;->setY(I)V

    iget v4, v0, Le9/a;->b:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, LJAVARuntime/Point3;->setZ(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v2, v0, Le9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v1, v2}, LIb/h;->K(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v1, v0, Le9/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v3, v1}, LIb/h;->E(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void
.end method
