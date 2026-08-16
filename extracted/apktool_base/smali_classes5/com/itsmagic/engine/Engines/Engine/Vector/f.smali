.class public Lcom/itsmagic/engine/Engines/Engine/Vector/f;
.super LK8/f;
.source "SourceFile"


# static fields
.field public static final A:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public static final B:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public static final u:[F


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public g:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:LJAVARuntime/Matrix4;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->u:[F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Z0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-object v6, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>(FFFFFFFFFFFFFFFF)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m00",
            "m01",
            "m02",
            "m03",
            "m10",
            "m11",
            "m12",
            "m13",
            "m20",
            "m21",
            "m22",
            "m23",
            "m30",
            "m31",
            "m32",
            "m33"
        }
    .end annotation

    move-object v0, p0

    .line 3
    invoke-direct {p0}, LK8/f;-><init>()V

    move v1, p1

    .line 4
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    move v1, p2

    .line 5
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    move v1, p3

    .line 6
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    move v1, p4

    .line 7
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    move v1, p5

    .line 8
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    move v1, p6

    .line 9
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    move v1, p7

    .line 10
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    move v1, p8

    .line 11
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    move v1, p9

    .line 12
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    move v1, p10

    .line 13
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    move v1, p11

    .line 14
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move v1, p12

    .line 15
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    move v1, p13

    .line 16
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    move/from16 v1, p14

    .line 17
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    move/from16 v1, p15

    .line 18
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    move/from16 v1, p16

    .line 19
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->getDump()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    return-void
.end method

.method public static B1([F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collumMajorMatrix"
        }
    .end annotation

    const/16 v0, 0x8

    aget v0, p0, v0

    const/16 v1, 0x9

    aget v1, p0, v1

    const/16 v2, 0xa

    aget p0, p0, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static a0([F[F[F)V
    .locals 50
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftSideMatrix",
            "rightSideMatrix",
            "store"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x4

    aget v3, p0, v2

    const/16 v4, 0x8

    aget v5, p0, v4

    const/16 v6, 0xc

    aget v7, p0, v6

    const/4 v8, 0x1

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/16 v12, 0x9

    aget v13, p0, v12

    const/16 v14, 0xd

    aget v15, p0, v14

    const/16 v16, 0x2

    aget v17, p0, v16

    const/16 v18, 0x6

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xe

    aget v23, p0, v22

    const/16 v24, 0x3

    aget v25, p0, v24

    const/16 v26, 0x7

    aget v27, p0, v26

    const/16 v28, 0xb

    aget v29, p0, v28

    const/16 v30, 0xf

    aget v31, p0, v30

    aget v32, p1, v0

    aget v33, p1, v2

    aget v34, p1, v4

    aget v35, p1, v6

    aget v36, p1, v8

    aget v37, p1, v10

    aget v38, p1, v12

    aget v39, p1, v14

    aget v40, p1, v16

    aget v41, p1, v18

    aget v42, p1, v20

    aget v43, p1, v22

    aget v44, p1, v24

    aget v45, p1, v26

    aget v46, p1, v28

    aget v47, p1, v30

    mul-float v48, v1, v32

    mul-float v49, v3, v36

    add-float v48, v48, v49

    mul-float v49, v5, v40

    add-float v48, v48, v49

    mul-float v49, v7, v44

    add-float v48, v48, v49

    aput v48, p2, v0

    mul-float v0, v1, v33

    mul-float v48, v3, v37

    add-float v0, v0, v48

    mul-float v48, v5, v41

    add-float v0, v0, v48

    mul-float v48, v7, v45

    add-float v0, v0, v48

    aput v0, p2, v2

    mul-float v0, v1, v34

    mul-float v2, v3, v38

    add-float/2addr v0, v2

    mul-float v2, v5, v42

    add-float/2addr v0, v2

    mul-float v2, v7, v46

    add-float/2addr v0, v2

    aput v0, p2, v4

    mul-float v1, v1, v35

    mul-float v3, v3, v39

    add-float/2addr v1, v3

    mul-float v5, v5, v43

    add-float/2addr v1, v5

    mul-float v7, v7, v47

    add-float/2addr v1, v7

    aput v1, p2, v6

    mul-float v0, v9, v32

    mul-float v1, v11, v36

    add-float/2addr v0, v1

    mul-float v1, v13, v40

    add-float/2addr v0, v1

    mul-float v1, v15, v44

    add-float/2addr v0, v1

    aput v0, p2, v8

    mul-float v0, v9, v33

    mul-float v1, v11, v37

    add-float/2addr v0, v1

    mul-float v1, v13, v41

    add-float/2addr v0, v1

    mul-float v1, v15, v45

    add-float/2addr v0, v1

    aput v0, p2, v10

    mul-float v0, v9, v34

    mul-float v1, v11, v38

    add-float/2addr v0, v1

    mul-float v1, v13, v42

    add-float/2addr v0, v1

    mul-float v1, v15, v46

    add-float/2addr v0, v1

    aput v0, p2, v12

    mul-float v9, v9, v35

    mul-float v11, v11, v39

    add-float/2addr v9, v11

    mul-float v13, v13, v43

    add-float/2addr v9, v13

    mul-float v15, v15, v47

    add-float/2addr v9, v15

    aput v9, p2, v14

    mul-float v0, v17, v32

    mul-float v1, v19, v36

    add-float/2addr v0, v1

    mul-float v1, v21, v40

    add-float/2addr v0, v1

    mul-float v1, v23, v44

    add-float/2addr v0, v1

    aput v0, p2, v16

    mul-float v0, v17, v33

    mul-float v1, v19, v37

    add-float/2addr v0, v1

    mul-float v1, v21, v41

    add-float/2addr v0, v1

    mul-float v1, v23, v45

    add-float/2addr v0, v1

    aput v0, p2, v18

    mul-float v0, v17, v34

    mul-float v1, v19, v38

    add-float/2addr v0, v1

    mul-float v1, v21, v42

    add-float/2addr v0, v1

    mul-float v1, v23, v46

    add-float/2addr v0, v1

    aput v0, p2, v20

    mul-float v17, v17, v35

    mul-float v19, v19, v39

    add-float v17, v17, v19

    mul-float v21, v21, v43

    add-float v17, v17, v21

    mul-float v23, v23, v47

    add-float v17, v17, v23

    aput v17, p2, v22

    mul-float v32, v32, v25

    mul-float v36, v36, v27

    add-float v32, v32, v36

    mul-float v40, v40, v29

    add-float v32, v32, v40

    mul-float v44, v44, v31

    add-float v32, v32, v44

    aput v32, p2, v24

    mul-float v33, v33, v25

    mul-float v37, v37, v27

    add-float v33, v33, v37

    mul-float v41, v41, v29

    add-float v33, v33, v41

    mul-float v45, v45, v31

    add-float v33, v33, v45

    aput v33, p2, v26

    mul-float v34, v34, v25

    mul-float v38, v38, v27

    add-float v34, v34, v38

    mul-float v42, v42, v29

    add-float v34, v34, v42

    mul-float v46, v46, v31

    add-float v34, v34, v46

    aput v34, p2, v28

    mul-float v25, v25, v35

    mul-float v27, v27, v39

    add-float v25, v25, v27

    mul-float v29, v29, v43

    add-float v25, v25, v29

    mul-float v31, v31, v47

    add-float v25, v25, v31

    aput v25, p2, v30

    return-void
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v2, v4

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    cmpl-double v0, v6, v4

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    cmpl-double v0, v6, v4

    if-lez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_4

    return v2

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_6

    return v2

    :cond_6
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    return v2

    :cond_7
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_8

    return v2

    :cond_8
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_9

    return v2

    :cond_9
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_b

    return v2

    :cond_b
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_c

    return v2

    :cond_c
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_d

    return v2

    :cond_d
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_e

    return v2

    :cond_e
    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    cmpl-double p0, v0, v4

    if-lez p0, :cond_f

    return v2

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static x1([F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collumMajorMatrix"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static y()[F
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->u:[F

    return-object v0
.end method

.method public static z1([F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collumMajorMatrix"
        }
    .end annotation

    const/4 v0, 0x4

    aget v0, p0, v0

    const/4 v1, 0x5

    aget v1, p0, v1

    const/4 v2, 0x6

    aget p0, p0, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public A1()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public B([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    sub-float/2addr v1, v2

    aput v1, p1, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "vec must be of size 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B0([F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angles"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    aget v3, p1, v2

    const v5, 0x42652ee0

    mul-float/2addr v3, v5

    aget v6, p1, v1

    mul-float/2addr v6, v5

    aget p1, p1, v0

    mul-float/2addr p1, v5

    new-array v4, v4, [F

    aput v3, v4, v2

    aput v6, v4, v1

    aput p1, v4, v0

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->C0([F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Angles must be of size 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v0

    return-object v0
.end method

.method public C0([F)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angles"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-static {v3}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v3

    float-to-double v3, v3

    aget v2, v1, v2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    float-to-double v5, v2

    const/4 v2, 0x1

    aget v7, v1, v2

    invoke-static {v7}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v7

    float-to-double v7, v7

    aget v2, v1, v2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    float-to-double v9, v2

    const/4 v2, 0x2

    aget v11, v1, v2

    invoke-static {v11}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v11

    float-to-double v11, v11

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    float-to-double v1, v1

    mul-double v13, v7, v11

    double-to-float v13, v13

    iput v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-double v13, v7, v1

    double-to-float v13, v13

    iput v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    neg-double v13, v9

    double-to-float v13, v13

    iput v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-double v13, v5, v9

    mul-double/2addr v9, v3

    mul-double v15, v13, v11

    mul-double v17, v3, v1

    move-wide/from16 v19, v9

    sub-double v9, v15, v17

    double-to-float v9, v9

    iput v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-double/2addr v13, v1

    mul-double v9, v3, v11

    add-double/2addr v13, v9

    double-to-float v9, v13

    iput v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-double v9, v5, v7

    double-to-float v9, v9

    iput v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-double v9, v19, v11

    mul-double v13, v5, v1

    add-double/2addr v9, v13

    double-to-float v9, v9

    iput v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-double v9, v19, v1

    mul-double/2addr v5, v11

    sub-double/2addr v9, v5

    double-to-float v1, v9

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-double/2addr v3, v7

    double-to-float v1, v3

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Angles must be of size 3."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public C1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public D(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v8, v2, v7

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v10, v9, v6

    sub-float/2addr v8, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v2, v10

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v6, v11

    sub-float/2addr v2, v6

    mul-float v6, v5, v7

    mul-float v12, v9, v3

    sub-float/2addr v6, v12

    mul-float/2addr v5, v10

    mul-float/2addr v3, v11

    sub-float/2addr v5, v3

    mul-float/2addr v9, v10

    mul-float/2addr v11, v7

    sub-float/2addr v9, v11

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v10, v3, v7

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v13, v11, v12

    sub-float/2addr v10, v13

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v14, v3, v13

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v16, v15, v12

    sub-float v14, v14, v16

    move-object/from16 v16, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v3, v1

    move/from16 p1, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v12, v9

    sub-float/2addr v3, v12

    mul-float v12, v11, v13

    mul-float v17, v15, v7

    sub-float v12, v12, v17

    mul-float/2addr v11, v1

    mul-float/2addr v7, v9

    sub-float/2addr v11, v7

    mul-float/2addr v15, v1

    mul-float/2addr v9, v13

    sub-float/2addr v15, v9

    mul-float v1, v4, v15

    mul-float v7, v8, v11

    sub-float/2addr v1, v7

    mul-float v7, v2, v12

    add-float/2addr v1, v7

    mul-float v7, v6, v3

    add-float/2addr v1, v7

    mul-float v7, v5, v14

    sub-float/2addr v1, v7

    mul-float v9, p1, v10

    add-float/2addr v1, v9

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v7

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-lez v7, :cond_1

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v9, v7, v15

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v17, v13, v11

    sub-float v9, v9, v17

    move/from16 v17, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v18, v1, v12

    add-float v9, v9, v18

    move/from16 v18, v4

    move-object/from16 v4, v16

    iput v9, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    neg-float v9, v9

    mul-float/2addr v9, v15

    mul-float v16, v13, v3

    add-float v9, v9, v16

    mul-float v16, v1, v14

    sub-float v9, v9, v16

    iput v9, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v16, v9, v11

    mul-float v19, v7, v3

    sub-float v16, v16, v19

    mul-float/2addr v1, v10

    add-float v1, v16, v1

    iput v1, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    neg-float v1, v9

    mul-float/2addr v1, v12

    mul-float/2addr v7, v14

    add-float/2addr v1, v7

    mul-float/2addr v13, v10

    sub-float/2addr v1, v13

    iput v1, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    neg-float v1, v1

    mul-float/2addr v1, v15

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v9, v7, v11

    add-float/2addr v1, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v13, v9, v12

    sub-float/2addr v1, v13

    iput v1, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v15, v1

    mul-float v13, v7, v3

    sub-float/2addr v15, v13

    mul-float v13, v9, v14

    add-float/2addr v15, v13

    iput v15, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    neg-float v13, v1

    mul-float/2addr v13, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v11

    add-float/2addr v13, v3

    mul-float/2addr v9, v10

    sub-float/2addr v13, v9

    iput v13, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v1, v12

    mul-float/2addr v11, v14

    sub-float/2addr v1, v11

    mul-float/2addr v7, v10

    add-float/2addr v1, v7

    iput v1, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v9, v1, p1

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v7, v3, v5

    sub-float/2addr v9, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float v10, v7, v6

    add-float/2addr v9, v10

    iput v9, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    neg-float v10, v9

    mul-float v10, v10, p1

    mul-float v11, v3, v2

    add-float/2addr v10, v11

    mul-float v11, v7, v8

    sub-float/2addr v10, v11

    iput v10, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v10, v9, v5

    mul-float v11, v1, v2

    sub-float/2addr v10, v11

    mul-float v7, v7, v18

    add-float/2addr v10, v7

    iput v10, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    neg-float v7, v9

    mul-float/2addr v7, v6

    mul-float/2addr v1, v8

    add-float/2addr v7, v1

    mul-float v3, v3, v18

    sub-float/2addr v7, v3

    iput v7, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    neg-float v3, v1

    mul-float v3, v3, p1

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v9, v7, v5

    add-float/2addr v3, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v10, v9, v6

    sub-float/2addr v3, v10

    iput v3, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v10, v3, p1

    mul-float v11, v7, v2

    sub-float/2addr v10, v11

    mul-float v11, v9, v8

    add-float/2addr v10, v11

    iput v10, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    neg-float v10, v3

    mul-float/2addr v10, v5

    mul-float/2addr v2, v1

    add-float/2addr v10, v2

    mul-float v9, v9, v18

    sub-float/2addr v10, v9

    iput v10, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v3, v6

    mul-float/2addr v1, v8

    sub-float/2addr v3, v1

    mul-float v7, v7, v18

    add-float/2addr v3, v7

    iput v3, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v1, v1, v17

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e0(F)V

    return-object v4

    :cond_1
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "This matrix cannot be inverted"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public D0([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translation"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    neg-float v0, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    const/4 v0, 0x1

    aget v0, p1, v0

    neg-float v0, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    const/4 v0, 0x2

    aget p1, p1, v0

    neg-float p1, p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Translation size must be 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v3, v1, v2

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v7, v1, v6

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v9, v8, v5

    sub-float/2addr v7, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v1, v9

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v5, v10

    sub-float/2addr v1, v5

    mul-float v5, v4, v6

    mul-float v11, v8, v2

    sub-float/2addr v5, v11

    mul-float/2addr v4, v9

    mul-float/2addr v2, v10

    sub-float/2addr v4, v2

    mul-float/2addr v8, v9

    mul-float/2addr v10, v6

    sub-float/2addr v8, v10

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v9, v2, v6

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v12, v10, v11

    sub-float/2addr v9, v12

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v13, v2, v12

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v15, v14, v11

    sub-float/2addr v13, v15

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v2, v15

    move/from16 v16, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v11, v8

    sub-float/2addr v2, v11

    mul-float v11, v10, v12

    mul-float v17, v14, v6

    sub-float v11, v11, v17

    mul-float/2addr v10, v15

    mul-float/2addr v6, v8

    sub-float/2addr v10, v6

    mul-float/2addr v14, v15

    mul-float/2addr v8, v12

    sub-float/2addr v14, v8

    mul-float v6, v3, v14

    mul-float v8, v7, v10

    sub-float/2addr v6, v8

    mul-float v8, v1, v11

    add-float/2addr v6, v8

    mul-float v8, v5, v2

    add-float/2addr v6, v8

    mul-float v8, v4, v13

    sub-float/2addr v6, v8

    mul-float v8, v16, v9

    add-float/2addr v6, v8

    invoke-static {v6}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v8

    const/4 v12, 0x0

    cmpg-float v8, v8, v12

    if-gtz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->O1()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v1

    return-object v1

    :cond_0
    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v12, v8, v14

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v17, v15, v10

    sub-float v12, v12, v17

    move/from16 v17, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v18, v6, v11

    add-float v12, v12, v18

    move/from16 v18, v12

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    move/from16 v19, v3

    neg-float v3, v12

    mul-float/2addr v3, v14

    mul-float v20, v15, v2

    add-float v3, v3, v20

    mul-float v20, v6, v13

    sub-float v3, v3, v20

    mul-float v20, v12, v10

    mul-float v21, v8, v2

    sub-float v20, v20, v21

    mul-float/2addr v6, v9

    add-float v6, v20, v6

    neg-float v12, v12

    mul-float/2addr v12, v11

    mul-float/2addr v8, v13

    add-float/2addr v12, v8

    mul-float/2addr v15, v9

    sub-float/2addr v12, v15

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    neg-float v15, v8

    mul-float/2addr v15, v14

    move/from16 v20, v12

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v21, v12, v10

    add-float v15, v15, v21

    move/from16 v21, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v22, v6, v11

    sub-float v15, v15, v22

    move/from16 v22, v3

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v14, v3

    mul-float v23, v12, v2

    sub-float v14, v14, v23

    mul-float v23, v6, v13

    add-float v14, v14, v23

    move/from16 v23, v14

    neg-float v14, v3

    mul-float/2addr v14, v10

    mul-float/2addr v2, v8

    add-float/2addr v14, v2

    mul-float/2addr v6, v9

    sub-float/2addr v14, v6

    mul-float/2addr v3, v11

    mul-float/2addr v8, v13

    sub-float/2addr v3, v8

    mul-float/2addr v12, v9

    add-float/2addr v3, v12

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v8, v2, v16

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v9, v6, v4

    sub-float/2addr v8, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float v10, v9, v5

    add-float/2addr v8, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    neg-float v11, v10

    mul-float v11, v11, v16

    mul-float v12, v6, v1

    add-float/2addr v11, v12

    mul-float v12, v9, v7

    sub-float/2addr v11, v12

    mul-float v12, v10, v4

    mul-float v13, v2, v1

    sub-float/2addr v12, v13

    mul-float v9, v9, v19

    add-float/2addr v12, v9

    neg-float v9, v10

    mul-float/2addr v9, v5

    mul-float/2addr v2, v7

    add-float/2addr v9, v2

    mul-float v6, v6, v19

    sub-float/2addr v9, v6

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    neg-float v6, v2

    mul-float v6, v6, v16

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v13, v10, v4

    add-float/2addr v6, v13

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v24, v13, v5

    sub-float v6, v6, v24

    move/from16 v24, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v16, v16, v9

    mul-float v25, v10, v1

    sub-float v16, v16, v25

    mul-float v25, v13, v7

    move/from16 v26, v3

    add-float v3, v16, v25

    move/from16 v16, v12

    neg-float v12, v9

    mul-float/2addr v12, v4

    mul-float/2addr v1, v2

    add-float/2addr v12, v1

    mul-float v13, v13, v19

    sub-float/2addr v12, v13

    mul-float/2addr v9, v5

    mul-float/2addr v2, v7

    sub-float/2addr v9, v2

    mul-float v10, v10, v19

    add-float/2addr v9, v10

    move/from16 v1, v18

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iput v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    move/from16 v1, v22

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    move/from16 v1, v23

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    move/from16 v1, v21

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v14, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    move/from16 v1, v16

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    move/from16 v12, v20

    iput v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    move/from16 v3, v26

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    move/from16 v1, v24

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v1, v1, v17

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e0(F)V

    return-object v0
.end method

.method public E0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public E1(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public F()Z
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F0(FFFF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    invoke-static {}, LIc/M;->a()LIc/M;

    move-result-object v0

    iget-object v1, v0, LIc/M;->k:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->v1(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->setScale(FFF)V

    mul-float v3, p4, p4

    mul-float v4, p1, p1

    add-float/2addr v3, v4

    mul-float v4, p2, p2

    add-float/2addr v3, v4

    mul-float v4, p3, p3

    add-float/2addr v3, v4

    cmpl-float v4, v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    cmpl-float v6, v3, v4

    if-lez v6, :cond_1

    div-float/2addr v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    mul-float v3, p1, v5

    mul-float v4, p2, v5

    mul-float/2addr v5, p3

    mul-float v6, p1, v3

    mul-float v7, p1, v4

    mul-float/2addr p1, v5

    mul-float/2addr v3, p4

    mul-float v8, p2, v4

    mul-float/2addr p2, v5

    mul-float/2addr v4, p4

    mul-float/2addr p3, v5

    mul-float/2addr p4, v5

    add-float v5, v8, p3

    sub-float v5, v2, v5

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    sub-float v5, v7, p4

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    add-float v5, p1, v4

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    add-float/2addr v7, p4

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    add-float/2addr p3, v6

    sub-float p3, v2, p3

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    sub-float p3, p2, v3

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    sub-float/2addr p1, v4

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    add-float/2addr p2, v3

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    add-float/2addr v6, v8

    sub-float/2addr v2, v6

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->H0(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, LIc/M;->b()V

    return-void
.end method

.method public F1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    return v0
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    return-void
.end method

.method public G0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quat"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public G1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    return v0
.end method

.method public H(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p1

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    return-object p2
.end method

.method public H0(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->setScale(FFF)V

    return-void
.end method

.method public H1()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    return v0
.end method

.method public I(F)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalar"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e0(F)V

    return-object v0
.end method

.method public I0(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY",
            "posZ"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public J(FLcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scalar",
            "store"
        }
    .end annotation

    invoke-virtual {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e0(F)V

    return-object p2
.end method

.method public J0(FFFFFF)V
    .locals 3
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
            "posX",
            "posY",
            "posZ",
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p4, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v1, 0x0

    mul-float v2, p5, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v2, p6, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float p1, p4, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float p1, p5, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float p1, p6, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr p4, v1

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr p5, v1

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr p6, v0

    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public J1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public K(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in2"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object p1

    return-object p1
.end method

.method public K0(FFFFFFFFFF)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "px",
            "py",
            "pz",
            "sx",
            "sy",
            "sz",
            "rw",
            "rx",
            "ry",
            "rz"
        }
    .end annotation

    move-object v0, p0

    mul-float v1, p7, p7

    mul-float v2, p8, p8

    add-float/2addr v1, v2

    mul-float v2, p9, p9

    add-float/2addr v1, v2

    mul-float v2, p10, p10

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    div-float/2addr v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    mul-float v1, p8, v4

    mul-float v3, p9, v4

    mul-float v4, v4, p10

    mul-float v6, p8, v1

    mul-float v7, p8, v3

    mul-float v8, p8, v4

    mul-float v1, v1, p7

    mul-float v9, p9, v3

    mul-float v10, p9, v4

    mul-float v3, v3, p7

    mul-float v11, p10, v4

    mul-float v4, v4, p7

    add-float v12, v9, v11

    sub-float v12, v2, v12

    sub-float v13, v7, v4

    add-float v14, v8, v3

    add-float/2addr v7, v4

    add-float/2addr v11, v6

    sub-float v4, v2, v11

    sub-float v11, v10, v1

    sub-float/2addr v8, v3

    add-float/2addr v10, v1

    add-float/2addr v6, v9

    sub-float v1, v2, v6

    mul-float v3, p4, v12

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v3, p5, v13

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v3, p6, v14

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    move/from16 v3, p1

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v3, p4, v7

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v3, p5, v4

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v3, p6, v11

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    move/from16 v3, p2

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v3, p4, v8

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v3, p5, v10

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v1, v1, p6

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move/from16 v1, p3

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public K1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(FFF)F

    move-result p1

    return p1
.end method

.method public L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in2",
            "store"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    invoke-static {}, LIc/M;->a()LIc/M;

    move-result-object v3

    iget-object v4, v3, LIc/M;->M:[F

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v7, v5, v6

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v10, v8, v9

    add-float/2addr v7, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v12, v10, v11

    add-float/2addr v7, v12

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v14, v12, v13

    add-float/2addr v7, v14

    const/4 v14, 0x0

    aput v7, v4, v14

    iget v14, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v15, v5, v14

    move-object/from16 p2, v3

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v16, v8, v3

    add-float v15, v15, v16

    move-object/from16 v16, v2

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v17, v10, v2

    add-float v15, v15, v17

    move/from16 v17, v7

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v18, v12, v7

    add-float v15, v15, v18

    const/16 v18, 0x1

    aput v15, v4, v18

    move/from16 v18, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v19, v5, v15

    move/from16 v20, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v21, v8, v15

    add-float v19, v19, v21

    move/from16 v21, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v22, v10, v15

    add-float v19, v19, v22

    move/from16 v22, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v23, v12, v15

    move/from16 v24, v15

    add-float v15, v19, v23

    const/16 v19, 0x2

    aput v15, v4, v19

    move/from16 v19, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v5, v15

    move/from16 v23, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v8, v15

    add-float/2addr v5, v8

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v10, v8

    add-float/2addr v5, v10

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v12, v1

    add-float/2addr v5, v12

    const/4 v10, 0x3

    aput v5, v4, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v12, v10, v6

    move/from16 p1, v5

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v25, v5, v9

    add-float v12, v12, v25

    move/from16 v25, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v26, v9, v11

    add-float v12, v12, v26

    move/from16 v26, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v27, v11, v13

    add-float v12, v12, v27

    const/16 v27, 0x4

    aput v12, v4, v27

    mul-float v27, v10, v14

    mul-float v28, v5, v3

    add-float v27, v27, v28

    mul-float v28, v9, v2

    add-float v27, v27, v28

    mul-float v28, v11, v7

    move/from16 v29, v12

    add-float v12, v27, v28

    const/16 v27, 0x5

    aput v12, v4, v27

    mul-float v27, v10, v20

    mul-float v28, v5, v21

    add-float v27, v27, v28

    mul-float v28, v9, v22

    add-float v27, v27, v28

    mul-float v28, v11, v24

    move/from16 v30, v12

    add-float v12, v27, v28

    const/16 v27, 0x6

    aput v12, v4, v27

    mul-float v10, v10, v23

    mul-float/2addr v5, v15

    add-float/2addr v10, v5

    mul-float/2addr v9, v8

    add-float/2addr v10, v9

    mul-float/2addr v11, v1

    add-float/2addr v10, v11

    const/4 v5, 0x7

    aput v10, v4, v5

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v9, v5, v6

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v27, v11, v25

    add-float v9, v9, v27

    move/from16 v27, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v28, v10, v26

    add-float v9, v9, v28

    move/from16 v28, v12

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v31, v12, v13

    add-float v9, v9, v31

    const/16 v31, 0x8

    aput v9, v4, v31

    mul-float v31, v5, v14

    mul-float v32, v11, v3

    add-float v31, v31, v32

    mul-float v32, v10, v2

    add-float v31, v31, v32

    mul-float v32, v12, v7

    move/from16 v33, v9

    add-float v9, v31, v32

    const/16 v31, 0x9

    aput v9, v4, v31

    mul-float v31, v5, v20

    mul-float v32, v11, v21

    add-float v31, v31, v32

    mul-float v32, v10, v22

    add-float v31, v31, v32

    mul-float v32, v12, v24

    move/from16 v34, v9

    add-float v9, v31, v32

    const/16 v31, 0xa

    aput v9, v4, v31

    mul-float v5, v5, v23

    mul-float/2addr v11, v15

    add-float/2addr v5, v11

    mul-float/2addr v10, v8

    add-float/2addr v5, v10

    mul-float/2addr v12, v1

    add-float/2addr v5, v12

    const/16 v10, 0xb

    aput v5, v4, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v6, v10

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v12, v11, v25

    add-float/2addr v6, v12

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v25, v12, v26

    add-float v6, v6, v25

    move/from16 v25, v5

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v13, v5

    add-float/2addr v6, v13

    const/16 v13, 0xc

    aput v6, v4, v13

    mul-float/2addr v14, v10

    mul-float/2addr v3, v11

    add-float/2addr v14, v3

    mul-float/2addr v2, v12

    add-float/2addr v14, v2

    mul-float/2addr v7, v5

    add-float/2addr v14, v7

    const/16 v2, 0xd

    aput v14, v4, v2

    mul-float v2, v10, v20

    mul-float v3, v11, v21

    add-float/2addr v2, v3

    mul-float v3, v12, v22

    add-float/2addr v2, v3

    mul-float v3, v5, v24

    add-float/2addr v2, v3

    const/16 v3, 0xe

    aput v2, v4, v3

    mul-float v10, v10, v23

    mul-float/2addr v11, v15

    add-float/2addr v10, v11

    mul-float/2addr v12, v8

    add-float/2addr v10, v12

    mul-float/2addr v5, v1

    add-float/2addr v10, v5

    const/16 v1, 0xf

    aput v10, v4, v1

    move-object/from16 v1, v16

    move/from16 v7, v17

    iput v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    move/from16 v15, v18

    iput v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    move/from16 v3, v19

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    move/from16 v5, p1

    iput v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    move/from16 v12, v29

    iput v12, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    move/from16 v3, v30

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    move/from16 v3, v28

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    move/from16 v3, v27

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    move/from16 v3, v33

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    move/from16 v3, v34

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move/from16 v5, v25

    iput v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v14, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    invoke-virtual/range {p2 .. p2}, LIc/M;->b()V

    return-object v1
.end method

.method public L0(FFFFFFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "px",
            "py",
            "pz",
            "sx",
            "sy",
            "sz",
            "rotation"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    div-float/2addr v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v3

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v1

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v11

    mul-float/2addr v11, v3

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v12

    mul-float/2addr v12, v6

    add-float v6, v1, v3

    sub-float v6, v2, v6

    sub-float v13, v7, v12

    add-float v14, v8, v11

    add-float/2addr v7, v12

    add-float/2addr v3, v4

    sub-float v3, v2, v3

    sub-float v12, v10, v9

    sub-float/2addr v8, v11

    add-float/2addr v10, v9

    add-float/2addr v4, v1

    sub-float v1, v2, v4

    mul-float v4, p4, v6

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v4, p5, v13

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v4, p6, v14

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    move/from16 v4, p1

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v4, p4, v7

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v3, v3, p5

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v3, p6, v12

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    move/from16 v3, p2

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v3, p4, v8

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v3, p5, v10

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v1, v1, p6

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move/from16 v1, p3

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public L1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistance(FFF)F

    move-result p1

    return p1
.end method

.method public M(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->N(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public M0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY",
            "posZ",
            "scale"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p4

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v3, 0x0

    mul-float v4, v1, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v4, p4, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float p1, v0, v3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float p1, v1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float p1, p4, v3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr p4, v2

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public M1()Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->v([FZ)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    return-object v1
.end method

.method public N(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "store"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v0, v1

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v0, v1

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v0, p1

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p4
.end method

.method public N0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "px",
            "py",
            "pz",
            "scale",
            "rotation"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    div-float/2addr v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v3

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v1

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v11

    mul-float/2addr v11, v3

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v12

    mul-float/2addr v12, v6

    add-float v6, v1, v3

    sub-float v6, v2, v6

    sub-float v13, v7, v12

    add-float v14, v8, v11

    add-float/2addr v7, v12

    add-float/2addr v3, v4

    sub-float v3, v2, v3

    sub-float v12, v10, v9

    sub-float/2addr v8, v11

    add-float/2addr v10, v9

    add-float/2addr v4, v1

    sub-float v1, v2, v4

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v6

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v13

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, v14

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    move/from16 v4, p1

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v7

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v3

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v12

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    move/from16 v3, p2

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    mul-float/2addr v3, v8

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v10

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move/from16 v1, p3

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public N1()Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    return-object p0
.end method

.method public O(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public O0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->y0()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F0()F

    move-result v8

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G0()F

    move-result v9

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()F

    move-result v10

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E0()F

    move-result v7

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M0()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N0()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O0()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->K0(FFFFFFFFFF)V

    return-void
.end method

.method public O1()Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    return-object p0
.end method

.method public P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v2, p1

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p2
.end method

.method public P0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFFZZ)V
    .locals 13
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
            "transform",
            "px",
            "py",
            "pz",
            "rotation",
            "scale"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G0()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E0()F

    move-result v4

    move v10, v1

    move v11, v2

    move v12, v3

    move v9, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    move v11, v10

    move v12, v11

    :goto_0
    if-eqz p6, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O0()F

    move-result v2

    move v6, v0

    move v7, v1

    move v8, v2

    goto :goto_1

    :cond_1
    move v6, v0

    move v7, v6

    move v8, v7

    :goto_1
    move-object v2, p0

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->K0(FFFFFFFFFF)V

    return-void
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    iput v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vec can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Q0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;ZZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transform",
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->y0()F

    move-result v3

    move v5, v1

    move v6, v2

    move v7, v3

    goto :goto_0

    :cond_0
    move v5, v0

    move v6, v5

    move v7, v6

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F0()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G0()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E0()F

    move-result v4

    move v12, v0

    move v13, v2

    move v14, v3

    move v11, v4

    goto :goto_1

    :cond_1
    move v12, v0

    move v13, v12

    move v14, v13

    move v11, v1

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M0()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N0()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O0()F

    move-result v2

    move v8, v0

    move v9, v1

    move v10, v2

    goto :goto_2

    :cond_2
    move v8, v1

    move v9, v8

    move v10, v9

    :goto_2
    move-object v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->K0(FFFFFFFFFF)V

    return-void
.end method

.method public R0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p1

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    mul-float v4, p1, p1

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v5, v3, v7

    if-lez v5, :cond_1

    div-float/2addr v6, v3

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    mul-float v3, v1, v6

    mul-float v5, v2, v6

    mul-float/2addr v6, p1

    mul-float v8, v1, v3

    mul-float v9, v1, v5

    mul-float/2addr v1, v6

    mul-float/2addr v3, v0

    mul-float v10, v2, v5

    mul-float/2addr v2, v6

    mul-float/2addr v5, v0

    mul-float/2addr p1, v6

    mul-float/2addr v0, v6

    add-float v6, v10, p1

    sub-float v6, v4, v6

    sub-float v11, v9, v0

    add-float v12, v1, v5

    add-float/2addr v9, v0

    add-float/2addr p1, v8

    sub-float p1, v4, p1

    sub-float v0, v2, v3

    sub-float/2addr v1, v5

    add-float/2addr v2, v3

    add-float/2addr v8, v10

    sub-float v3, v4, v8

    mul-float/2addr v6, v4

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v11, v4

    iput v11, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v12, v4

    iput v12, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v9, v4

    iput v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr p1, v4

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public S(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v2, p1

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    return-object p2
.end method

.method public T(Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->U(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    move-result-object p1

    return-object p1
.end method

.method public U(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector4f;

    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->z:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    iput v3, p2, Lcom/jme3/math/Vector4f;->w:F

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vec can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public V([F)[F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec4f"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v0, v1

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v8, v3

    add-float/2addr v0, v8

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v8, v5

    add-float/2addr v0, v8

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v8, v7

    add-float/2addr v0, v8

    aput v0, p1, v2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    aput v0, p1, v4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    aput v0, p1, v6

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public V0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "scale"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    move-object v0, p0

    move v4, p2

    move v5, p2

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->J0(FFFFFF)V

    return-void
.end method

.method public W(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr p1, v4

    add-float/2addr v2, p1

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p2
.end method

.method public W0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "scale",
            "rotation"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    div-float/2addr v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v3

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v1

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v11

    mul-float/2addr v11, v3

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v12

    mul-float/2addr v12, v6

    add-float v6, v1, v3

    sub-float v6, v2, v6

    sub-float v13, v7, v12

    add-float v14, v8, v11

    add-float/2addr v7, v12

    add-float/2addr v3, v4

    sub-float v3, v2, v3

    sub-float v12, v10, v9

    sub-float/2addr v8, v11

    add-float/2addr v10, v9

    add-float/2addr v4, v1

    sub-float v1, v2, v4

    mul-float v4, p2, v6

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v4, p2, v13

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v4, p2, v14

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v4, p2, v7

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v3, v3, p2

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v3, p2, v12

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v3, p2, v8

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v3, p2, v10

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v1, v1, p2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public X([F)[F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec4f"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v0, v1

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v8, v3

    add-float/2addr v0, v8

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v8, v5

    add-float/2addr v0, v8

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v8, v7

    add-float/2addr v0, v8

    aput v0, p1, v2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    aput v0, p1, v4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v1, v7

    add-float/2addr v0, v1

    aput v0, p1, v6

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public X0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v6

    mul-float/2addr v6, v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v8

    mul-float/2addr v8, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v9

    mul-float/2addr v9, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v10

    mul-float/2addr v10, v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v2, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p2

    mul-float/2addr p2, v5

    add-float v5, v0, v2

    sub-float v5, v1, v5

    sub-float v11, v6, p2

    add-float v12, v7, v10

    add-float/2addr v6, p2

    add-float/2addr v2, v3

    sub-float p2, v1, v2

    sub-float v2, v9, v8

    sub-float/2addr v7, v10

    add-float/2addr v9, v8

    add-float/2addr v3, v0

    sub-float v0, v1, v3

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v11, v1

    iput v11, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v12, v1

    iput v12, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v6, v1

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v7, v1

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public Y([FLcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "store"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x4

    aget v3, p1, v3

    const/16 v4, 0x8

    aget v4, p1, v4

    const/16 v5, 0xc

    aget v5, p1, v5

    const/4 v6, 0x1

    aget v6, p1, v6

    const/4 v7, 0x5

    aget v7, p1, v7

    const/16 v8, 0x9

    aget v8, p1, v8

    const/16 v9, 0xd

    aget v9, p1, v9

    const/4 v10, 0x2

    aget v10, p1, v10

    const/4 v11, 0x6

    aget v11, p1, v11

    const/16 v12, 0xa

    aget v12, p1, v12

    const/16 v13, 0xe

    aget v13, p1, v13

    const/4 v14, 0x3

    aget v14, p1, v14

    const/4 v15, 0x7

    aget v15, p1, v15

    const/16 v16, 0xb

    aget v16, p1, v16

    const/16 v17, 0xf

    aget v17, p1, v17

    move/from16 v18, v13

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v13, v2

    move/from16 v19, v2

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v20, v2, v6

    add-float v13, v13, v20

    move/from16 v20, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v21, v6, v10

    add-float v13, v13, v21

    move/from16 v21, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v22, v10, v14

    add-float v13, v13, v22

    iput v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v22, v13, v3

    mul-float/2addr v2, v7

    add-float v22, v22, v2

    mul-float v2, v6, v11

    add-float v22, v22, v2

    mul-float v2, v10, v15

    add-float v2, v22, v2

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v2, v13, v4

    move/from16 v22, v4

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v23, v4, v8

    add-float v2, v2, v23

    mul-float/2addr v6, v12

    add-float/2addr v2, v6

    mul-float v6, v10, v16

    add-float/2addr v2, v6

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v13, v5

    mul-float/2addr v4, v9

    add-float/2addr v13, v4

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v2, v2, v18

    add-float/2addr v13, v2

    mul-float v10, v10, v17

    add-float/2addr v13, v10

    iput v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v2, v2, v19

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v6, v4, v20

    add-float/2addr v2, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v10, v6, v21

    add-float/2addr v2, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v13, v10, v14

    add-float/2addr v2, v13

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v13, v2, v3

    mul-float/2addr v4, v7

    add-float/2addr v13, v4

    mul-float v4, v6, v11

    add-float/2addr v13, v4

    mul-float v4, v10, v15

    add-float/2addr v13, v4

    iput v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v4, v2, v22

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v23, v13, v8

    add-float v4, v4, v23

    mul-float/2addr v6, v12

    add-float/2addr v4, v6

    mul-float v6, v10, v16

    add-float/2addr v4, v6

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v2, v5

    mul-float/2addr v13, v9

    add-float/2addr v2, v13

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v4, v4, v18

    add-float/2addr v2, v4

    mul-float v10, v10, v17

    add-float/2addr v2, v10

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v2, v2, v19

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v6, v4, v20

    add-float/2addr v2, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v10, v6, v21

    add-float/2addr v2, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v13, v10, v14

    add-float/2addr v2, v13

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v13, v2, v3

    mul-float/2addr v4, v7

    add-float/2addr v13, v4

    mul-float v4, v6, v11

    add-float/2addr v13, v4

    mul-float v4, v10, v15

    add-float/2addr v13, v4

    iput v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v4, v2, v22

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v23, v13, v8

    add-float v4, v4, v23

    mul-float/2addr v6, v12

    add-float/2addr v4, v6

    mul-float v6, v10, v16

    add-float/2addr v4, v6

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v2, v5

    mul-float/2addr v13, v9

    add-float/2addr v2, v13

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v4, v4, v18

    add-float/2addr v2, v4

    mul-float v10, v10, v17

    add-float/2addr v2, v10

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v2, v2, v19

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v6, v4, v20

    add-float/2addr v2, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v10, v6, v21

    add-float/2addr v2, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v14, v10

    add-float/2addr v2, v14

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v3, v2

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    mul-float/2addr v11, v6

    add-float/2addr v3, v11

    mul-float/2addr v15, v10

    add-float/2addr v3, v15

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v4, v2, v22

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v8, v3

    add-float/2addr v4, v8

    mul-float/2addr v6, v12

    add-float/2addr v4, v6

    mul-float v16, v16, v10

    add-float v4, v4, v16

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v2, v5

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v3, v3, v18

    add-float/2addr v2, v3

    mul-float v10, v10, v17

    add-float/2addr v2, v10

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public Y0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    div-float/2addr v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v3

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v1

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v11

    mul-float/2addr v11, v3

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v12

    mul-float/2addr v12, v6

    add-float v6, v1, v3

    sub-float v6, v2, v6

    sub-float v13, v7, v12

    add-float v14, v8, v11

    add-float/2addr v7, v12

    add-float/2addr v3, v4

    sub-float v3, v2, v3

    sub-float v12, v10, v9

    sub-float/2addr v8, v11

    add-float/2addr v10, v9

    add-float/2addr v4, v1

    sub-float v1, v2, v4

    mul-float v4, p3, v6

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v4, p3, v13

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v4, p3, v14

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v4, p3, v7

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v3, v3, p3

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v3, p3, v12

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v3, p3, v8

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v3, p3, v10

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v1, v1, p3

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public Z([F[F)V
    .locals 37
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "store"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x4

    aget v4, p1, v3

    const/16 v5, 0x8

    aget v6, p1, v5

    const/16 v7, 0xc

    aget v8, p1, v7

    const/4 v9, 0x1

    aget v10, p1, v9

    const/4 v11, 0x5

    aget v12, p1, v11

    const/16 v13, 0x9

    aget v14, p1, v13

    const/16 v15, 0xd

    aget v16, p1, v15

    const/16 v17, 0x2

    aget v18, p1, v17

    const/16 v19, 0x6

    aget v20, p1, v19

    const/16 v21, 0xa

    aget v22, p1, v21

    const/16 v23, 0xe

    aget v24, p1, v23

    const/16 v25, 0x3

    aget v26, p1, v25

    const/16 v27, 0x7

    aget v28, p1, v27

    const/16 v29, 0xb

    aget v30, p1, v29

    const/16 v31, 0xf

    aget v32, p1, v31

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v33, v15, v2

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v34, v13, v10

    add-float v33, v33, v34

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v35, v11, v18

    add-float v33, v33, v35

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v36, v9, v26

    add-float v33, v33, v36

    aput v33, p2, v1

    mul-float v1, v15, v4

    mul-float v33, v13, v12

    add-float v1, v1, v33

    mul-float v33, v11, v20

    add-float v1, v1, v33

    mul-float v33, v9, v28

    add-float v1, v1, v33

    aput v1, p2, v3

    mul-float v1, v15, v6

    mul-float v3, v13, v14

    add-float/2addr v1, v3

    mul-float v3, v11, v22

    add-float/2addr v1, v3

    mul-float v3, v9, v30

    add-float/2addr v1, v3

    aput v1, p2, v5

    mul-float/2addr v15, v8

    mul-float v13, v13, v16

    add-float/2addr v15, v13

    mul-float v11, v11, v24

    add-float/2addr v15, v11

    mul-float v9, v9, v32

    add-float/2addr v15, v9

    aput v15, p2, v7

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v3, v1, v2

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v7, v5, v10

    add-float/2addr v3, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v9, v7, v18

    add-float/2addr v3, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v11, v9, v26

    add-float/2addr v3, v11

    const/4 v11, 0x1

    aput v3, p2, v11

    mul-float v3, v1, v4

    mul-float v11, v5, v12

    add-float/2addr v3, v11

    mul-float v11, v7, v20

    add-float/2addr v3, v11

    mul-float v11, v9, v28

    add-float/2addr v3, v11

    const/4 v11, 0x5

    aput v3, p2, v11

    mul-float v3, v1, v6

    mul-float v11, v5, v14

    add-float/2addr v3, v11

    mul-float v11, v7, v22

    add-float/2addr v3, v11

    mul-float v11, v9, v30

    add-float/2addr v3, v11

    const/16 v11, 0x9

    aput v3, p2, v11

    mul-float/2addr v1, v8

    mul-float v5, v5, v16

    add-float/2addr v1, v5

    mul-float v7, v7, v24

    add-float/2addr v1, v7

    mul-float v9, v9, v32

    add-float/2addr v1, v9

    const/16 v3, 0xd

    aput v1, p2, v3

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v3, v1, v2

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v7, v5, v10

    add-float/2addr v3, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v9, v7, v18

    add-float/2addr v3, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v11, v9, v26

    add-float/2addr v3, v11

    aput v3, p2, v17

    mul-float v3, v1, v4

    mul-float v11, v5, v12

    add-float/2addr v3, v11

    mul-float v11, v7, v20

    add-float/2addr v3, v11

    mul-float v11, v9, v28

    add-float/2addr v3, v11

    aput v3, p2, v19

    mul-float v3, v1, v6

    mul-float v11, v5, v14

    add-float/2addr v3, v11

    mul-float v11, v7, v22

    add-float/2addr v3, v11

    mul-float v11, v9, v30

    add-float/2addr v3, v11

    aput v3, p2, v21

    mul-float/2addr v1, v8

    mul-float v5, v5, v16

    add-float/2addr v1, v5

    mul-float v7, v7, v24

    add-float/2addr v1, v7

    mul-float v9, v9, v32

    add-float/2addr v1, v9

    aput v1, p2, v23

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v2, v1

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v10, v3

    add-float/2addr v2, v10

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v18, v18, v5

    add-float v2, v2, v18

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float v26, v26, v7

    add-float v2, v2, v26

    aput v2, p2, v25

    mul-float/2addr v4, v1

    mul-float/2addr v12, v3

    add-float/2addr v4, v12

    mul-float v20, v20, v5

    add-float v4, v4, v20

    mul-float v28, v28, v7

    add-float v4, v4, v28

    aput v4, p2, v27

    mul-float/2addr v6, v1

    mul-float/2addr v14, v3

    add-float/2addr v6, v14

    mul-float v22, v22, v5

    add-float v6, v6, v22

    mul-float v30, v30, v7

    add-float v6, v6, v30

    aput v6, p2, v29

    mul-float/2addr v1, v8

    mul-float v3, v3, v16

    add-float/2addr v1, v3

    mul-float v5, v5, v24

    add-float/2addr v1, v5

    mul-float v7, v7, v32

    add-float/2addr v1, v7

    aput v1, p2, v31

    return-void
.end method

.method public Z0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    div-float/2addr v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v3

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v1

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v11

    mul-float/2addr v11, v3

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v12

    mul-float/2addr v12, v6

    add-float v6, v1, v3

    sub-float v6, v2, v6

    sub-float v13, v7, v12

    add-float v14, v8, v11

    add-float/2addr v7, v12

    add-float/2addr v3, v4

    sub-float v3, v2, v3

    sub-float v12, v10, v9

    sub-float/2addr v8, v11

    add-float/2addr v10, v9

    add-float/2addr v4, v1

    sub-float v1, v2, v4

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v6

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v13

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, v14

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v7

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v3

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v12

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    mul-float/2addr v3, v8

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v10

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public a1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "scale"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->J0(FFFFFF)V

    return-void
.end method

.method public b0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in2",
            "store"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v8, v6, v7

    add-float/2addr v3, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v10, v8, v9

    add-float/2addr v3, v10

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v10, v3

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v4, v11

    add-float/2addr v10, v4

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v12, v6, v4

    add-float/2addr v10, v12

    iget v12, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v13, v8, v12

    add-float/2addr v10, v13

    iput v10, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v10, v3

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v14, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v15, v13, v14

    add-float/2addr v10, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v6, v15

    add-float/2addr v10, v6

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v16, v8, v6

    add-float v10, v10, v16

    iput v10, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v3, v10

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v13, v10

    add-float/2addr v3, v13

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    move/from16 v16, v10

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v13, v10

    add-float/2addr v3, v13

    iget v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v8, v13

    add-float/2addr v3, v8

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v8

    move/from16 v17, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v18, v5, v7

    add-float v3, v3, v18

    move/from16 v18, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v19, v7, v9

    add-float v3, v3, v19

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    move/from16 v19, v9

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v20, v3, v9

    mul-float/2addr v8, v11

    add-float v20, v20, v8

    mul-float v8, v5, v4

    add-float v20, v20, v8

    mul-float v8, v7, v12

    add-float v8, v20, v8

    iput v8, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v11, v3, v8

    move/from16 v20, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v14, v8

    add-float/2addr v11, v14

    mul-float/2addr v5, v15

    add-float/2addr v11, v5

    mul-float v5, v7, v6

    add-float/2addr v11, v5

    iput v11, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v3, v5

    mul-float v8, v8, v16

    add-float/2addr v3, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v8, v10

    add-float/2addr v3, v8

    mul-float/2addr v7, v13

    add-float/2addr v3, v7

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v3, v3, v17

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v11, v7, v8

    add-float/2addr v3, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v14, v11, v18

    add-float/2addr v3, v14

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v16, v14, v19

    add-float v3, v3, v16

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v16, v3, v9

    move/from16 v18, v9

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v7, v9

    add-float v16, v16, v7

    mul-float/2addr v4, v11

    add-float v16, v16, v4

    mul-float v4, v14, v12

    add-float v4, v16, v4

    iput v4, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v4, v3, v20

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    move/from16 v16, v12

    iget v12, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v21, v7, v12

    add-float v4, v4, v21

    mul-float/2addr v11, v15

    add-float/2addr v4, v11

    mul-float v11, v14, v6

    add-float/2addr v4, v11

    iput v4, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v3, v5

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v7, v10

    add-float/2addr v3, v7

    mul-float/2addr v14, v13

    add-float/2addr v3, v14

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v3, v3, v17

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v8, v7

    add-float/2addr v3, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v10, v8

    add-float/2addr v3, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float v11, v10, v19

    add-float/2addr v3, v11

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v11, v3, v18

    mul-float/2addr v7, v9

    add-float/2addr v11, v7

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v7, v8

    add-float/2addr v11, v7

    mul-float v7, v10, v16

    add-float/2addr v11, v7

    iput v11, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v7, v3, v20

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v12, v9

    add-float/2addr v7, v12

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    mul-float/2addr v6, v10

    add-float/2addr v7, v6

    iput v7, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v3, v5

    mul-float/2addr v9, v4

    add-float/2addr v3, v9

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float/2addr v10, v13

    add-float/2addr v3, v10

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public b1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "scale",
            "rotation"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    div-float/2addr v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v3

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v1

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v11

    mul-float/2addr v11, v3

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v12

    mul-float/2addr v12, v6

    add-float v6, v1, v3

    sub-float v6, v2, v6

    sub-float v13, v7, v12

    add-float v14, v8, v11

    add-float/2addr v7, v12

    add-float/2addr v3, v4

    sub-float v3, v2, v3

    sub-float v12, v10, v9

    sub-float/2addr v8, v11

    add-float/2addr v10, v9

    add-float/2addr v4, v1

    sub-float v1, v2, v4

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v6

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v13

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, v14

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v7

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v3

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v12

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    mul-float/2addr v3, v8

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v10

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public c0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;[F)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in2",
            "store"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v7, v5, v6

    add-float/2addr v4, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v9, v7, v8

    add-float/2addr v4, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v11, v9, v10

    add-float/2addr v4, v11

    const/4 v11, 0x0

    aput v4, p2, v11

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v11, v2, v4

    iget v12, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v13, v5, v12

    add-float/2addr v11, v13

    iget v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v14, v7, v13

    add-float/2addr v11, v14

    iget v14, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v15, v9, v14

    add-float/2addr v11, v15

    const/4 v15, 0x4

    aput v11, p2, v15

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v15, v2, v11

    move/from16 v16, v11

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v17, v5, v11

    add-float v15, v15, v17

    move/from16 v17, v11

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v18, v7, v11

    add-float v15, v15, v18

    move/from16 v18, v11

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v19, v9, v11

    add-float v15, v15, v19

    const/16 v19, 0x8

    aput v15, p2, v19

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v2, v15

    move/from16 v19, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v5, v15

    add-float/2addr v2, v5

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v7, v5

    add-float/2addr v2, v7

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v9, v1

    add-float/2addr v2, v9

    const/16 v7, 0xc

    aput v2, p2, v7

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v7, v2, v3

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v20, v9, v6

    add-float v7, v7, v20

    move/from16 v20, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v21, v6, v8

    add-float v7, v7, v21

    move/from16 v21, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v22, v8, v10

    add-float v7, v7, v22

    const/16 v22, 0x1

    aput v7, p2, v22

    mul-float v7, v2, v4

    mul-float v22, v9, v12

    add-float v7, v7, v22

    mul-float v22, v6, v13

    add-float v7, v7, v22

    mul-float v22, v8, v14

    add-float v7, v7, v22

    const/16 v22, 0x5

    aput v7, p2, v22

    mul-float v7, v2, v16

    mul-float v22, v9, v17

    add-float v7, v7, v22

    mul-float v22, v6, v18

    add-float v7, v7, v22

    mul-float v22, v8, v11

    add-float v7, v7, v22

    const/16 v22, 0x9

    aput v7, p2, v22

    mul-float v2, v2, v19

    mul-float/2addr v9, v15

    add-float/2addr v2, v9

    mul-float/2addr v6, v5

    add-float/2addr v2, v6

    mul-float/2addr v8, v1

    add-float/2addr v2, v8

    const/16 v6, 0xd

    aput v2, p2, v6

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v6, v2, v3

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v8, v7, v20

    add-float/2addr v6, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v9, v8, v21

    add-float/2addr v6, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v22, v9, v10

    add-float v6, v6, v22

    const/16 v22, 0x2

    aput v6, p2, v22

    mul-float v6, v2, v4

    mul-float v22, v7, v12

    add-float v6, v6, v22

    mul-float v22, v8, v13

    add-float v6, v6, v22

    mul-float v22, v9, v14

    add-float v6, v6, v22

    const/16 v22, 0x6

    aput v6, p2, v22

    mul-float v6, v2, v16

    mul-float v22, v7, v17

    add-float v6, v6, v22

    mul-float v22, v8, v18

    add-float v6, v6, v22

    mul-float v22, v9, v11

    add-float v6, v6, v22

    const/16 v22, 0xa

    aput v6, p2, v22

    mul-float v2, v2, v19

    mul-float/2addr v7, v15

    add-float/2addr v2, v7

    mul-float/2addr v8, v5

    add-float/2addr v2, v8

    mul-float/2addr v9, v1

    add-float/2addr v2, v9

    const/16 v6, 0xe

    aput v2, p2, v6

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v3, v2

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v7, v6, v20

    add-float/2addr v3, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v8, v7, v21

    add-float/2addr v3, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v10, v8

    add-float/2addr v3, v10

    const/4 v9, 0x3

    aput v3, p2, v9

    mul-float/2addr v4, v2

    mul-float/2addr v12, v6

    add-float/2addr v4, v12

    mul-float/2addr v13, v7

    add-float/2addr v4, v13

    mul-float/2addr v14, v8

    add-float/2addr v4, v14

    const/4 v3, 0x7

    aput v4, p2, v3

    mul-float v3, v2, v16

    mul-float v4, v6, v17

    add-float/2addr v3, v4

    mul-float v4, v7, v18

    add-float/2addr v3, v4

    mul-float/2addr v11, v8

    add-float/2addr v3, v11

    const/16 v4, 0xb

    aput v3, p2, v4

    mul-float v2, v2, v19

    mul-float/2addr v6, v15

    add-float/2addr v2, v6

    mul-float/2addr v7, v5

    add-float/2addr v2, v7

    mul-float/2addr v8, v1

    add-float/2addr v2, v8

    const/16 v1, 0xf

    aput v2, p2, v1

    return-void
.end method

.method public c1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "scale",
            "rotMat"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iget v1, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    iget p3, p3, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-object v0
.end method

.method public d0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in2"
        }
    .end annotation

    invoke-virtual {p0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object p1

    return-object p1
.end method

.method public d1(Lcom/jme3/math/Vector3f;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v6

    mul-float/2addr v6, v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v8

    mul-float/2addr v8, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v9

    mul-float/2addr v9, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v10

    mul-float/2addr v10, v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v2, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p2

    mul-float/2addr p2, v5

    add-float v5, v0, v2

    sub-float v5, v1, v5

    sub-float v11, v6, p2

    add-float v12, v7, v10

    add-float/2addr v6, p2

    add-float/2addr v2, v3

    sub-float p2, v1, v2

    sub-float v2, v9, v8

    sub-float/2addr v7, v10

    add-float/2addr v9, v8

    add-float/2addr v3, v0

    sub-float v0, v1, v3

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v11, v1

    iput v11, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v12, v1

    iput v12, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v6, v1

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v7, v1

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public e0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalar"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public e1(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v2, v0, v4

    if-lez v2, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v6

    mul-float/2addr v6, v2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v5

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v8

    mul-float/2addr v8, v0

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v9

    mul-float/2addr v9, v5

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v10

    mul-float/2addr v10, v2

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v2, v5

    invoke-virtual {p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result p2

    mul-float/2addr p2, v5

    add-float v5, v0, v2

    sub-float v5, v1, v5

    sub-float v11, v6, p2

    add-float v12, v7, v10

    add-float/2addr v6, p2

    add-float/2addr v2, v3

    sub-float p2, v1, v2

    sub-float v2, v9, v8

    sub-float/2addr v7, v10

    add-float/2addr v9, v8

    add-float/2addr v3, v0

    sub-float v0, v1, v3

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v11, v1

    iput v11, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v12, v1

    iput v12, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v6, v1

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v7, v1

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v9, v1

    iput v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v0

    :cond_5
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :cond_6
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v0

    :cond_7
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    return v0

    :cond_8
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_9

    return v0

    :cond_9
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a

    return v0

    :cond_a
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_b

    return v0

    :cond_b
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_c

    return v0

    :cond_c
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_d

    return v0

    :cond_d
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_e

    return v0

    :cond_e
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_f

    return v0

    :cond_f
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_10

    return v0

    :cond_10
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_11

    return v0

    :cond_11
    return v1

    :cond_12
    :goto_0
    return v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v0

    return-object v0
.end method

.method public f0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->L0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-void
.end method

.method public f1(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_1

    div-float/2addr v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v7

    mul-float/2addr v7, v3

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v8

    mul-float/2addr v8, v6

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v9

    mul-float/2addr v9, v1

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v11

    mul-float/2addr v11, v3

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v12

    mul-float/2addr v12, v6

    add-float v6, v1, v3

    sub-float v6, v2, v6

    sub-float v13, v7, v12

    add-float v14, v8, v11

    add-float/2addr v7, v12

    add-float/2addr v3, v4

    sub-float v3, v2, v3

    sub-float v12, v10, v9

    sub-float/2addr v8, v11

    add-float/2addr v10, v9

    add-float/2addr v4, v1

    sub-float v1, v2, v4

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v6

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v13

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, v14

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v4

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v7

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v3

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v12

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v3

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    mul-float/2addr v3, v8

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v10

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p2
.end method

.method public g1(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "scale"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v3

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v4

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v5

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->J0(FFFFFF)V

    return-void
.end method

.method public get([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->v([FZ)V

    return-void
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v8, v2, v7

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v10, v9, v6

    sub-float/2addr v8, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v2, v10

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v12, v11, v6

    sub-float/2addr v2, v12

    mul-float v12, v5, v7

    mul-float v13, v9, v3

    sub-float/2addr v12, v13

    mul-float v13, v5, v10

    mul-float v14, v11, v3

    sub-float/2addr v13, v14

    mul-float v14, v9, v10

    mul-float v15, v11, v7

    sub-float/2addr v14, v15

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    move/from16 p1, v4

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v16, v15, v4

    move/from16 v17, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    move/from16 v18, v2

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v19, v8, v2

    sub-float v16, v16, v19

    move/from16 v19, v12

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v20, v15, v12

    move/from16 v21, v13

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v22, v13, v2

    sub-float v20, v20, v22

    move/from16 v22, v14

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v15, v14

    move/from16 v23, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v2, v11

    sub-float/2addr v15, v2

    mul-float v2, v8, v12

    mul-float v24, v13, v4

    sub-float v2, v2, v24

    mul-float/2addr v8, v14

    mul-float/2addr v4, v11

    sub-float/2addr v8, v4

    mul-float/2addr v13, v14

    mul-float v4, v11, v12

    sub-float/2addr v13, v4

    mul-float v4, v3, v13

    mul-float v24, v7, v8

    sub-float v4, v4, v24

    mul-float v24, v10, v2

    add-float v4, v4, v24

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    neg-float v4, v6

    mul-float/2addr v4, v13

    mul-float v6, v7, v15

    add-float/2addr v4, v6

    mul-float v6, v10, v20

    sub-float/2addr v4, v6

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v6, v4, v8

    mul-float v24, v3, v15

    sub-float v6, v6, v24

    mul-float v10, v10, v16

    add-float/2addr v6, v10

    iput v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    neg-float v4, v4

    mul-float/2addr v4, v2

    mul-float v3, v3, v20

    add-float/2addr v4, v3

    mul-float v7, v7, v16

    sub-float/2addr v4, v7

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    neg-float v3, v5

    mul-float/2addr v3, v13

    mul-float v4, v9, v8

    add-float/2addr v3, v4

    mul-float v4, v23, v2

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v13, v3

    mul-float v4, v9, v15

    sub-float/2addr v13, v4

    mul-float v4, v23, v20

    add-float/2addr v13, v4

    iput v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    neg-float v4, v3

    mul-float/2addr v4, v8

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v15, v5

    add-float/2addr v4, v15

    mul-float v6, v23, v16

    sub-float/2addr v4, v6

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v3, v2

    mul-float v5, v5, v20

    sub-float/2addr v3, v5

    mul-float v9, v9, v16

    add-float/2addr v3, v9

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v3, v2, v22

    mul-float v13, v12, v21

    sub-float/2addr v3, v13

    mul-float v4, v14, v19

    add-float/2addr v3, v4

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    neg-float v4, v3

    mul-float v4, v4, v22

    mul-float v5, v12, v18

    add-float/2addr v4, v5

    mul-float v8, v14, v17

    sub-float/2addr v4, v8

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v13, v3, v21

    mul-float v4, v2, v18

    sub-float/2addr v13, v4

    mul-float v14, v14, p1

    add-float/2addr v13, v14

    iput v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    neg-float v3, v3

    mul-float v3, v3, v19

    mul-float v2, v2, v17

    add-float/2addr v3, v2

    mul-float v12, v12, p1

    sub-float/2addr v3, v12

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    neg-float v3, v2

    mul-float v3, v3, v22

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v13, v4, v21

    add-float/2addr v3, v13

    mul-float v12, v11, v19

    sub-float/2addr v3, v12

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v14, v3, v22

    mul-float v5, v4, v18

    sub-float/2addr v14, v5

    mul-float v8, v11, v17

    add-float/2addr v14, v8

    iput v14, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    neg-float v5, v3

    mul-float v5, v5, v21

    mul-float v6, v2, v18

    add-float/2addr v5, v6

    mul-float v11, v11, p1

    sub-float/2addr v5, v11

    iput v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v3, v3, v19

    mul-float v2, v2, v17

    sub-float/2addr v3, v2

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-object v1
.end method

.method public h0(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector4f;

    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->z:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector4f;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iput v2, p2, Lcom/jme3/math/Vector4f;->z:F

    return-object p2
.end method

.method public h1(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p1, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v1, 0x0

    mul-float v2, p2, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v2, p3, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v2, p1, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v2, p2, v0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v2, p3, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr p3, v0

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angles"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v4

    invoke-static {v3}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p1

    mul-float v5, v3, v0

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float v5, v3, v2

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    neg-float v5, v4

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v5, v1, v4

    mul-float v6, v5, v0

    neg-float v7, v2

    mul-float v8, p1, v7

    add-float/2addr v6, v8

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v5, v2

    mul-float v6, p1, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v5, v1, v3

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v4, p1

    mul-float v5, v4, v0

    neg-float v1, v1

    mul-float/2addr v7, v1

    add-float/2addr v5, v7

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v4, v2

    mul-float/2addr v1, v0

    add-float/2addr v4, v1

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr p1, v3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    return-void
.end method

.method public i0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p2
.end method

.method public i1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v3, 0x0

    mul-float v4, v1, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v4, p1, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float v4, v0, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v4, v1, v2

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v4, p1, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public j()Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-object v0
.end method

.method public j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public j1(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compare"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-static {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k0(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->z:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector4f;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iput v2, p2, Lcom/jme3/math/Vector4f;->z:F

    return-void
.end method

.method public k1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translation"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    :goto_0
    return-void
.end method

.method public l0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    add-float/2addr p2, p1

    return p2
.end method

.method public l1([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translation"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    const/4 v0, 0x2

    aget p1, p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Translation size must be 3."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()F
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float v3, v1, v2

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v7, v1, v6

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v9, v8, v5

    sub-float/2addr v7, v9

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v1, v9

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v5, v10

    sub-float/2addr v1, v5

    mul-float v5, v4, v6

    mul-float v11, v8, v2

    sub-float/2addr v5, v11

    mul-float/2addr v4, v9

    mul-float/2addr v2, v10

    sub-float/2addr v4, v2

    mul-float/2addr v8, v9

    mul-float/2addr v10, v6

    sub-float/2addr v8, v10

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v9, v2, v6

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v12, v10, v11

    sub-float/2addr v9, v12

    iget v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v13, v2, v12

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v15, v14, v11

    sub-float/2addr v13, v15

    iget v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v2, v15

    move/from16 v16, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v11, v8

    sub-float/2addr v2, v11

    mul-float v11, v10, v12

    mul-float v17, v14, v6

    sub-float v11, v11, v17

    mul-float/2addr v10, v15

    mul-float/2addr v6, v8

    sub-float/2addr v10, v6

    mul-float/2addr v14, v15

    mul-float/2addr v8, v12

    sub-float/2addr v14, v8

    mul-float/2addr v3, v14

    mul-float/2addr v7, v10

    sub-float/2addr v3, v7

    mul-float/2addr v1, v11

    add-float/2addr v3, v1

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    mul-float/2addr v4, v13

    sub-float/2addr v3, v4

    mul-float v8, v16, v9

    add-float/2addr v3, v8

    return v3
.end method

.method public m0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in2",
            "store"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v6, v4, v5

    add-float/2addr v3, v6

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v8, v6, v7

    add-float/2addr v3, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v10, v8, v9

    add-float/2addr v3, v10

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v10, v3

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v4, v11

    add-float/2addr v10, v4

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v12, v6, v4

    add-float/2addr v10, v12

    iget v12, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v13, v8, v12

    add-float/2addr v10, v13

    iput v10, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v10, v3

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v14, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v15, v13, v14

    add-float/2addr v10, v15

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v6, v15

    add-float/2addr v10, v6

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float v16, v8, v6

    add-float v10, v10, v16

    iput v10, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v3, v10

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v13, v10

    add-float/2addr v3, v13

    iget v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    move/from16 v16, v10

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v13, v10

    add-float/2addr v3, v13

    iget v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v8, v13

    add-float/2addr v3, v8

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v8

    move/from16 v17, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v18, v5, v7

    add-float v3, v3, v18

    move/from16 v18, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float v19, v7, v9

    add-float v3, v3, v19

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    move/from16 v19, v9

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float v20, v3, v9

    mul-float/2addr v8, v11

    add-float v20, v20, v8

    mul-float v8, v5, v4

    add-float v20, v20, v8

    mul-float v8, v7, v12

    add-float v8, v20, v8

    iput v8, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float v11, v3, v8

    move/from16 v20, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v14, v8

    add-float/2addr v11, v14

    mul-float/2addr v5, v15

    add-float/2addr v11, v5

    mul-float v5, v7, v6

    add-float/2addr v11, v5

    iput v11, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v3, v5

    mul-float v8, v8, v16

    add-float/2addr v3, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v8, v10

    add-float/2addr v3, v8

    mul-float/2addr v7, v13

    add-float/2addr v3, v7

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v3, v3, v17

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float v11, v7, v8

    add-float/2addr v3, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float v14, v11, v18

    add-float/2addr v3, v14

    iget v14, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float v16, v14, v19

    add-float v3, v3, v16

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float v16, v3, v9

    move/from16 v18, v9

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v7, v9

    add-float v16, v16, v7

    mul-float/2addr v4, v11

    add-float v16, v16, v4

    mul-float v4, v14, v12

    add-float v4, v16, v4

    iput v4, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float v4, v3, v20

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    move/from16 v16, v12

    iget v12, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float v21, v7, v12

    add-float v4, v4, v21

    mul-float/2addr v11, v15

    add-float/2addr v4, v11

    mul-float v11, v14, v6

    add-float/2addr v4, v11

    iput v4, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v3, v5

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v7, v10

    add-float/2addr v3, v7

    mul-float/2addr v14, v13

    add-float/2addr v3, v14

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v3, v3, v17

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v8, v7

    add-float/2addr v3, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v10, v8

    add-float/2addr v3, v10

    iget v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float v11, v10, v19

    add-float/2addr v3, v11

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float v11, v3, v18

    mul-float/2addr v7, v9

    add-float/2addr v11, v7

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v7, v8

    add-float/2addr v11, v7

    mul-float v7, v10, v16

    add-float/2addr v11, v7

    iput v11, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float v7, v3, v20

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v12, v9

    add-float/2addr v7, v12

    iget v11, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    mul-float/2addr v6, v10

    add-float/2addr v7, v6

    iput v7, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v3, v5

    mul-float/2addr v9, v4

    add-float/2addr v3, v9

    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float/2addr v10, v13

    add-float/2addr v3, v10

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-object v2
.end method

.method public n0(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector4f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector4f;->z:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    iput v3, p2, Lcom/jme3/math/Vector4f;->w:F

    return-object p2
.end method

.method public n1()LJAVARuntime/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->t:LJAVARuntime/Matrix4;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Matrix4;

    invoke-direct {v0, p0}, LJAVARuntime/Matrix4;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->t:LJAVARuntime/Matrix4;

    :cond_0
    return-object v0
.end method

.method public o([F)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aput v1, p1, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aput v1, p1, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aput v1, p1, v0

    const/4 v0, 0x4

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aput v1, p1, v0

    const/4 v0, 0x5

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aput v1, p1, v0

    const/4 v0, 0x6

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aput v1, p1, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aput v1, p1, v0

    const/16 v0, 0x8

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aput v1, p1, v0

    const/16 v0, 0x9

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aput v1, p1, v0

    const/16 v0, 0xa

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aput v1, p1, v0

    const/16 v0, 0xb

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    aput v1, p1, v0

    const/16 v0, 0xc

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aput v1, p1, v0

    const/16 v0, 0xd

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aput v1, p1, v0

    const/16 v0, 0xe

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aput v1, p1, v0

    const/16 v0, 0xf

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    aput v1, p1, v0

    return-object p1
.end method

.method public o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "store"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v0, v1

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v0, v1

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v0, p1

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public o1()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 11

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method public p([FZ)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "columnMajor"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz p2, :cond_0

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aput v1, p1, v16

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aput v1, p1, v15

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aput v1, p1, v14

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aput v1, p1, v13

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aput v1, p1, v12

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aput v1, p1, v11

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aput v1, p1, v10

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aput v1, p1, v9

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aput v1, p1, v8

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aput v1, p1, v7

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aput v1, p1, v6

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    aput v1, p1, v5

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aput v1, p1, v4

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aput v1, p1, v3

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aput v1, p1, v2

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    const/16 v2, 0xf

    aput v1, p1, v2

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aput v1, p1, v16

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aput v1, p1, v15

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aput v1, p1, v14

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aput v1, p1, v13

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aput v1, p1, v12

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aput v1, p1, v11

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aput v1, p1, v10

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aput v1, p1, v9

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aput v1, p1, v8

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aput v1, p1, v7

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aput v1, p1, v6

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aput v1, p1, v5

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aput v1, p1, v4

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aput v1, p1, v3

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    aput v1, p1, v2

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    const/16 v2, 0xf

    aput v1, p1, v2

    :goto_0
    return-void
.end method

.method public p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "store"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    add-float/2addr v2, p1

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public p1(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-void
.end method

.method public q(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "angle",
            "axis"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public q1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 11

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move-object v0, v10

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y(FFFFFFFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object v10

    :cond_1
    :goto_0
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object v10
.end method

.method public r(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "angle",
            "axis"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->O1()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    mul-float/2addr v8, p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    mul-float/2addr v9, p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    mul-float/2addr p2, p1

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    sub-float p1, v5, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    add-float p1, v6, v9

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    add-float/2addr v5, p2

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    sub-float p1, v7, v8

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    sub-float/2addr v6, v9

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    return-void
.end method

.method public r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    return-void
.end method

.method public r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v10, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y(FFFFFFFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-object p1
.end method

.method public s(FFFFFFZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "near",
            "far",
            "left",
            "right",
            "top",
            "bottom",
            "parallel"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p7, :cond_0

    sub-float p7, p4, p3

    div-float v1, v0, p7

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    sub-float v0, p2, p1

    const/high16 v2, -0x40000000    # -2.0f

    div-float/2addr v2, v0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    add-float/2addr p4, p3

    neg-float p3, p4

    div-float/2addr p3, p7

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    add-float/2addr p5, p6

    neg-float p3, p5

    div-float/2addr p3, v1

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    goto :goto_0

    :cond_0
    mul-float p7, p1, v0

    sub-float v1, p4, p3

    div-float v2, p7, v1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    sub-float v2, p5, p6

    div-float/2addr p7, v2

    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    const/high16 p7, -0x40800000    # -1.0f

    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    const/high16 p7, -0x80000000

    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    add-float/2addr p4, p3

    div-float/2addr p4, v1

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    add-float/2addr p5, p6

    div-float/2addr p5, v2

    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    add-float p3, p2, p1

    neg-float p3, p3

    sub-float p4, p2, p1

    div-float/2addr p3, p4

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr p2, v0

    mul-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, p4

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    :goto_0
    return-void
.end method

.method public s0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-object p0
.end method

.method public s1(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(FFFFFFFFF)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public set([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->v0([FZ)V

    return-void
.end method

.method public setScale(FFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v3

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr p1, v0

    .line 3
    :goto_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    .line 4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    .line 5
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    .line 6
    :cond_1
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr p1, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v0, v0

    add-float/2addr p1, v0

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_3

    cmpl-float v0, p1, v3

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    div-float/2addr p2, p1

    .line 8
    :goto_1
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    .line 9
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    .line 10
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    .line 11
    :cond_3
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr p1, p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    cmpl-float p2, p1, v1

    if-eqz p2, :cond_5

    cmpl-float p2, p1, v3

    if-nez p2, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    div-float/2addr p3, p1

    .line 13
    :goto_2
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    .line 14
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    .line 15
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    :cond_5
    return-void
.end method

.method public setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->setScale(FFF)V

    return-void
.end method

.method public t0(FFFFFFFFFFFFFFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m00",
            "m01",
            "m02",
            "m03",
            "m10",
            "m11",
            "m12",
            "m13",
            "m20",
            "m21",
            "m22",
            "m23",
            "m30",
            "m31",
            "m32",
            "m33"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    move v1, p2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    move v1, p3

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    move v1, p4

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    move v1, p5

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    move v1, p6

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    move v1, p7

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    move v1, p8

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    move v1, p9

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    move v1, p10

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    move v1, p11

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    move v1, p12

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    move v1, p13

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    move/from16 v1, p14

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    move/from16 v1, p15

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    move/from16 v1, p16

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public t1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->u1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix4f\n[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(II)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "j"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_12

    if-eq p2, v2, :cond_11

    if-eq p2, v1, :cond_10

    if-eq p2, v0, :cond_f

    :cond_1
    if-eqz p2, :cond_e

    if-eq p2, v2, :cond_d

    if-eq p2, v1, :cond_c

    if-eq p2, v0, :cond_b

    :cond_2
    if-eqz p2, :cond_a

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    if-eq p2, v0, :cond_7

    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_3

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid indices into matrix."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    return p1

    :cond_5
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    return p1

    :cond_6
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    return p1

    :cond_7
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    return p1

    :cond_8
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    return p1

    :cond_9
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    return p1

    :cond_a
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    return p1

    :cond_b
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    return p1

    :cond_c
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    return p1

    :cond_d
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    return p1

    :cond_e
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    return p1

    :cond_f
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    return p1

    :cond_10
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    return p1

    :cond_11
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    return p1

    :cond_12
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    return p1
.end method

.method public u0(IIF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "j",
            "value"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_12

    if-eq p2, v2, :cond_11

    if-eq p2, v1, :cond_10

    if-eq p2, v0, :cond_f

    :cond_1
    if-eqz p2, :cond_e

    if-eq p2, v2, :cond_d

    if-eq p2, v1, :cond_c

    if-eq p2, v0, :cond_b

    :cond_2
    if-eqz p2, :cond_a

    if-eq p2, v2, :cond_9

    if-eq p2, v1, :cond_8

    if-eq p2, v0, :cond_7

    :goto_0
    if-eqz p2, :cond_6

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_3

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid indices into matrix."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    return-void

    :cond_5
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    return-void

    :cond_6
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    return-void

    :cond_7
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    return-void

    :cond_8
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    return-void

    :cond_9
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    return-void

    :cond_a
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    return-void

    :cond_b
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    return-void

    :cond_c
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    return-void

    :cond_d
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    return-void

    :cond_e
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    return-void

    :cond_f
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    return-void

    :cond_10
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    return-void

    :cond_11
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    return-void

    :cond_12
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    return-void
.end method

.method public u1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v1, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v2, v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p1
.end method

.method public v([FZ)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "rowMajor"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz p2, :cond_0

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aput v2, v1, v17

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aput v2, v1, v16

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aput v2, v1, v15

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aput v2, v1, v14

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aput v2, v1, v13

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aput v2, v1, v12

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aput v2, v1, v11

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aput v2, v1, v10

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aput v2, v1, v9

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aput v2, v1, v8

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aput v2, v1, v7

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aput v2, v1, v6

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aput v2, v1, v5

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aput v2, v1, v4

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    aput v2, v1, v3

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    const/16 v3, 0xf

    aput v2, v1, v3

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aput v2, v1, v17

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aput v2, v1, v13

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aput v2, v1, v9

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aput v2, v1, v5

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aput v2, v1, v16

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aput v2, v1, v12

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aput v2, v1, v8

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aput v2, v1, v4

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aput v2, v1, v15

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aput v2, v1, v11

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aput v2, v1, v7

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aput v2, v1, v3

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aput v2, v1, v14

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aput v2, v1, v10

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    aput v2, v1, v6

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    const/16 v3, 0xf

    aput v2, v1, v3

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array must be of size 16."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public v0([FZ)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "rowMajor"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz p2, :cond_0

    aget v2, v1, v17

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aget v2, v1, v16

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aget v2, v1, v15

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aget v2, v1, v14

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aget v2, v1, v13

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aget v2, v1, v12

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aget v2, v1, v11

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aget v2, v1, v10

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aget v2, v1, v9

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aget v2, v1, v8

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aget v2, v1, v7

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aget v2, v1, v6

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aget v2, v1, v5

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aget v2, v1, v4

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aget v2, v1, v3

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    const/16 v2, 0xf

    aget v1, v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    goto :goto_0

    :cond_0
    aget v2, v1, v17

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aget v2, v1, v13

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aget v2, v1, v9

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aget v2, v1, v5

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aget v2, v1, v16

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aget v2, v1, v12

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aget v2, v1, v8

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aget v2, v1, v4

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aget v2, v1, v15

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aget v2, v1, v11

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aget v2, v1, v7

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aget v2, v1, v3

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aget v2, v1, v14

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aget v2, v1, v10

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aget v2, v1, v6

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    const/16 v2, 0xf

    aget v1, v1, v2

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Array must be of size 16."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public v1(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v1, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v2, v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public w(I)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x(I[F)[F

    move-result-object p1

    return-object p1
.end method

.method public w0([[F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v2, p1, v0

    array-length v3, v2

    if-ne v3, v1, :cond_0

    aget v1, v2, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v1, 0x1

    aget v3, v2, v1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    const/4 v3, 0x2

    aget v4, v2, v3

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    const/4 v4, 0x3

    aget v2, v2, v4

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aget-object v2, p1, v1

    aget v5, v2, v0

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aget v5, v2, v1

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aget v5, v2, v3

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aget v2, v2, v4

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aget-object v2, p1, v3

    aget v5, v2, v0

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aget v5, v2, v1

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aget v5, v2, v3

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aget v2, v2, v4

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aget-object p1, p1, v4

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aget v0, p1, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aget v0, p1, v3

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    aget p1, p1, v4

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must be of size 16."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w1()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public x(I[F)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "store"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x4

    new-array p2, p2, [F

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aput p1, p2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aput p1, p2, v3

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aput p1, p2, v2

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    aput p1, p2, v1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid column index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aput p1, p2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aput p1, p2, v3

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aput p1, p2, v2

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    aput p1, p2, v1

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aput p1, p2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aput p1, p2, v3

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aput p1, p2, v2

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    aput p1, p2, v1

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aput p1, p2, v0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aput p1, p2, v3

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aput p1, p2, v2

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    aput p1, p2, v1

    :goto_0
    return-object p2
.end method

.method public x0([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    const/16 v0, 0xf

    aget p1, p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must be of size 16."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y0([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    const/4 v0, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    const/16 v0, 0x8

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    const/16 v0, 0xc

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    const/4 v0, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    const/16 v0, 0x9

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    const/16 v0, 0xd

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    const/16 v0, 0xa

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    const/16 v0, 0xe

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    const/16 v0, 0xb

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    const/16 v0, 0xf

    aget p1, p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    return-void
.end method

.method public y1()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public z0(I[F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "column"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    aget p1, p2, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->e:F

    aget p1, p2, v3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->k:F

    aget p1, p2, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o:F

    aget p1, p2, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s:F

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid column index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    aget p1, p2, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->d:F

    aget p1, p2, v3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->j:F

    aget p1, p2, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->n:F

    aget p1, p2, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r:F

    goto :goto_0

    :cond_2
    aget p1, p2, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->c:F

    aget p1, p2, v3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->i:F

    aget p1, p2, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m:F

    aget p1, p2, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->q:F

    goto :goto_0

    :cond_3
    aget p1, p2, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->b:F

    aget p1, p2, v3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g:F

    aget p1, p2, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l:F

    aget p1, p2, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p:F

    :goto_0
    return-void
.end method
