.class public final Ln9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln9/a$c;,
        Ln9/a$b;
    }
.end annotation


# static fields
.field public static final t:I = 0x200

.field public static final u:F = 1.08f

.field public static final v:F = 0.05f

.field public static final w:F = 0.2f

.field public static x:Z = false


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln9/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ln9/a$c;

.field public c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public volatile i:F

.field public volatile j:F

.field public volatile k:F

.field public volatile l:F

.field public final m:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final n:[F

.field public final o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final p:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Ln9/a;->x:Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Ln9/a;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln9/a;->d:Z

    const/16 v0, 0x200

    iput v0, p0, Ln9/a;->h:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Ln9/a;->i:F

    iput v0, p0, Ln9/a;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ln9/a;->k:F

    const/4 v0, 0x0

    iput v0, p0, Ln9/a;->l:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Ln9/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Ln9/a;->n:[F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Ln9/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Ln9/a;->p:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Ln9/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Ln9/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    iget-object v0, p0, Ln9/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->m(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Ln9/a;->p:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->o(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v0, p0, Ln9/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p0, Ln9/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Ln9/a;->p:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Y0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    iget-object p1, p0, Ln9/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Ln9/a;->n:[F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    return-void
.end method

.method public final b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Ln9/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln9/a$b;

    if-eqz v1, :cond_3

    iget-object v1, v1, Ln9/a$b;->b:LRb/c;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    iget-object v2, p0, Ln9/a;->n:[F

    invoke-virtual {p1, v1, v2}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln9/a$b;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ln9/a;->b:Ln9/a$c;

    if-eqz v2, :cond_1

    iget-object v2, v2, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-eqz v2, :cond_1

    iget-object v3, v1, Ln9/a$b;->b:LRb/c;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v2, v1, Ln9/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, v1, Ln9/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Ln9/a;->c()V

    return-void
.end method

.method public final e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    iget-object v0, p0, Ln9/a;->p:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->o(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->j()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x1f

    iget-object p1, p0, Ln9/a;->p:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->D()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x1f

    iget-object p1, p0, Ln9/a;->p:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x1f

    iget-object p1, p0, Ln9/a;->p:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)Z
    .locals 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    iget-object v2, v0, Ln9/a;->b:Ln9/a$c;

    if-eqz v2, :cond_0

    iget-object v2, v0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_1
    invoke-virtual/range {p0 .. p1}, Ln9/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    move v4, v2

    move v5, v3

    move v6, v5

    move v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, v4

    :goto_0
    iget-object v10, v0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_9

    iget-object v10, v0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln9/a$b;

    if-eqz v10, :cond_8

    iget-object v10, v10, Ln9/a$b;->a:Lm9/c;

    if-nez v10, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v10}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v10

    if-nez v10, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v10

    if-nez v10, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result v12

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v13

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result v14

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result v15

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result v16

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result v10

    const/4 v11, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v11, v1, :cond_8

    iget-object v1, v0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    and-int/lit8 v9, v11, 0x1

    if-nez v9, :cond_5

    move v9, v12

    goto :goto_2

    :cond_5
    move v9, v15

    :goto_2
    and-int/lit8 v18, v11, 0x2

    if-nez v18, :cond_6

    move/from16 v18, v10

    move v10, v13

    goto :goto_3

    :cond_6
    move/from16 v18, v10

    move/from16 v10, v16

    :goto_3
    and-int/lit8 v19, v11, 0x4

    if-nez v19, :cond_7

    move/from16 v19, v12

    move v12, v14

    goto :goto_4

    :cond_7
    move/from16 v19, v12

    move/from16 v12, v18

    :goto_4
    invoke-virtual {v1, v9, v10, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, Ln9/a;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v9, v0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v9, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v1, v0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v1, v0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v1, v0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v1, v0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v1, v0, Ln9/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v18

    move/from16 v12, v19

    const/4 v9, 0x1

    goto :goto_1

    :cond_8
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v9, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    add-float v1, v5, v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v1, v8

    add-float v9, v6, v3

    mul-float/2addr v9, v8

    add-float v10, v7, v4

    mul-float/2addr v10, v8

    sub-float/2addr v2, v5

    mul-float/2addr v2, v8

    const v5, 0x3f8a3d71    # 1.08f

    mul-float/2addr v2, v5

    const v11, 0x3d4ccccd    # 0.05f

    invoke-static {v11, v2}, LNc/b;->M(FF)F

    move-result v2

    sub-float/2addr v3, v6

    mul-float/2addr v3, v8

    mul-float/2addr v3, v5

    invoke-static {v11, v3}, LNc/b;->M(FF)F

    move-result v3

    sub-float/2addr v4, v7

    mul-float/2addr v4, v8

    invoke-static {v11, v4}, LNc/b;->M(FF)F

    move-result v4

    iput v2, v0, Ln9/a;->i:F

    iput v3, v0, Ln9/a;->j:F

    const v5, 0x38d1b717    # 1.0E-4f

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result v6

    invoke-static {v5, v6}, LNc/b;->M(FF)F

    move-result v5

    iput v5, v0, Ln9/a;->k:F

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->j()F

    move-result v5

    sub-float v5, v9, v5

    iput v5, v0, Ln9/a;->l:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v4

    const v6, 0x3e4ccccd    # 0.2f

    add-float/2addr v5, v6

    invoke-static {v6, v5}, LNc/b;->M(FF)F

    move-result v5

    const v23, 0x3c23d70a    # 0.01f

    add-float v7, v5, v23

    add-float/2addr v7, v4

    add-float v24, v7, v6

    const/16 v4, 0x20f

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    invoke-static {v10}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x1f

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int/2addr v4, v6

    iget v6, v0, Ln9/a;->g:I

    if-ne v4, v6, :cond_b

    const/4 v6, 0x0

    return v6

    :cond_b
    iput v4, v0, Ln9/a;->g:I

    iget-object v4, v0, Ln9/a;->b:Ln9/a$c;

    iget-object v4, v4, Ln9/a$c;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    neg-float v6, v2

    neg-float v7, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v7

    invoke-virtual/range {v18 .. v24}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->l(FFFFFF)V

    iget-object v2, v0, Ln9/a;->b:Ln9/a$c;

    iget-object v2, v2, Ln9/a$c;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    move-object/from16 v17, v2

    float-to-double v1, v1

    move-wide/from16 v18, v1

    move-wide/from16 v24, v1

    float-to-double v1, v9

    move-wide/from16 v20, v1

    move-wide/from16 v26, v1

    add-float/2addr v5, v10

    float-to-double v1, v5

    move-wide/from16 v22, v1

    float-to-double v1, v10

    move-wide/from16 v28, v1

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    const-wide/16 v34, 0x0

    const-wide/16 v30, 0x0

    invoke-virtual/range {v17 .. v35}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->i(DDDDDDDDD)V

    const/4 v1, 0x1

    :goto_6
    return v1
.end method

.method public final g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "baseObjectRadius"
        }
    .end annotation

    sget-boolean v0, Ln9/a;->x:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Ln9/a;->b:Ln9/a$c;

    if-eqz v0, :cond_4

    iget-object v0, v0, Ln9/a$c;->d:LTb/a;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-static {v0}, Lub/p;->L(Lub/p;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Ln9/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const p1, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, LNc/b;->M(FF)F

    move-result p1

    iget-object v2, p0, Ln9/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr p2, v2

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2, p2}, LNc/b;->M(FF)F

    move-result p2

    iget-object v2, p0, Ln9/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr p1, p2

    invoke-virtual {v2, p1, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Ln9/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    iget-object p2, p0, Ln9/a;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p2

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-static {p1, p2, v0}, LJAVARuntime/Gizmo;->drawQuad(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Texture;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 4

    invoke-virtual {p0}, Ln9/a;->c()V

    iget-object v0, p0, Ln9/a;->b:Ln9/a$c;

    const/4 v1, 0x0

    iput-object v1, p0, Ln9/a;->b:Ln9/a$c;

    iput-object v1, p0, Ln9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    const/4 v2, 0x0

    iput v2, p0, Ln9/a;->g:I

    iput-boolean v2, p0, Ln9/a;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    if-eqz v2, :cond_2

    iget-object v3, v0, Ln9/a$c;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v2, v0, Ln9/a$c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v3, v0, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    iput-object v1, v0, Ln9/a$c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    iget-object v2, v0, Ln9/a$c;->d:LTb/a;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, LTb/a;->r:Z

    if-nez v3, :cond_3

    :try_start_2
    invoke-virtual {v2}, LTb/a;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_3
    iget-object v2, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    return-void
.end method

.method public final i()V
    .locals 14

    iget-object v0, p0, Ln9/a;->b:Ln9/a$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ln9/a$c;->d:LTb/a;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, LTb/a;->r:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, LTb/a;->i()I

    move-result v0

    iget v1, p0, Ln9/a;->h:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln9/a;->b:Ln9/a$c;

    iget-object v0, v0, Ln9/a$c;->d:LTb/a;

    invoke-virtual {v0}, LTb/a;->h()I

    move-result v0

    iget v1, p0, Ln9/a;->h:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ln9/a;->h()V

    new-instance v0, Ln9/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln9/a$c;-><init>(Ln9/a$a;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object v2, v0, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object v2, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v3, v0, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v2, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    iget-object v2, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    sget-object v4, Lcom/google/android/filament/View$d;->TRANSLUCENT:Lcom/google/android/filament/View$d;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->w(Lcom/google/android/filament/View$d;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v2, v0, Ln9/a$c;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    iget-object v4, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object v2, v0, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v4, v0, Ln9/a$c;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iget-object v2, v0, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    new-instance v4, Lcom/google/android/filament/IndirectLight$a;

    invoke-direct {v4}, Lcom/google/android/filament/IndirectLight$a;-><init>()V

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Lcom/google/android/filament/IndirectLight$a;->c(I[F)Lcom/google/android/filament/IndirectLight$a;

    move-result-object v4

    const v6, 0x476a6000    # 60000.0f

    invoke-virtual {v4, v6}, Lcom/google/android/filament/IndirectLight$a;->b(F)Lcom/google/android/filament/IndirectLight$a;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;-><init>(Lcom/google/android/filament/IndirectLight$a;Lwb/b;)V

    iput-object v2, v0, Ln9/a$c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    iget-object v1, v0, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    new-instance v2, Lcom/google/android/filament/LightManager$a;

    sget-object v4, Lcom/google/android/filament/LightManager$d;->SUN:Lcom/google/android/filament/LightManager$d;

    invoke-direct {v2, v4}, Lcom/google/android/filament/LightManager$a;-><init>(Lcom/google/android/filament/LightManager$d;)V

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v6}, Lcom/google/android/filament/LightManager$a;->e(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object v2

    const v4, 0x47ea6000    # 120000.0f

    invoke-virtual {v2, v4}, Lcom/google/android/filament/LightManager$a;->g(F)Lcom/google/android/filament/LightManager$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/filament/LightManager$a;->c(Z)Lcom/google/android/filament/LightManager$a;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5}, Lcom/google/android/filament/LightManager$a;->d(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;-><init>(Lcom/google/android/filament/LightManager$a;)V

    iput-object v1, v0, Ln9/a$c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    iget-object v2, v0, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    new-instance v1, LTb/a;

    iget v10, p0, Ln9/a;->h:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v11, 0x64

    move-object v8, v1

    move v9, v10

    invoke-direct/range {v8 .. v13}, LTb/a;-><init>(IIIIZ)V

    iput-object v1, v0, Ln9/a$c;->d:LTb/a;

    iget-object v2, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v1}, LTb/a;->i()I

    move-result v1

    iget-object v4, v0, Ln9/a$c;->d:LTb/a;

    invoke-virtual {v4}, LTb/a;->h()I

    move-result v4

    invoke-virtual {v2, v3, v3, v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->D(IIII)V

    iput-object v0, p0, Ln9/a;->b:Ln9/a$c;

    iput-boolean v7, p0, Ln9/a;->d:Z

    iput-boolean v7, p0, Ln9/a;->e:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public j()F
    .locals 1

    iget v0, p0, Ln9/a;->j:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Ln9/a;->i:F

    return v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Ln9/a;->l:F

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Ln9/a;->k:F

    return v0
.end method

.method public n()Lub/p;
    .locals 1

    iget-object v0, p0, Ln9/a;->b:Ln9/a$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ln9/a$c;->d:LTb/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Ln9/a;->h:I

    return v0
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln9/a;->d:Z

    const/4 v1, 0x0

    iput v1, p0, Ln9/a;->f:I

    iput v1, p0, Ln9/a;->g:I

    iput-boolean v0, p0, Ln9/a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ln9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-void
.end method

.method public q()V
    .locals 0

    invoke-virtual {p0}, Ln9/a;->h()V

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln9/a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ln9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    return-void
.end method

.method public s()V
    .locals 0

    invoke-virtual {p0}, Ln9/a;->v()V

    return-void
.end method

.method public t(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZZLjava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;F)V
    .locals 6
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
            "gameObject",
            "buildingBase",
            "baseBuilded",
            "hasImpostorEligibleMaterial",
            "materialObjectList",
            "sourceObject",
            "baseObjectRadius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "ZZZ",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            "F)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Ln9/a;->y(ZZZLjava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    invoke-virtual {p0, p1, p7}, Ln9/a;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;F)V

    return-void
.end method

.method public final u(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "materialObjectList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ln9/a;->c()V

    iget-object v1, v0, Ln9/a;->b:Ln9/a$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p1}, Ln9/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm9/c;

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v6}, Lm9/c;->h()Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v6}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    new-instance v8, Ln9/a$b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ln9/a$b;-><init>(Ln9/a$a;)V

    iput-object v6, v8, Ln9/a$b;->a:Lm9/c;

    new-instance v9, LRb/c;

    invoke-direct {v9}, LRb/c;-><init>()V

    iput-object v9, v8, Ln9/a$b;->b:LRb/c;

    new-instance v9, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v10, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v10, v5}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v10, v2}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v11

    invoke-virtual {v6}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v12

    iget-object v13, v8, Ln9/a$b;->b:LRb/c;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v14

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v15

    sget-object v16, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v17

    move-object v10, v9

    invoke-direct/range {v10 .. v17}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v9, v8, Ln9/a$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v5, v8, Ln9/a$b;->b:LRb/c;

    invoke-virtual {v5}, LRb/c;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v5, v8, Ln9/a$b;->b:LRb/c;

    invoke-virtual {v5}, LRb/c;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v5

    iget-object v6, v0, Ln9/a;->n:[F

    invoke-virtual {v1, v5, v6}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iget-object v5, v0, Ln9/a;->b:Ln9/a$c;

    iget-object v5, v5, Ln9/a$c;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v6, v8, Ln9/a$b;->b:LRb/c;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iget-object v5, v0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iput-boolean v1, v0, Ln9/a;->d:Z

    iput-boolean v5, v0, Ln9/a;->e:Z

    return-void

    :cond_7
    :goto_2
    iput-boolean v2, v0, Ln9/a;->d:Z

    return-void
.end method

.method public final v()V
    .locals 19

    move-object/from16 v1, p0

    iget-boolean v0, v1, Ln9/a;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Ln9/a;->b:Ln9/a$c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ln9/a$c;->d:LTb/a;

    if-eqz v0, :cond_2

    iget-object v0, v1, Ln9/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, v1, Ln9/a;->b:Ln9/a$c;

    iget-object v2, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v0, v0, Ln9/a$c;->d:LTb/a;

    invoke-virtual {v0}, LTb/a;->i()I

    move-result v0

    iget-object v3, v1, Ln9/a;->b:Ln9/a$c;

    iget-object v3, v3, Ln9/a$c;->d:LTb/a;

    invoke-virtual {v3}, LTb/a;->h()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->D(IIII)V

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Renderer;->e()Lcom/google/android/filament/Renderer$a;

    move-result-object v2

    iget-boolean v3, v2, Lcom/google/android/filament/Renderer$a;->b:Z

    iget-boolean v5, v2, Lcom/google/android/filament/Renderer$a;->c:Z

    iget-object v0, v2, Lcom/google/android/filament/Renderer$a;->a:[D

    aget-wide v6, v0, v4

    const/4 v8, 0x1

    aget-wide v9, v0, v8

    const/4 v11, 0x2

    aget-wide v12, v0, v11

    const/4 v14, 0x3

    aget-wide v15, v0, v14

    iput-boolean v8, v2, Lcom/google/android/filament/Renderer$a;->b:Z

    iput-boolean v8, v2, Lcom/google/android/filament/Renderer$a;->c:Z

    const-wide/16 v17, 0x0

    aput-wide v17, v0, v4

    aput-wide v17, v0, v8

    aput-wide v17, v0, v11

    aput-wide v17, v0, v14

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Renderer;->r(Lcom/google/android/filament/Renderer$a;)V

    :try_start_0
    iget-object v0, v1, Ln9/a;->b:Ln9/a$c;

    iget-object v14, v0, Ln9/a$c;->d:LTb/a;

    iget-object v0, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v14, v0}, LTb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    iget-object v0, v1, Ln9/a;->b:Ln9/a$c;

    iget-object v0, v0, Ln9/a$c;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, LQb/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Ln9/a;->b:Ln9/a$c;

    iget-object v0, v0, Ln9/a$c;->d:LTb/a;

    invoke-virtual {v0}, LTb/a;->z()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iput-boolean v3, v2, Lcom/google/android/filament/Renderer$a;->b:Z

    iput-boolean v5, v2, Lcom/google/android/filament/Renderer$a;->c:Z

    iget-object v0, v2, Lcom/google/android/filament/Renderer$a;->a:[D

    aput-wide v6, v0, v4

    aput-wide v9, v0, v8

    aput-wide v12, v0, v11

    const/4 v3, 0x3

    aput-wide v15, v0, v3

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Renderer;->r(Lcom/google/android/filament/Renderer$a;)V

    iput-boolean v4, v1, Ln9/a;->e:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v14, v1, Ln9/a;->b:Ln9/a$c;

    iget-object v14, v14, Ln9/a$c;->d:LTb/a;

    invoke-virtual {v14}, LTb/a;->z()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    iput-boolean v3, v2, Lcom/google/android/filament/Renderer$a;->b:Z

    iput-boolean v5, v2, Lcom/google/android/filament/Renderer$a;->c:Z

    iget-object v3, v2, Lcom/google/android/filament/Renderer$a;->a:[D

    aput-wide v6, v3, v4

    aput-wide v9, v3, v8

    aput-wide v12, v3, v11

    const/4 v4, 0x3

    aput-wide v15, v3, v4

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/filament/Renderer;->r(Lcom/google/android/filament/Renderer$a;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Ln9/a;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ln9/a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public x(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionID"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    aget p1, v0, p1

    iget v0, p0, Ln9/a;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ln9/a;->h:I

    invoke-virtual {p0}, Ln9/a;->h()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln9/a;->d:Z

    iput-boolean p1, p0, Ln9/a;->e:Z

    return-void
.end method

.method public final y(ZZZLjava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
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
            "buildingBase",
            "baseBuilded",
            "hasImpostorEligibleMaterial",
            "materialObjectList",
            "sourceObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_9

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p5, :cond_2

    iput-object v0, p0, Ln9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {p0}, Ln9/a;->c()V

    iput-boolean v1, p0, Ln9/a;->e:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Ln9/a;->i()V

    iget-object p1, p0, Ln9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    const/4 p2, 0x1

    if-eq p1, p5, :cond_3

    iput-object p5, p0, Ln9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-boolean p2, p0, Ln9/a;->d:Z

    iput v1, p0, Ln9/a;->f:I

    :cond_3
    iget-boolean p1, p0, Ln9/a;->d:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, p5, p4}, Ln9/a;->u(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Ljava/util/List;)V

    :cond_4
    iget-object p1, p0, Ln9/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p5}, Ln9/a;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)I

    move-result p1

    iget p3, p0, Ln9/a;->f:I

    if-eq p1, p3, :cond_6

    iput p1, p0, Ln9/a;->f:I

    invoke-virtual {p0, p5}, Ln9/a;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    iput-boolean p2, p0, Ln9/a;->e:Z

    :cond_6
    invoke-virtual {p0, p5}, Ln9/a;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean p2, p0, Ln9/a;->e:Z

    :cond_7
    return-void

    :cond_8
    :goto_0
    iput-object v0, p0, Ln9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {p0}, Ln9/a;->c()V

    iput-boolean v1, p0, Ln9/a;->d:Z

    iput-boolean v1, p0, Ln9/a;->e:Z

    return-void

    :cond_9
    :goto_1
    iput-object v0, p0, Ln9/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {p0}, Ln9/a;->c()V

    iput-boolean v1, p0, Ln9/a;->e:Z

    return-void
.end method
