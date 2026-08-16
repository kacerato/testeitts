.class public LV8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV8/a$a;
    }
.end annotation


# static fields
.field public static final A:I = 0x6

.field public static final B:I = 0x7

.field public static final u:I = 0x0

.field public static final v:I = 0x1

.field public static final w:I = 0x2

.field public static final x:I = 0x3

.field public static final y:I = 0x4

.field public static final z:I = 0x5


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final b:Lvc/q;

.field public final c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final e:[F

.field public final f:LV8/a$a;

.field public final g:LJAVARuntime/Color;

.field public final h:Z

.field public final i:Z

.field public final j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final o:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public p:LJAVARuntime/GizmoObject;

.field public final q:[F

.field public final r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, v0}, LV8/a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wireframe",
            "drawInFront"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v0, p0, LV8/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/16 v1, 0x8

    .line 4
    invoke-static {v1}, Luc/a;->w(I)Lvc/q;

    move-result-object v1

    iput-object v1, p0, LV8/a;->b:Lvc/q;

    const/16 v2, 0x18

    .line 5
    invoke-static {v2}, Luc/a;->o(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v2

    iput-object v2, p0, LV8/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/16 v3, 0x24

    .line 6
    invoke-static {v3}, Luc/a;->o(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    iput-object v3, p0, LV8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/16 v4, 0x10

    .line 7
    new-array v5, v4, [F

    iput-object v5, p0, LV8/a;->e:[F

    .line 8
    new-instance v5, LV8/a$a;

    invoke-direct {v5}, LV8/a$a;-><init>()V

    iput-object v5, p0, LV8/a;->f:LV8/a$a;

    .line 9
    new-instance v5, LJAVARuntime/Color;

    const/16 v6, 0x6e

    const/16 v7, 0x54

    const/16 v8, 0xff

    invoke-direct {v5, v8, v6, v7}, LJAVARuntime/Color;-><init>(III)V

    iput-object v5, p0, LV8/a;->g:LJAVARuntime/Color;

    .line 10
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v5, p0, LV8/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 11
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v5, p0, LV8/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 12
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v5, p0, LV8/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 13
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v5, p0, LV8/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 14
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v5, p0, LV8/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 15
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v5, p0, LV8/a;->o:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 16
    new-array v4, v4, [F

    iput-object v4, p0, LV8/a;->q:[F

    .line 17
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v4, p0, LV8/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 18
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v4, p0, LV8/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 19
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v4, p0, LV8/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 20
    iput-boolean p1, p0, LV8/a;->h:Z

    .line 21
    iput-boolean p2, p0, LV8/a;->i:Z

    .line 22
    invoke-virtual {p0}, LV8/a;->h()V

    .line 23
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r2(Lvc/q;)V

    .line 24
    invoke-virtual {p0}, LV8/a;->g()V

    .line 25
    invoke-virtual {p0}, LV8/a;->i()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 26
    :goto_0
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    .line 27
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-void
.end method


# virtual methods
.method public final a(FFF[F)[F
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orthoDiameter",
            "minimalDistance",
            "maxDistance",
            "frustumMatrix"
        }
    .end annotation

    neg-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, p1

    div-float v5, v2, v4

    div-float v6, v1, v4

    div-float v7, p1, v4

    const/4 v1, 0x0

    move-object v0, p4

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, p2

    move v7, p3

    :try_start_0
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p4
.end method

.method public final b(FFF[F)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fov",
            "minimalDistance",
            "maxDistance",
            "frustumMatrix"
        }
    .end annotation

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p4

    move v2, p1

    move v4, p2

    move v5, p3

    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p4
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result v1

    iget-object v2, p0, LV8/a;->f:LV8/a$a;

    invoke-virtual {v2, p1, v0, v1}, LV8/a$a;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getMinimalDistance()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderDistance()F

    move-result v1

    iget-object v2, p0, LV8/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, LV8/a;->e:[F

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->viewSpaceCoordToWorldNormal(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, LV8/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, p0, LV8/a;->e:[F

    invoke-virtual {p1, v5, v5, v3, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->viewSpaceCoordToWorldNormal(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    iget-object v6, p0, LV8/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, p0, LV8/a;->e:[F

    invoke-virtual {p1, v4, v4, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->viewSpaceCoordToWorldNormal(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    iget-object v7, p0, LV8/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, p0, LV8/a;->e:[F

    invoke-virtual {p1, v5, v4, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->viewSpaceCoordToWorldNormal(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    div-float v4, v5, v4

    mul-float/2addr v4, v0

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float/2addr v9, v4

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v7, v8, v9}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float/2addr v9, v4

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v7, v8, v9}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float/2addr v9, v4

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v7, v8, v9}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    mul-float/2addr v7, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    mul-float/2addr v8, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float/2addr v9, v4

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7, v8, v9}, Lvc/q;->A(IFFF)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    div-float/2addr v5, v0

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    mul-float/2addr v7, v1

    mul-float/2addr v7, v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v5

    const/4 v8, 0x4

    invoke-virtual {v0, v8, v4, v7, v2}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v5

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v2, v4, v3}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v5

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v2, v3, v4}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr p1, v1

    mul-float/2addr p1, v5

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2, v3, p1}, Lvc/q;->A(IFFF)V

    iget-object p1, p0, LV8/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_0
    return-void
.end method

.method public d(FFF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "diameter",
            "minimalDistance",
            "maxDistance"
        }
    .end annotation

    iget-object v0, p0, LV8/a;->f:LV8/a$a;

    invoke-virtual {v0, p1, p2, p3}, LV8/a$a;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LV8/a;->q:[F

    invoke-virtual {p0, p1, p2, p3, v0}, LV8/a;->a(FFF[F)[F

    move-result-object p1

    iget-object v4, p0, LV8/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LV8/a;->e:[F

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, LV8/a;->j(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v4, p0, LV8/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LV8/a;->e:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, LV8/a;->j(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    iget-object v4, p0, LV8/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LV8/a;->e:[F

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual/range {v1 .. v6}, LV8/a;->j(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    iget-object v4, p0, LV8/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LV8/a;->e:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, LV8/a;->j(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Lvc/q;->A(IFFF)V

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p2

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Lvc/q;->A(IFFF)V

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p2

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2, v3, v4}, Lvc/q;->A(IFFF)V

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p2

    const/4 p2, 0x3

    invoke-virtual {v1, p2, v2, v3, v4}, Lvc/q;->A(IFFF)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p3

    mul-float/2addr v3, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float/2addr v0, p3

    mul-float/2addr v0, p2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3, v0}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p3

    mul-float/2addr v1, p2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, p3

    mul-float/2addr v3, p2

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1, v2, v3}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p3

    mul-float/2addr v1, p2

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, p3

    mul-float/2addr v3, p2

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v2, v3}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p3

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr p1, p3

    mul-float/2addr p1, p2

    const/4 p2, 0x7

    invoke-virtual {v0, p2, v1, v2, p1}, Lvc/q;->A(IFFF)V

    iget-object p1, p0, LV8/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_0
    return-void
.end method

.method public e(FFF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fov",
            "minimalDistance",
            "maxDistance"
        }
    .end annotation

    iget-object v0, p0, LV8/a;->f:LV8/a$a;

    invoke-virtual {v0, p1, p2, p3}, LV8/a$a;->a(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LV8/a;->q:[F

    invoke-virtual {p0, p1, p2, p3, v0}, LV8/a;->b(FFF[F)[F

    move-result-object p1

    iget-object v4, p0, LV8/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LV8/a;->e:[F

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, LV8/a;->k(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v4, p0, LV8/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LV8/a;->e:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, LV8/a;->k(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    iget-object v4, p0, LV8/a;->l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LV8/a;->e:[F

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual/range {v1 .. v6}, LV8/a;->k(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    iget-object v4, p0, LV8/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, LV8/a;->e:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, LV8/a;->k(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p2

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Lvc/q;->A(IFFF)V

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p2

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Lvc/q;->A(IFFF)V

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p2

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2, v3, v4}, Lvc/q;->A(IFFF)V

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p2

    const/4 p2, 0x3

    invoke-virtual {v1, p2, v2, v3, v4}, Lvc/q;->A(IFFF)V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    div-float/2addr p2, v1

    iget-object v1, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p3

    mul-float/2addr v3, p2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float/2addr v0, p3

    mul-float/2addr v0, p2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3, v0}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p3

    mul-float/2addr v1, p2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, p3

    mul-float/2addr v3, p2

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1, v2, v3}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p3

    mul-float/2addr v1, p2

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, p3

    mul-float/2addr v3, p2

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1, v2, v3}, Lvc/q;->A(IFFF)V

    iget-object v0, p0, LV8/a;->b:Lvc/q;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p3

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float/2addr v2, p3

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr p1, p3

    mul-float/2addr p1, p2

    const/4 p2, 0x7

    invoke-virtual {v0, p2, v1, v2, p1}, Lvc/q;->A(IFFF)V

    iget-object p1, p0, LV8/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, LV8/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, LV8/a;->l(II)V

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, LV8/a;->l(II)V

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, LV8/a;->l(II)V

    invoke-virtual {p0, v3, v1}, LV8/a;->l(II)V

    const/4 v4, 0x4

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, LV8/a;->l(II)V

    const/4 v6, 0x7

    invoke-virtual {p0, v5, v6}, LV8/a;->l(II)V

    const/4 v7, 0x6

    invoke-virtual {p0, v6, v7}, LV8/a;->l(II)V

    invoke-virtual {p0, v7, v4}, LV8/a;->l(II)V

    invoke-virtual {p0, v1, v4}, LV8/a;->l(II)V

    invoke-virtual {p0, v0, v5}, LV8/a;->l(II)V

    invoke-virtual {p0, v3, v7}, LV8/a;->l(II)V

    invoke-virtual {p0, v2, v6}, LV8/a;->l(II)V

    iget-object v0, p0, LV8/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    return-void
.end method

.method public final h()V
    .locals 11

    iget-object v0, p0, LV8/a;->e:[F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public final i()V
    .locals 8

    iget-object v0, p0, LV8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, LV8/a;->m(III)V

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v0, v3}, LV8/a;->m(III)V

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    invoke-virtual {p0, v4, v5, v6}, LV8/a;->m(III)V

    const/4 v7, 0x7

    invoke-virtual {p0, v7, v5, v4}, LV8/a;->m(III)V

    invoke-virtual {p0, v4, v6, v1}, LV8/a;->m(III)V

    invoke-virtual {p0, v2, v4, v1}, LV8/a;->m(III)V

    invoke-virtual {p0, v0, v5, v7}, LV8/a;->m(III)V

    invoke-virtual {p0, v0, v7, v3}, LV8/a;->m(III)V

    invoke-virtual {p0, v1, v6, v5}, LV8/a;->m(III)V

    invoke-virtual {p0, v1, v5, v0}, LV8/a;->m(III)V

    invoke-virtual {p0, v7, v4, v2}, LV8/a;->m(III)V

    invoke-virtual {p0, v3, v7, v2}, LV8/a;->m(III)V

    iget-object v0, p0, LV8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    return-void
.end method

.method public j(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "locX",
            "locY",
            "out",
            "cameraMatrix",
            "frustumMatrix"
        }
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p2, v0

    iget-object v1, p0, LV8/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    iget-object p4, p0, LV8/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    iget-object p4, p0, LV8/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p5, p0, LV8/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p0, LV8/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p4, p5, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p4, p0, LV8/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object p5, p0, LV8/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p5, v1, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p3
.end method

.method public k(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "locX",
            "locY",
            "out",
            "cameraMatrix",
            "frustumMatrix"
        }
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p2, v0

    iget-object v0, p0, LV8/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->v0([FZ)V

    iget-object p4, p0, LV8/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p4, p5, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->v0([FZ)V

    iget-object p4, p0, LV8/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p5, p0, LV8/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, LV8/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p4, p5, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->m0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p4, p0, LV8/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object p5, p0, LV8/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {p5, v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p3
.end method

.method public final l(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    iget-object v0, p0, LV8/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    iget-object p1, p0, LV8/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    return-void
.end method

.method public final m(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    iget-object v0, p0, LV8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    iget-object p1, p0, LV8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    iget-object p1, p0, LV8/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraPos"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LV8/a;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;F)V

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraPos",
            "yOffset"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_2

    new-instance v0, LJAVARuntime/GizmoObject;

    iget-object v1, p0, LV8/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    iget-boolean v1, p0, LV8/a;->h:Z

    if-eqz v1, :cond_1

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    goto :goto_0

    :cond_1
    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->Triangles:LJAVARuntime/GizmoElement$RenderMode;

    :goto_0
    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    iget-object v0, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    iget-object v0, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    iget-boolean v1, p0, LV8/a;->h:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setDualFaceRender(Z)V

    iget-object v0, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    iget-boolean v1, p0, LV8/a;->i:Z

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoElement;->setDrawInFront(Z)V

    iget-object v0, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    iget-object v1, p0, LV8/a;->g:LJAVARuntime/Color;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    :cond_2
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, LV8/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, LV8/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LV8/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, LV8/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p2

    iget-object v2, p0, LV8/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float/2addr v2, p2

    iget-object v3, p0, LV8/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_3
    iget-object p2, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    iget-object v0, p0, LV8/a;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object p2, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, LV8/a;->o:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object p1, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LV8/a;->g:LJAVARuntime/Color;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, LJAVARuntime/Color;->setInts(IIII)V

    iget-object p1, p0, LV8/a;->p:LJAVARuntime/GizmoObject;

    if-eqz p1, :cond_1

    iget-object v0, p0, LV8/a;->g:LJAVARuntime/Color;

    invoke-virtual {p1, v0}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    :cond_1
    return-void
.end method
