.class public Lcom/itsmagic/engine/Engines/Engine/Vector/e;
.super LK8/f;
.source "SourceFile"


# static fields
.field public static final m:Lcom/itsmagic/engine/Engines/Engine/Vector/e;

.field public static final n:Lcom/itsmagic/engine/Engines/Engine/Vector/e;


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


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>(FFFFFFFFF)V

    sput-object v10, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->A()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0
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
            0x0
        }
        names = {
            "m00",
            "m01",
            "m02",
            "m10",
            "m11",
            "m12",
            "m20",
            "m21",
            "m22"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 4
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    .line 5
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    .line 6
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    .line 7
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    .line 8
    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    .line 9
    iput p6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    .line 10
    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    .line 11
    iput p8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    .line 12
    iput p9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, LK8/f;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->N(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    return-void
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

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
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    cmpl-double v0, v6, v4

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_4

    return v2

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_6

    return v2

    :cond_6
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    cmpl-double p0, v0, v4

    if-lez p0, :cond_8

    return v2

    :cond_8
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    return-void
.end method

.method public B(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->C(Lcom/itsmagic/engine/Engines/Engine/Vector/e;Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object p1

    return-object p1
.end method

.method public C(Lcom/itsmagic/engine/Engines/Engine/Vector/e;Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mat",
            "product"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float v5, v3, v4

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v9, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    iget v10, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float v11, v3, v10

    iget v12, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float v13, v6, v12

    add-float/2addr v11, v13

    iget v13, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float v14, v8, v13

    add-float/2addr v11, v14

    iget v14, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float/2addr v3, v14

    iget v15, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    mul-float/2addr v6, v15

    add-float/2addr v3, v6

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float/2addr v8, v1

    add-float/2addr v3, v8

    iget v6, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float v8, v6, v4

    move/from16 p1, v3

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float v16, v3, v7

    add-float v8, v8, v16

    move/from16 p2, v11

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    mul-float v16, v11, v9

    add-float v8, v8, v16

    mul-float v16, v6, v10

    mul-float v17, v3, v12

    add-float v16, v16, v17

    mul-float v17, v11, v13

    move/from16 v18, v8

    add-float v8, v16, v17

    mul-float/2addr v6, v14

    mul-float/2addr v3, v15

    add-float/2addr v6, v3

    mul-float/2addr v11, v1

    add-float/2addr v6, v11

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v4, v3

    iget v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v7, v11

    add-float/2addr v4, v7

    iget v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float/2addr v9, v7

    add-float/2addr v4, v9

    mul-float/2addr v10, v3

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    mul-float/2addr v13, v7

    add-float/2addr v10, v13

    mul-float/2addr v3, v14

    mul-float/2addr v11, v15

    add-float/2addr v3, v11

    mul-float/2addr v7, v1

    add-float/2addr v3, v7

    iput v5, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    move/from16 v11, p2

    iput v11, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    move/from16 v1, p1

    iput v1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    move/from16 v1, v18

    iput v1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iput v8, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iput v6, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iput v4, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iput v10, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-object v2
.end method

.method public D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vec",
            "product"
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

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p2
.end method

.method public F(F)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-object p0
.end method

.method public G(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mat"
        }
    .end annotation

    invoke-virtual {p0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->C(Lcom/itsmagic/engine/Engines/Engine/Vector/e;Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vec"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-object p1
.end method

.method public I(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>()V

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v0, v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float/2addr v2, v1

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v3, v1

    iput v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float v4, v1, v3

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float v6, v2, v5

    sub-float/2addr v4, v6

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float/2addr v5, v0

    iget v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    iput v5, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    mul-float/2addr v4, v2

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-object p1
.end method

.method public J()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->I(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object v0

    return-object v0
.end method

.method public K(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-void
.end method

.method public L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 2
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

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_a

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_8

    :cond_1
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_2

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid indices into matrix."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    return-object p0

    :cond_4
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    return-object p0

    :cond_5
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    return-object p0

    :cond_6
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    return-object p0

    :cond_7
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    return-object p0

    :cond_8
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    return-object p0

    :cond_9
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    return-object p0

    :cond_a
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    return-object p0
.end method

.method public M(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j0()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v4, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v5

    mul-float/2addr v5, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v7

    mul-float/2addr v7, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v9

    mul-float/2addr v9, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p1

    mul-float/2addr p1, v4

    add-float v4, v0, v2

    sub-float v4, v1, v4

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    sub-float v4, v5, p1

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    add-float v4, v6, v9

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    add-float/2addr v5, p1

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    add-float/2addr v2, v3

    sub-float p1, v1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    sub-float p1, v8, v7

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    sub-float/2addr v6, v9

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    add-float/2addr v8, v7

    iput v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    add-float/2addr v3, v0

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-object p0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->A()V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    :goto_0
    return-object p0
.end method

.method public O([F)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
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

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->P([FZ)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object p1

    return-object p1
.end method

.method public P([FZ)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 9
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

    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    aget p2, p1, v8

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    aget p2, p1, v7

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    aget p2, p1, v6

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aget p2, p1, v5

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aget p2, p1, v4

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aget p2, p1, v3

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aget p2, p1, v2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aget p2, p1, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aget p1, p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    goto :goto_0

    :cond_0
    aget p2, p1, v8

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    aget p2, p1, v5

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    aget p2, p1, v2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aget p2, p1, v7

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aget p2, p1, v4

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aget p2, p1, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aget p2, p1, v6

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aget p2, p1, v3

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aget p1, p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    :goto_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array must be of size 9."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Q([[F)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v2, p1, v0

    array-length v3, v2

    if-ne v3, v1, :cond_0

    aget v1, v2, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    const/4 v1, 0x1

    aget v3, v2, v1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aget-object v2, p1, v1

    aget v4, v2, v0

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aget v4, v2, v1

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aget v2, v2, v3

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aget-object p1, p1, v3

    aget v0, p1, v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aget v0, p1, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aget p1, p1, v3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must be of size 9."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 2
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

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

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
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    :goto_0
    return-object p0
.end method

.method public T(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "row"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid row index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    :goto_0
    return-object p0
.end method

.method public U()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->V()Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object v0

    return-object v0
.end method

.method public V()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    return-object p0
.end method

.method public W()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 11

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method public X()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-void
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object v0

    return-object v0
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

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v0

    :cond_5
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :cond_6
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v0

    :cond_7
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    return v0

    :cond_8
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_9

    return v0

    :cond_9
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    :goto_0
    return v0
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>()V

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float v5, v2, v4

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    iput v5, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float v6, v5, v3

    mul-float/2addr v2, v0

    sub-float/2addr v6, v2

    iput v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float v2, v3, v0

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v6, v1

    sub-float/2addr v2, v6

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v1, v2

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float v7, v6, v0

    sub-float/2addr v1, v7

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v6, v1

    mul-float/2addr v3, v2

    sub-float/2addr v6, v3

    iput v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    mul-float v3, v1, v4

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float/2addr v0, v6

    sub-float/2addr v3, v0

    iput v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v0, v5

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v2, v6

    mul-float/2addr v5, v1

    sub-float/2addr v2, v5

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-object p1
.end method

.method public h()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public i()F
    .locals 7

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v3, v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v1, v6

    sub-float/2addr v3, v1

    mul-float/2addr v6, v4

    mul-float/2addr v0, v5

    sub-float/2addr v6, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    return v0
.end method

.method public k([FZ)V
    .locals 9
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

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    aput p2, p1, v8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aput p2, p1, v7

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aput p2, p1, v6

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    aput p2, p1, v5

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aput p2, p1, v4

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aput p2, p1, v3

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aput p2, p1, v2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aput p2, p1, v1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    aput p2, p1, v0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    aput p2, p1, v8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    aput p2, p1, v7

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aput p2, p1, v6

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aput p2, p1, v5

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aput p2, p1, v4

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aput p2, p1, v3

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aput p2, p1, v2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aput p2, p1, v1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    aput p2, p1, v0

    :goto_0
    return-void
.end method

.method public l(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->m(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public m(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
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

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

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

    mul-float/2addr v5, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v7, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    mul-float/2addr v8, p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    mul-float/2addr v9, p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    mul-float/2addr p2, p1

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    sub-float p1, v5, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    add-float p1, v6, v9

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    add-float/2addr v5, p2

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    sub-float p1, v7, v8

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    sub-float/2addr v6, v9

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uAxis",
            "vAxis",
            "wAxis"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    neg-float v3, v1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const v4, 0x3f7ff972    # 0.9999f

    cmpl-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-lez v3, :cond_8

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    neg-float v6, v6

    :goto_1
    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    float-to-double v6, v6

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    neg-float v6, v6

    :goto_2
    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    float-to-double v6, v6

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    neg-float v6, v6

    :goto_3
    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    goto :goto_4

    :cond_4
    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    :goto_4
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float p1, p2, p1

    invoke-virtual {v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    div-float/2addr p2, v2

    mul-float v2, p1, p2

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    mul-float/2addr v2, v3

    move v3, v5

    :goto_5
    const/4 v6, 0x3

    if-ge v3, v6, :cond_9

    move v7, v5

    :goto_6
    if-ge v7, v6, :cond_7

    neg-float v8, p1

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->get(I)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->get(I)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->get(I)F

    move-result v9

    mul-float/2addr v9, p2

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->get(I)F

    move-result v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->get(I)F

    move-result v9

    mul-float/2addr v9, v2

    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->get(I)F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p0, v3, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->p(II)F

    move-result v6

    add-float/2addr v6, v4

    invoke-virtual {p0, v3, v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    add-float p1, v1, v4

    div-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    mul-float/2addr p1, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    mul-float/2addr p2, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, p1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    mul-float/2addr v6, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    mul-float/2addr p1, v7

    add-float/2addr p1, v1

    invoke-virtual {p0, v5, v5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    sub-float p1, v2, p1

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    add-float/2addr p1, v3

    const/4 v8, 0x2

    invoke-virtual {p0, v5, v8, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    add-float/2addr v2, p1

    invoke-virtual {p0, v7, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    mul-float/2addr v4, p1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    mul-float/2addr v4, p1

    add-float/2addr v4, v1

    invoke-virtual {p0, v7, v7, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    sub-float p1, v6, p1

    invoke-virtual {p0, v7, v8, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-virtual {p0, v8, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    add-float/2addr v6, p1

    invoke-virtual {p0, v8, v7, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr p2, p1

    add-float/2addr v1, p2

    invoke-virtual {p0, v8, v8, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->L(IIF)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    :cond_9
    return-void
.end method

.method public p(II)F
    .locals 2
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

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_a

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_8

    :cond_1
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_2

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid indices into matrix."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    return p1

    :cond_4
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    return p1

    :cond_5
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    return p1

    :cond_6
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    return p1

    :cond_7
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    return p1

    :cond_8
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    return p1

    :cond_9
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    return p1

    :cond_a
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    return p1
.end method

.method public q([FZ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "rowMajor"
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x9

    if-ne v0, v8, :cond_1

    const/4 v0, 0x7

    const/4 v8, 0x3

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    aput p2, p1, v7

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    aput p2, p1, v6

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aput p2, p1, v5

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aput p2, p1, v8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aput p2, p1, v4

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aput p2, p1, v3

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aput p2, p1, v2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aput p2, p1, v0

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    aput p2, p1, v1

    goto/16 :goto_0

    :cond_0
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    aput p2, p1, v7

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aput p2, p1, v6

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aput p2, p1, v5

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    aput p2, p1, v8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aput p2, p1, v4

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aput p2, p1, v3

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aput p2, p1, v2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aput p2, p1, v0

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    aput p2, p1, v1

    goto :goto_0

    :cond_1
    array-length v0, p1

    const/16 v9, 0x10

    if-ne v0, v9, :cond_3

    const/16 v0, 0xa

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    aput p2, p1, v7

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    aput p2, p1, v6

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aput p2, p1, v5

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aput p2, p1, v4

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aput p2, p1, v3

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aput p2, p1, v2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aput p2, p1, v1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aput p2, p1, v8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    aput p2, p1, v0

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    aput p2, p1, v7

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    aput p2, p1, v6

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    aput p2, p1, v5

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    aput p2, p1, v4

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    aput p2, p1, v3

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    aput p2, p1, v2

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    aput p2, p1, v1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    aput p2, p1, v8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    aput p2, p1, v0

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Array size must be 9 or 16 in Matrix3f.get()."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->s(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public s(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
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

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

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
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    :goto_0
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix3f\n[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->v(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public v(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
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

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid row index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    :goto_0
    return-object p2
.end method

.method public w()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->x(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object v0

    return-object v0
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/Vector/e;)Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "store"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    const/high16 v2, 0x34000000

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->X()Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float v3, v1, v2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iput v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float v6, v3, v5

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    iput v6, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float v7, v6, v4

    mul-float/2addr v3, v1

    sub-float/2addr v7, v3

    iput v7, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float v3, v4, v1

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v7, v2

    sub-float/2addr v3, v7

    iput v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v2, v3

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float v8, v7, v1

    sub-float/2addr v2, v8

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float/2addr v7, v2

    mul-float/2addr v4, v3

    sub-float/2addr v7, v4

    iput v7, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    mul-float v4, v2, v5

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    mul-float/2addr v1, v7

    sub-float/2addr v4, v1

    iput v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float/2addr v1, v6

    mul-float/2addr v5, v3

    sub-float/2addr v1, v5

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float/2addr v3, v7

    mul-float/2addr v6, v2

    sub-float/2addr v3, v6

    iput v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->F(F)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    return-object p1
.end method

.method public y()Lcom/itsmagic/engine/Engines/Engine/Vector/e;
    .locals 15

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->X()Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    mul-float v3, v1, v2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    mul-float v7, v6, v5

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    mul-float v9, v8, v2

    sub-float/2addr v7, v9

    mul-float v9, v8, v4

    mul-float v10, v6, v1

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    mul-float v11, v4, v10

    iget v12, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    mul-float v13, v12, v2

    sub-float/2addr v11, v13

    iget v13, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    mul-float/2addr v2, v13

    mul-float v14, v6, v10

    sub-float/2addr v2, v14

    mul-float/2addr v6, v12

    mul-float/2addr v4, v13

    sub-float/2addr v6, v4

    mul-float v4, v12, v5

    mul-float v14, v1, v10

    sub-float/2addr v4, v14

    mul-float/2addr v10, v8

    mul-float/2addr v5, v13

    sub-float/2addr v10, v5

    mul-float/2addr v13, v1

    mul-float/2addr v8, v12

    sub-float/2addr v13, v8

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    iput v9, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    iput v11, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    iput v10, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    iput v13, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->F(F)Lcom/itsmagic/engine/Engines/Engine/Vector/e;

    return-object p0
.end method

.method public z()Z
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->c:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->g:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->i:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->j:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->k:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/e;->l:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
