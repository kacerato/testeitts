.class public LGb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(FFIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxAngle",
            "length",
            "sideSegments",
            "baseSegments",
            "thickness"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, LGb/b;->a(FFIIF)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    iput-object p1, p0, LGb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method


# virtual methods
.method public final a(FFIIF)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxAngle",
            "length",
            "sideSegments",
            "baseSegments",
            "thickness"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    float-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v4, 0x0

    invoke-direct {v13, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    const/4 v15, 0x0

    move v4, v15

    :goto_0
    if-ge v4, v2, :cond_0

    const-wide v5, 0x4076800000000000L    # 360.0

    int-to-double v7, v2

    div-double/2addr v5, v7

    int-to-double v7, v4

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v3

    mul-double/2addr v7, v9

    double-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v9

    double-to-float v5, v5

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6, v7, v5, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v15

    move v10, v0

    :goto_1
    if-ge v0, v1, :cond_1

    div-int v3, v2, v1

    mul-int/2addr v3, v0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v4, p0

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, LGb/b;->b(Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FI)I

    move-result v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v15, v2, :cond_2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v15, v15, 0x1

    rem-int v0, v15, v2

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v4, p0

    move-object v5, v11

    move-object v6, v12

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, LGb/b;->b(Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FI)I

    move-result v10

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-static {v11, v0}, LIb/h;->K(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-static {v12, v0}, LIb/h;->E(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-object v0
.end method

.method public final b(Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FI)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "tris",
            "a",
            "b",
            "thickness",
            "baseIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;",
            "Ljava/util/List<",
            "LJAVARuntime/Point3;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "FI)I"
        }
    .end annotation

    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3f733333    # 0.95f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v2, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p5, v1

    invoke-virtual {v0, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {p3, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p3

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p4

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LJAVARuntime/Point3;

    add-int/lit8 p3, p6, 0x1

    add-int/lit8 p4, p6, 0x2

    invoke-direct {p1, p6, p3, p4}, LJAVARuntime/Point3;-><init>(III)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LJAVARuntime/Point3;

    add-int/lit8 p3, p6, 0x3

    invoke-direct {p1, p6, p4, p3}, LJAVARuntime/Point3;-><init>(III)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p6, p6, 0x4

    return p6
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LGb/b;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method
