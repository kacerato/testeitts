.class public LIb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIb/c$d;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LIb/c$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LIb/c$a;

    invoke-direct {v0}, LIb/c$a;-><init>()V

    sput-object v0, LIb/c;->b:Ljava/lang/ThreadLocal;

    new-instance v0, LIb/c$b;

    invoke-direct {v0}, LIb/c$b;-><init>()V

    sput-object v0, LIb/c;->c:Ljava/lang/ThreadLocal;

    new-instance v0, LIb/c$c;

    invoke-direct {v0}, LIb/c$c;-><init>()V

    sput-object v0, LIb/c;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "triangles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LIb/c$d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIb/c;->a:Ljava/util/List;

    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)LIb/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LIb/c;->d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)LIb/c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)LIb/c;
    .locals 39
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "matrix"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4, v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sget-object v5, LIb/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v6, LIb/c;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-eqz v1, :cond_0

    sget-object v7, LIb/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v7, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y0([F)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_6

    invoke-virtual {v0, v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_1
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    invoke-virtual {v0, v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->O0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_2
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v11

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v12

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v13

    invoke-virtual {v0, v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->R0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_3
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v14

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v15

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    move/from16 v16, v3

    sub-float v3, v11, v8

    move-object/from16 v17, v5

    sub-float v5, v12, v9

    move-object/from16 p1, v7

    sub-float v7, v13, v10

    move-object/from16 v18, v4

    sub-float v4, v14, v8

    move-object/from16 v19, v6

    sub-float v6, v15, v9

    sub-float v0, v2, v10

    mul-float v20, v5, v0

    mul-float v21, v7, v6

    sub-float v20, v20, v21

    mul-float v21, v7, v4

    mul-float v22, v3, v0

    sub-float v21, v21, v22

    mul-float v22, v3, v6

    mul-float v23, v5, v4

    sub-float v22, v22, v23

    mul-float v23, v20, v20

    mul-float v24, v21, v21

    add-float v23, v23, v24

    mul-float v24, v22, v22

    move/from16 v25, v1

    add-float v1, v23, v24

    const v23, 0x24e69595    # 1.0E-16f

    cmpg-float v23, v1, v23

    if-gtz v23, :cond_4

    move-object/from16 v0, v18

    move/from16 v32, v25

    move-object/from16 v25, v19

    goto/16 :goto_5

    :cond_4
    move/from16 v23, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v0, v26, v0

    double-to-float v0, v0

    mul-float v1, v20, v0

    move/from16 v20, v1

    mul-float v1, v21, v0

    mul-float v0, v0, v22

    add-float v21, v8, v11

    add-float v21, v21, v14

    const v22, 0x3eaaaaab

    move/from16 v24, v0

    mul-float v0, v21, v22

    add-float v21, v9, v12

    add-float v21, v21, v15

    move/from16 v26, v0

    mul-float v0, v21, v22

    add-float v21, v10, v13

    add-float v21, v21, v2

    move/from16 v27, v0

    mul-float v0, v21, v22

    mul-float v21, v3, v3

    mul-float v22, v5, v5

    add-float v21, v21, v22

    mul-float v22, v7, v7

    move/from16 v28, v7

    add-float v7, v21, v22

    mul-float v21, v4, v4

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v23, v23

    move/from16 v29, v6

    add-float v6, v21, v22

    sub-float v21, v14, v11

    mul-float v21, v21, v21

    sub-float v22, v15, v12

    mul-float v22, v22, v22

    add-float v21, v21, v22

    sub-float v22, v2, v13

    mul-float v22, v22, v22

    move/from16 v30, v4

    add-float v4, v21, v22

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v21

    double-to-float v4, v6

    move-object/from16 v6, p0

    move/from16 v21, v5

    move/from16 v31, v23

    move/from16 v7, v25

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->M0(I)I

    move-result v5

    move/from16 v22, v3

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P0(I)I

    move-result v3

    move/from16 v23, v4

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->U0(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v25, 0x0

    move/from16 v32, v7

    move-object/from16 v7, v19

    :try_start_1
    invoke-virtual {v6, v5, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v19, v0

    :try_start_2
    iget v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    move/from16 v33, v0

    iget v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v38, v1

    move v1, v0

    move/from16 v0, v33

    move/from16 v33, v38

    goto :goto_2

    :catch_1
    move/from16 v19, v0

    :catch_2
    move/from16 v33, v1

    move/from16 v0, v25

    move v1, v0

    :goto_2
    :try_start_3
    invoke-virtual {v6, v3, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v34, v1

    :try_start_4
    iget v1, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    move/from16 v35, v1

    iget v1, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v36, v1

    move/from16 v1, v35

    goto :goto_3

    :catch_3
    move/from16 v34, v1

    :catch_4
    move/from16 v1, v25

    move/from16 v36, v1

    :goto_3
    :try_start_5
    invoke-virtual {v6, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    move/from16 v35, v6

    iget v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v25, v7

    move/from16 v38, v35

    move/from16 v35, v6

    move/from16 v6, v38

    goto :goto_4

    :catch_5
    move/from16 v6, v25

    move/from16 v35, v6

    move-object/from16 v25, v7

    :goto_4
    :try_start_6
    new-instance v7, LIb/c$d;

    move/from16 v37, v6

    const/4 v6, 0x0

    invoke-direct {v7, v6}, LIb/c$d;-><init>(LIb/c$a;)V

    iput v5, v7, LIb/c$d;->a:I

    iput v3, v7, LIb/c$d;->b:I

    iput v4, v7, LIb/c$d;->c:I

    iput v8, v7, LIb/c$d;->d:F

    iput v9, v7, LIb/c$d;->e:F

    iput v10, v7, LIb/c$d;->f:F

    iput v11, v7, LIb/c$d;->g:F

    iput v12, v7, LIb/c$d;->h:F

    iput v13, v7, LIb/c$d;->i:F

    iput v14, v7, LIb/c$d;->j:F

    iput v15, v7, LIb/c$d;->k:F

    iput v2, v7, LIb/c$d;->l:F

    iput v0, v7, LIb/c$d;->m:F

    move/from16 v0, v34

    iput v0, v7, LIb/c$d;->n:F

    iput v1, v7, LIb/c$d;->o:F

    move/from16 v1, v36

    iput v1, v7, LIb/c$d;->p:F

    move/from16 v0, v37

    iput v0, v7, LIb/c$d;->q:F

    move/from16 v6, v35

    iput v6, v7, LIb/c$d;->r:F

    move/from16 v0, v20

    iput v0, v7, LIb/c$d;->s:F

    move/from16 v0, v33

    iput v0, v7, LIb/c$d;->t:F

    move/from16 v0, v24

    iput v0, v7, LIb/c$d;->u:F

    move/from16 v0, v26

    iput v0, v7, LIb/c$d;->v:F

    move/from16 v0, v27

    iput v0, v7, LIb/c$d;->w:F

    move/from16 v0, v19

    iput v0, v7, LIb/c$d;->x:F

    move/from16 v0, v23

    iput v0, v7, LIb/c$d;->y:F

    move/from16 v11, v22

    iput v11, v7, LIb/c$d;->z:F

    move/from16 v12, v21

    iput v12, v7, LIb/c$d;->A:F

    move/from16 v13, v28

    iput v13, v7, LIb/c$d;->B:F

    move/from16 v14, v30

    iput v14, v7, LIb/c$d;->C:F

    move/from16 v15, v29

    iput v15, v7, LIb/c$d;->D:F

    move/from16 v2, v31

    iput v2, v7, LIb/c$d;->E:F

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lea/a;->a(F)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_5
    add-int/lit8 v1, v32, 0x1

    move-object/from16 v7, p1

    move-object v4, v0

    move/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v25

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_6
    move-object v0, v4

    new-instance v1, LIb/c;

    invoke-direct {v1, v0}, LIb/c;-><init>(Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0

    return-object v1

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public a(Laa/c;LJAVARuntime/Vertex$RayMode;)Laa/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "rayMode"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LIb/c;->b(Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ray",
            "rayMode",
            "backfaceCulling"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Laa/c;->b:Laa/d;

    iget-object v3, v3, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_0

    div-float v3, v6, v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, v1, Laa/c;->b:Laa/d;

    iget-object v5, v5, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    mul-float/2addr v5, v3

    iget-object v7, v1, Laa/c;->b:Laa/d;

    iget-object v7, v7, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    mul-float/2addr v7, v3

    iget-object v8, v1, Laa/c;->b:Laa/d;

    iget-object v8, v8, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    mul-float/2addr v8, v3

    iget-object v3, v1, Laa/c;->b:Laa/d;

    iget-object v3, v3, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v9, v1, Laa/c;->b:Laa/d;

    iget-object v9, v9, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    iget-object v10, v1, Laa/c;->b:Laa/d;

    iget-object v10, v10, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    iget v1, v1, Laa/c;->c:F

    cmpl-float v11, v1, v4

    if-lez v11, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_1
    iget-object v11, v0, LIb/c;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, -0x1

    const/high16 v14, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v15, 0x0

    move/from16 v18, v4

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move v4, v15

    const/high16 v17, 0x7f800000    # Float.POSITIVE_INFINITY

    move v15, v14

    move v14, v13

    :goto_2
    if-ge v4, v11, :cond_d

    iget-object v6, v0, LIb/c;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIb/c$d;

    iget v12, v6, LIb/c$d;->v:F

    sub-float/2addr v12, v3

    move/from16 v23, v11

    iget v11, v6, LIb/c$d;->w:F

    sub-float/2addr v11, v9

    iget v0, v6, LIb/c$d;->x:F

    sub-float/2addr v0, v10

    mul-float/2addr v12, v12

    mul-float/2addr v11, v11

    add-float/2addr v12, v11

    mul-float/2addr v0, v0

    add-float/2addr v12, v0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v11, v1, v0

    if-nez v11, :cond_2

    move v11, v0

    goto :goto_3

    :cond_2
    iget v11, v6, LIb/c$d;->y:F

    add-float/2addr v11, v1

    :goto_3
    mul-float/2addr v11, v11

    cmpl-float v11, v12, v11

    if-lez v11, :cond_4

    move/from16 v31, v3

    move/from16 v29, v4

    move/from16 v28, v13

    move/from16 v26, v14

    :goto_4
    move/from16 v30, v15

    :cond_3
    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_4
    iget v11, v6, LIb/c$d;->E:F

    mul-float v12, v7, v11

    iget v0, v6, LIb/c$d;->D:F

    mul-float v24, v8, v0

    sub-float v12, v12, v24

    iget v2, v6, LIb/c$d;->C:F

    mul-float v24, v8, v2

    mul-float v25, v5, v11

    sub-float v24, v24, v25

    mul-float v25, v5, v0

    mul-float v26, v7, v2

    sub-float v25, v25, v26

    move/from16 v26, v14

    iget v14, v6, LIb/c$d;->z:F

    mul-float v27, v14, v12

    move/from16 v28, v13

    iget v13, v6, LIb/c$d;->A:F

    mul-float v29, v13, v24

    add-float v27, v27, v29

    move/from16 v29, v4

    iget v4, v6, LIb/c$d;->B:F

    mul-float v30, v4, v25

    add-float v27, v27, v30

    const v30, 0x322bcc77    # 1.0E-8f

    if-eqz p3, :cond_6

    cmpg-float v30, v27, v30

    if-gtz v30, :cond_5

    :goto_6
    move/from16 v31, v3

    goto :goto_4

    :cond_5
    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_6
    const v31, -0x4dd43389    # -1.0E-8f

    cmpl-float v31, v27, v31

    if-lez v31, :cond_5

    cmpg-float v30, v27, v30

    if-gez v30, :cond_5

    goto :goto_6

    :goto_7
    div-float v27, v22, v27

    move/from16 v30, v15

    iget v15, v6, LIb/c$d;->d:F

    sub-float v15, v3, v15

    move/from16 v31, v3

    iget v3, v6, LIb/c$d;->e:F

    sub-float v3, v9, v3

    iget v6, v6, LIb/c$d;->f:F

    sub-float v6, v10, v6

    mul-float/2addr v12, v15

    mul-float v24, v24, v3

    add-float v12, v12, v24

    mul-float v25, v25, v6

    add-float v12, v12, v25

    mul-float v12, v12, v27

    const/16 v16, 0x0

    cmpg-float v24, v12, v16

    if-ltz v24, :cond_3

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v24, v12, v22

    if-lez v24, :cond_7

    :goto_8
    goto :goto_5

    :cond_7
    mul-float v24, v3, v4

    mul-float v25, v6, v13

    sub-float v24, v24, v25

    mul-float/2addr v6, v14

    mul-float/2addr v4, v15

    sub-float/2addr v6, v4

    mul-float/2addr v15, v13

    mul-float/2addr v3, v14

    sub-float/2addr v15, v3

    mul-float v3, v5, v24

    mul-float v4, v7, v6

    add-float/2addr v3, v4

    mul-float v4, v8, v15

    add-float/2addr v3, v4

    mul-float v3, v3, v27

    const/4 v4, 0x0

    cmpg-float v13, v3, v4

    if-ltz v13, :cond_3

    add-float v4, v12, v3

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v13

    if-lez v4, :cond_8

    goto :goto_8

    :cond_8
    mul-float v2, v2, v24

    mul-float/2addr v0, v6

    add-float/2addr v2, v0

    mul-float/2addr v11, v15

    add-float/2addr v2, v11

    mul-float v2, v2, v27

    const/4 v0, 0x0

    cmpg-float v4, v2, v0

    if-ltz v4, :cond_c

    cmpl-float v4, v2, v1

    if-lez v4, :cond_9

    goto :goto_b

    :cond_9
    cmpg-float v4, v2, v17

    if-gez v4, :cond_a

    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v18, v12

    move/from16 v13, v29

    goto :goto_9

    :cond_a
    move/from16 v13, v28

    :goto_9
    cmpl-float v4, v2, v30

    if-lez v4, :cond_b

    move v15, v2

    move/from16 v21, v3

    move/from16 v20, v12

    move/from16 v14, v29

    goto :goto_c

    :cond_b
    move/from16 v14, v26

    :goto_a
    move/from16 v15, v30

    goto :goto_c

    :cond_c
    :goto_b
    move/from16 v14, v26

    move/from16 v13, v28

    goto :goto_a

    :goto_c
    add-int/lit8 v4, v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v11, v23

    move/from16 v3, v31

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_d
    move/from16 v31, v3

    move/from16 v28, v13

    move/from16 v26, v14

    move/from16 v30, v15

    const/4 v0, 0x0

    if-gez v28, :cond_e

    if-gez v26, :cond_e

    return-object v0

    :cond_e
    sget-object v1, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    move-object/from16 v2, p2

    if-ne v2, v1, :cond_f

    if-gez v28, :cond_12

    return-object v0

    :cond_f
    sget-object v1, LJAVARuntime/Vertex$RayMode;->FarHit:LJAVARuntime/Vertex$RayMode;

    if-ne v2, v1, :cond_11

    if-gez v26, :cond_10

    return-object v0

    :cond_10
    move-object/from16 v0, p0

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v13, v26

    move/from16 v15, v30

    goto :goto_d

    :cond_11
    if-gez v28, :cond_12

    return-object v0

    :cond_12
    move-object/from16 v0, p0

    move/from16 v15, v17

    move/from16 v13, v28

    :goto_d
    iget-object v1, v0, LIb/c;->a:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIb/c$d;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v3, v5, v15

    add-float v3, v31, v3

    mul-float v4, v7, v15

    add-float/2addr v9, v4

    mul-float v4, v8, v15

    add-float/2addr v10, v4

    invoke-direct {v2, v3, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v3, Laa/a;

    invoke-direct {v3}, Laa/a;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Laa/a;->r:Z

    invoke-virtual {v3, v2}, Laa/a;->v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v5, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v3, v2}, Laa/a;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v4, v1, LIb/c$d;->s:F

    iget v5, v1, LIb/c$d;->t:F

    iget v6, v1, LIb/c$d;->u:F

    invoke-direct {v2, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v3, v2}, Laa/a;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v3, v15}, Laa/a;->setDistance(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v6, v2, v18

    sub-float v6, v6, v19

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, LIb/c$d;->m:F

    iget v5, v1, LIb/c$d;->n:F

    invoke-direct {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v3, v2}, Laa/a;->A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, LIb/c$d;->o:F

    iget v5, v1, LIb/c$d;->p:F

    invoke-direct {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v3, v2}, Laa/a;->B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, LIb/c$d;->q:F

    iget v5, v1, LIb/c$d;->r:F

    invoke-direct {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v3, v2}, Laa/a;->C(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v1, LIb/c$d;->m:F

    mul-float/2addr v4, v6

    iget v5, v1, LIb/c$d;->o:F

    mul-float v5, v5, v18

    add-float/2addr v4, v5

    iget v5, v1, LIb/c$d;->q:F

    mul-float v5, v5, v19

    add-float/2addr v4, v5

    iget v5, v1, LIb/c$d;->n:F

    mul-float/2addr v5, v6

    iget v6, v1, LIb/c$d;->p:F

    mul-float v6, v6, v18

    add-float/2addr v5, v6

    iget v1, v1, LIb/c$d;->r:F

    mul-float v1, v1, v19

    add-float/2addr v5, v1

    invoke-direct {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v3, v2}, Laa/a;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-object v3
.end method
