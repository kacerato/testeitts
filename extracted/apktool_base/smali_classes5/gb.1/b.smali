.class public Lgb/b;
.super LK8/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/b$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lgb/b$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgb/a;

    invoke-direct {v0}, Lgb/a;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lgb/b;->e:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "min",
            "max",
            "center"
        }
    .end annotation

    invoke-direct {p0}, LK8/f;-><init>()V

    iput-object p1, p0, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p2, p0, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p3, p0, Lgb/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic d()Lgb/b$b;
    .locals 1

    invoke-static {}, Lgb/b;->k()Lgb/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lgb/b;ZZ)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "globalMatrix",
            "bounds",
            "takePosition",
            "takeRotation"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lgb/b;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgb/b$b;

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-static {v2}, Lgb/b$b;->d(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {v2}, Lgb/b$b;->e(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    iget-object v6, v1, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    iget-object v7, v1, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    iget-object v8, v1, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    iget-object v9, v1, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    iget-object v10, v1, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    iget-object v11, v1, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    if-eqz p3, :cond_2

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    :cond_3
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v12, 0x0

    move v13, v4

    move v14, v13

    move v15, v14

    move/from16 v16, v6

    move/from16 v17, v7

    move v6, v12

    move v4, v0

    move v12, v4

    :goto_3
    const/16 v7, 0x8

    if-ge v6, v7, :cond_f

    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_4

    move/from16 v7, v16

    goto :goto_4

    :cond_4
    move v7, v9

    :goto_4
    and-int/lit8 v18, v6, 0x2

    if-nez v18, :cond_5

    move/from16 v18, v8

    move/from16 v8, v17

    goto :goto_5

    :cond_5
    move/from16 v18, v8

    move v8, v10

    :goto_5
    and-int/lit8 v19, v6, 0x4

    if-nez v19, :cond_6

    move/from16 v19, v9

    move/from16 v9, v18

    goto :goto_6

    :cond_6
    move/from16 v19, v9

    move v9, v11

    :goto_6
    move/from16 v20, v10

    if-eqz p3, :cond_7

    invoke-static {v2}, Lgb/b$b;->d(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v10

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->n0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v2}, Lgb/b$b;->d(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    invoke-static {v2}, Lgb/b$b;->d(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    invoke-static {v2}, Lgb/b$b;->d(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v10

    add-float/2addr v7, v10

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    add-float/2addr v8, v10

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v10

    add-float/2addr v9, v10

    :cond_8
    cmpg-float v10, v7, v13

    if-gez v10, :cond_9

    move v13, v7

    :cond_9
    cmpg-float v10, v8, v14

    if-gez v10, :cond_a

    move v14, v8

    :cond_a
    cmpg-float v10, v9, v15

    if-gez v10, :cond_b

    move v15, v9

    :cond_b
    cmpl-float v10, v7, v0

    if-lez v10, :cond_c

    move v0, v7

    :cond_c
    cmpl-float v7, v8, v4

    if-lez v7, :cond_d

    move v4, v8

    :cond_d
    cmpl-float v7, v9, v12

    if-lez v7, :cond_e

    move v12, v9

    :cond_e
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    goto :goto_3

    :cond_f
    iget-object v2, v1, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v13, v14, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, v1, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v0, v4, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v1, Lgb/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-float/2addr v13, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v13, v0

    add-float/2addr v14, v4

    mul-float/2addr v14, v0

    add-float/2addr v15, v12

    mul-float/2addr v15, v0

    invoke-virtual {v1, v13, v14, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "toLocalMat4",
            "tmp"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    invoke-static {p0, v1}, Lib/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->hasRenderBounding()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getRenderCenter()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getRenderBoundingBox()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v4

    invoke-static {v0, v4}, Lgb/b;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lgb/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v1

    invoke-static {v0, v1}, Lgb/b;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZ)Lgb/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "takePosition",
            "takeRotation"
        }
    .end annotation

    sget-object v0, Lgb/b;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb/b$b;

    invoke-static {v0}, Lgb/b$b;->a(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    invoke-static {p0, v0}, Lib/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-static {p0, v0}, Lgb/b;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lgb/b;

    move-result-object p0

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {v0, p0, p1, p2}, Lgb/b;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lgb/b;ZZ)V

    :cond_1
    return-object p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lgb/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgb/b;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lgb/b;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lgb/b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "precomputedGlobalMatrix"
        }
    .end annotation

    sget-object v0, Lgb/b;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb/b$b;

    invoke-static {v0}, Lgb/b$b;->b(Lgb/b$b;)[F

    move-result-object v1

    invoke-static {v0}, Lgb/b$b;->c(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v2

    if-nez p1, :cond_0

    invoke-static {v0}, Lgb/b$b;->a(Lgb/b$b;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    invoke-static {p0, p1}, Lib/g;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    :cond_0
    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-static {p0, v2, v1}, Lgb/b;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/f;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    :cond_1
    new-instance p1, Lgb/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->o()F

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->p()F

    move-result v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->q()F

    move-result p0

    invoke-direct {v2, v3, v4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {p1, v0, v1, v2}, Lgb/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-object p1
.end method

.method public static synthetic k()Lgb/b$b;
    .locals 2

    new-instance v0, Lgb/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgb/b$b;-><init>(Lgb/b$a;)V

    return-object v0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .locals 3
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

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->U(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->W(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->Y(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->T(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->V(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->X(F)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result p0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->B()F

    move-result p1

    add-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->M(F)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result p0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->C()F

    move-result v1

    add-float/2addr p0, v1

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->N(F)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result p0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->D()F

    move-result v1

    add-float/2addr p0, v1

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->O(F)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->w()F

    move-result p0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->o()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x()F

    move-result p1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->p()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y()F

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->q()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr v1, v1

    add-float/2addr p0, v1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->setRadius(F)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameObjectBounds{min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgb/b;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
