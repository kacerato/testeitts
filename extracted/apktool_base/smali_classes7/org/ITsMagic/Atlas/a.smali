.class public abstract Lorg/ITsMagic/Atlas/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ITsMagic/Atlas/a$d;,
        Lorg/ITsMagic/Atlas/a$c;,
        Lorg/ITsMagic/Atlas/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final m:F = 1.0E-5f

.field public static final n:F = 1.0E-8f

.field public static final o:F = 0.003921569f

.field public static final p:F = 0.01f


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;"
        }
    .end annotation
.end field

.field public final b:LBb/b;

.field public final c:Laa/c;

.field public final d:[F

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public h:Lorg/ITsMagic/Atlas/a$d;

.field public i:Lorg/ITsMagic/Atlas/a$c;

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/util/List;LBb/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "raycastVertices",
            "normalAtlasTexture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;",
            "LBb/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laa/c;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-direct {v0, v1, v2, v4}, Laa/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->c:Laa/c;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->d:[F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v0, Lorg/ITsMagic/Atlas/a$d;->NONE:Lorg/ITsMagic/Atlas/a$d;

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->h:Lorg/ITsMagic/Atlas/a$d;

    iput-object p1, p0, Lorg/ITsMagic/Atlas/a;->a:Ljava/util/List;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    return-void
.end method

.method public static synthetic a(Lorg/ITsMagic/Atlas/a;LBb/b;Ljava/util/List;)Lorg/ITsMagic/Atlas/d$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/ITsMagic/Atlas/a;->i(LBb/b;Ljava/util/List;)Lorg/ITsMagic/Atlas/d$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/ITsMagic/Atlas/a;LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/ITsMagic/Atlas/a;->z(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/ITsMagic/Atlas/a;LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lorg/ITsMagic/Atlas/a;->A(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static t(FFFFFF)F
    .locals 0
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
            "ax",
            "ay",
            "bx",
            "by",
            "px",
            "py"
        }
    .end annotation

    sub-float/2addr p4, p0

    sub-float/2addr p3, p1

    mul-float/2addr p4, p3

    sub-float/2addr p5, p1

    sub-float/2addr p2, p0

    mul-float/2addr p5, p2

    sub-float/2addr p4, p5

    return p4
.end method


# virtual methods
.method public final synthetic A(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual/range {p0 .. p8}, Lorg/ITsMagic/Atlas/a;->G(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final B()V
    .locals 5

    iget-object v0, p0, Lorg/ITsMagic/Atlas/a;->i:Lorg/ITsMagic/Atlas/a$c;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/ITsMagic/Atlas/a;->l:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget v2, p0, Lorg/ITsMagic/Atlas/a;->k:I

    invoke-static {v1, v2, v0}, LNc/b;->F(III)I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lorg/ITsMagic/Atlas/a;->l:I

    int-to-float v3, v2

    div-float/2addr v1, v3

    iget-object v3, p0, Lorg/ITsMagic/Atlas/a;->i:Lorg/ITsMagic/Atlas/a$c;

    const-string v4, ""

    invoke-interface {v3, v0, v2, v1, v4}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public C(LBb/b;Ljava/util/List;Ljava/util/List;ILorg/ITsMagic/Atlas/a$c;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights",
            "plannedRaycasts",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;I",
            "Lorg/ITsMagic/Atlas/a$c;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/ITsMagic/Atlas/a;->m(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v5, p0, Lorg/ITsMagic/Atlas/a;->a:Ljava/util/List;

    new-instance v6, LUg/c;

    invoke-direct {v6, p0}, LUg/c;-><init>(Lorg/ITsMagic/Atlas/a;)V

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->v()Lorg/ITsMagic/Atlas/d$c;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Lorg/ITsMagic/Atlas/d;->j(LBb/b;Ljava/util/List;Ljava/util/List;ILjava/util/List;Lorg/ITsMagic/Atlas/d$b;Lorg/ITsMagic/Atlas/d$c;Lorg/ITsMagic/Atlas/a$c;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    invoke-virtual {p0, p2}, Lorg/ITsMagic/Atlas/a;->I(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p5}, Lorg/ITsMagic/Atlas/a;->F(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$c;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {p0, p4, p5}, Lorg/ITsMagic/Atlas/a;->h(ILorg/ITsMagic/Atlas/a$c;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ITsMagic/Atlas/a;->E(LBb/b;Ljava/util/List;Ljava/util/List;IIZ)V

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->u()V

    :cond_3
    :goto_0
    return-void
.end method

.method public D(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/ITsMagic/Atlas/a$c;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/ITsMagic/Atlas/a;->l(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ITsMagic/Atlas/a;->C(LBb/b;Ljava/util/List;Ljava/util/List;ILorg/ITsMagic/Atlas/a$c;)V

    return-void
.end method

.method public final E(LBb/b;Ljava/util/List;Ljava/util/List;IIZ)V
    .locals 74
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
            "output",
            "bakeDataList",
            "lights",
            "startBakeIndex",
            "endBakeIndex",
            "applyOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;IIZ)V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p1 .. p1}, LBb/b;->p()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, LBb/b;->l()I

    move-result v16

    new-instance v12, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    move/from16 v10, p4

    move/from16 v9, p5

    :goto_0
    if-ge v10, v9, :cond_18

    move-object/from16 v8, p2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUg/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LUg/h;->a()LUg/g;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    move/from16 v26, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v12

    move-object v7, v14

    move/from16 v27, v15

    goto/16 :goto_11

    :cond_1
    invoke-virtual {v0}, LUg/h;->a()LUg/g;

    move-result-object v0

    invoke-virtual {v0}, LUg/g;->i()Lvc/q;

    move-result-object v7

    invoke-virtual {v0}, LUg/g;->c()Lvc/q;

    move-result-object v6

    invoke-virtual {v0}, LUg/g;->a()Lvc/p;

    move-result-object v5

    invoke-virtual {v0}, LUg/g;->e()Lvc/p;

    move-result-object v4

    invoke-virtual {v0}, LUg/g;->g()Lvc/n;

    move-result-object v3

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Lvc/n;->b()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Lvc/n;->h(I)I

    move-result v0

    invoke-virtual {v3, v1}, Lvc/n;->i(I)I

    move-result v2

    invoke-virtual {v3, v1}, Lvc/n;->j(I)I

    move-result v8

    if-ltz v0, :cond_3

    if-ltz v2, :cond_3

    if-gez v8, :cond_5

    :cond_3
    move/from16 v17, v1

    :cond_4
    :goto_3
    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    move-object/from16 v18, v6

    move-object/from16 v31, v7

    move/from16 v26, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v12

    move-object v7, v14

    move/from16 v27, v15

    const/16 v22, 0x0

    goto/16 :goto_10

    :cond_5
    move/from16 v17, v1

    invoke-virtual {v5}, Lvc/p;->b()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {v5}, Lvc/p;->b()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {v5}, Lvc/p;->b()I

    move-result v1

    if-lt v8, v1, :cond_6

    :goto_4
    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v1

    if-lt v8, v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v5, v0}, Lvc/p;->i(I)F

    move-result v1

    move-object/from16 v18, v3

    add-int/lit8 v3, v15, -0x1

    int-to-float v9, v3

    mul-float/2addr v1, v9

    invoke-virtual {v5, v0}, Lvc/p;->j(I)F

    move-result v19

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v19, v14, v19

    add-int/lit8 v14, v16, -0x1

    move/from16 v26, v10

    int-to-float v10, v14

    move/from16 v27, v15

    mul-float v15, v19, v10

    invoke-virtual {v5, v2}, Lvc/p;->i(I)F

    move-result v19

    move-object/from16 v34, v11

    mul-float v11, v19, v9

    invoke-virtual {v5, v2}, Lvc/p;->j(I)F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v20, v19

    move-object/from16 v35, v12

    mul-float v12, v19, v10

    invoke-virtual {v5, v8}, Lvc/p;->i(I)F

    move-result v19

    mul-float v9, v9, v19

    invoke-virtual {v5, v8}, Lvc/p;->j(I)F

    move-result v19

    sub-float v19, v20, v19

    mul-float v10, v10, v19

    move/from16 v19, v1

    move/from16 v20, v15

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-static/range {v19 .. v24}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x3727c5ac    # 1.0E-5f

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_8

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    move-object/from16 v31, v7

    move-object/from16 v24, v18

    move-object/from16 v30, v34

    move-object/from16 v20, v35

    const/16 v22, 0x0

    move-object/from16 v7, p1

    move-object/from16 v18, v6

    goto/16 :goto_10

    :cond_8
    move-object/from16 v37, v5

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move-object/from16 v38, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v3}, LNc/b;->F(III)I

    move-result v39

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-object/from16 p4, v6

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v3}, LNc/b;->F(III)I

    move-result v6

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v5, v3, v14}, LNc/b;->F(III)I

    move-result v3

    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move/from16 v41, v6

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v14}, LNc/b;->F(III)I

    move-result v14

    invoke-virtual {v7, v0}, Lvc/q;->m(I)F

    move-result v40

    invoke-virtual {v7, v0}, Lvc/q;->n(I)F

    move-result v42

    invoke-virtual {v7, v0}, Lvc/q;->o(I)F

    move-result v43

    invoke-virtual {v7, v2}, Lvc/q;->m(I)F

    move-result v44

    invoke-virtual {v7, v2}, Lvc/q;->n(I)F

    move-result v45

    invoke-virtual {v7, v2}, Lvc/q;->o(I)F

    move-result v46

    invoke-virtual {v7, v8}, Lvc/q;->m(I)F

    move-result v47

    invoke-virtual {v7, v8}, Lvc/q;->n(I)F

    move-result v48

    invoke-virtual {v7, v8}, Lvc/q;->o(I)F

    move-result v49

    sub-float v4, v45, v42

    sub-float v6, v49, v43

    mul-float v19, v4, v6

    sub-float v21, v46, v43

    sub-float v22, v48, v42

    mul-float v23, v21, v22

    sub-float v19, v19, v23

    sub-float v23, v47, v40

    mul-float v24, v21, v23

    sub-float v28, v44, v40

    mul-float v29, v28, v6

    sub-float v24, v24, v29

    mul-float v29, v28, v22

    mul-float v30, v4, v23

    sub-float v29, v29, v30

    mul-float v30, v19, v19

    mul-float v31, v24, v24

    add-float v30, v30, v31

    mul-float v31, v29, v29

    add-float v5, v30, v31

    const v51, 0x322bcc77    # 1.0E-8f

    cmpl-float v30, v5, v51

    const/16 v52, 0x0

    if-lez v30, :cond_9

    move/from16 v53, v9

    move/from16 v54, v10

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v5, v9

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v5, v9, v5

    mul-float v19, v19, v5

    mul-float v9, v24, v5

    mul-float v29, v29, v5

    move/from16 v10, v19

    move/from16 v5, v29

    goto :goto_5

    :cond_9
    move/from16 v53, v9

    move/from16 v54, v10

    move/from16 v5, v52

    move v10, v5

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_5
    move/from16 v19, v3

    if-eqz p4, :cond_a

    invoke-virtual/range {p4 .. p4}, Lvc/q;->d()I

    move-result v3

    if-ge v0, v3, :cond_a

    invoke-virtual/range {p4 .. p4}, Lvc/q;->d()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual/range {p4 .. p4}, Lvc/q;->d()I

    move-result v3

    if-ge v8, v3, :cond_a

    move-object/from16 v3, p4

    invoke-virtual {v3, v0}, Lvc/q;->m(I)F

    move-result v24

    invoke-virtual {v3, v0}, Lvc/q;->n(I)F

    move-result v29

    invoke-virtual {v3, v0}, Lvc/q;->o(I)F

    move-result v30

    invoke-virtual {v3, v2}, Lvc/q;->m(I)F

    move-result v31

    invoke-virtual {v3, v2}, Lvc/q;->n(I)F

    move-result v32

    invoke-virtual {v3, v2}, Lvc/q;->o(I)F

    move-result v33

    invoke-virtual {v3, v8}, Lvc/q;->m(I)F

    move-result v55

    invoke-virtual {v3, v8}, Lvc/q;->n(I)F

    move-result v56

    invoke-virtual {v3, v8}, Lvc/q;->o(I)F

    move-result v57

    move/from16 v58, v31

    move/from16 v59, v32

    move/from16 v60, v33

    move/from16 v61, v55

    move/from16 v62, v56

    move/from16 v63, v57

    move/from16 v55, v24

    move/from16 v56, v29

    move/from16 v57, v30

    goto :goto_6

    :cond_a
    move-object/from16 v3, p4

    move-object/from16 p4, v3

    move/from16 v57, v5

    move/from16 v60, v57

    move/from16 v63, v60

    move/from16 v56, v9

    move/from16 v59, v56

    move/from16 v62, v59

    move/from16 v55, v10

    move/from16 v58, v55

    move/from16 v61, v58

    :goto_6
    iget-object v3, v13, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    const/16 v64, 0x1

    if-eqz v3, :cond_b

    if-eqz v38, :cond_b

    invoke-virtual/range {v38 .. v38}, Lvc/p;->b()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-virtual/range {v38 .. v38}, Lvc/p;->b()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-virtual/range {v38 .. v38}, Lvc/p;->b()I

    move-result v3

    if-ge v8, v3, :cond_b

    move/from16 v3, v64

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    move-object/from16 v65, v7

    move-object/from16 v7, v38

    if-eqz v3, :cond_d

    invoke-virtual {v7, v0}, Lvc/p;->i(I)F

    move-result v24

    invoke-virtual {v7, v0}, Lvc/p;->j(I)F

    move-result v0

    invoke-virtual {v7, v2}, Lvc/p;->i(I)F

    move-result v29

    invoke-virtual {v7, v2}, Lvc/p;->j(I)F

    move-result v2

    invoke-virtual {v7, v8}, Lvc/p;->i(I)F

    move-result v30

    invoke-virtual {v7, v8}, Lvc/p;->j(I)F

    move-result v8

    sub-float v29, v29, v24

    sub-float/2addr v2, v0

    sub-float v30, v30, v24

    sub-float/2addr v8, v0

    mul-float v0, v29, v8

    mul-float v24, v2, v30

    sub-float v0, v0, v24

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v24

    cmpl-float v20, v24, v20

    if-lez v20, :cond_c

    const/high16 v20, 0x3f800000    # 1.0f

    div-float v0, v20, v0

    mul-float v20, v28, v8

    mul-float v24, v23, v2

    sub-float v20, v20, v24

    mul-float v20, v20, v0

    mul-float v24, v4, v8

    mul-float v31, v22, v2

    sub-float v24, v24, v31

    mul-float v24, v24, v0

    mul-float v8, v8, v21

    mul-float/2addr v2, v6

    sub-float/2addr v8, v2

    mul-float/2addr v8, v0

    mul-float v23, v23, v29

    mul-float v28, v28, v30

    sub-float v23, v23, v28

    mul-float v23, v23, v0

    mul-float v22, v22, v29

    mul-float v4, v4, v30

    sub-float v22, v22, v4

    mul-float v22, v22, v0

    mul-float v6, v6, v29

    mul-float v21, v21, v30

    sub-float v6, v6, v21

    mul-float/2addr v6, v0

    move/from16 v38, v3

    move/from16 v66, v6

    move/from16 v67, v8

    move/from16 v68, v20

    move/from16 v69, v22

    move/from16 v70, v23

    move/from16 v71, v24

    goto :goto_8

    :cond_c
    move/from16 v66, v52

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    const/16 v38, 0x0

    goto :goto_8

    :cond_d
    move/from16 v38, v3

    move/from16 v66, v52

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    move/from16 v70, v69

    move/from16 v71, v70

    :goto_8
    move/from16 v8, v19

    :goto_9
    if-gt v8, v14, :cond_17

    int-to-float v0, v8

    const/high16 v72, 0x3f000000    # 0.5f

    add-float v73, v0, v72

    move/from16 v4, v39

    move/from16 v6, v41

    :goto_a
    if-gt v4, v6, :cond_16

    int-to-float v0, v4

    add-float v23, v0, v72

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v30, v53

    move/from16 v31, v54

    move/from16 v32, v23

    move/from16 v33, v73

    invoke-static/range {v28 .. v33}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v0

    div-float v0, v0, v36

    move/from16 v19, v53

    move/from16 v20, v54

    move/from16 v21, v1

    move/from16 v22, v15

    move/from16 v24, v73

    invoke-static/range {v19 .. v24}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v2

    div-float v2, v2, v36

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v3, v19, v0

    sub-float/2addr v3, v2

    const v20, -0x48d83a54    # -1.0E-5f

    cmpg-float v21, v0, v20

    if-ltz v21, :cond_e

    cmpg-float v21, v2, v20

    if-ltz v21, :cond_e

    cmpg-float v20, v3, v20

    if-gez v20, :cond_f

    :cond_e
    move/from16 v21, v1

    move/from16 v29, v5

    move/from16 v28, v6

    move-object/from16 v23, v7

    move/from16 v41, v11

    move/from16 v50, v12

    move/from16 v32, v15

    move-object/from16 v24, v18

    move-object/from16 v30, v34

    move-object/from16 v20, v35

    move-object/from16 v25, v37

    move/from16 v33, v53

    move/from16 v35, v54

    move-object/from16 v31, v65

    const/16 v22, 0x0

    move-object/from16 v7, p1

    move-object/from16 v18, p4

    move v15, v8

    move/from16 v34, v9

    move/from16 v37, v10

    move/from16 p4, v14

    move/from16 v8, v19

    move v14, v4

    goto/16 :goto_f

    :cond_f
    mul-float v20, v40, v0

    mul-float v21, v44, v2

    add-float v20, v20, v21

    mul-float v21, v47, v3

    move/from16 v22, v1

    add-float v1, v20, v21

    mul-float v20, v42, v0

    mul-float v21, v45, v2

    add-float v20, v20, v21

    mul-float v21, v48, v3

    move/from16 v41, v6

    add-float v6, v20, v21

    mul-float v20, v43, v0

    mul-float v21, v46, v2

    add-float v20, v20, v21

    mul-float v21, v49, v3

    move-object/from16 v23, v7

    add-float v7, v20, v21

    move/from16 v20, v12

    move-object/from16 v12, v35

    invoke-virtual {v12, v1, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v1, v55, v0

    mul-float v6, v58, v2

    add-float/2addr v1, v6

    mul-float v6, v61, v3

    add-float/2addr v1, v6

    mul-float v6, v56, v0

    mul-float v7, v59, v2

    add-float/2addr v6, v7

    mul-float v7, v62, v3

    add-float/2addr v6, v7

    mul-float v0, v0, v57

    mul-float v2, v2, v60

    add-float/2addr v0, v2

    mul-float v3, v3, v63

    add-float/2addr v0, v3

    move-object/from16 v7, v34

    invoke-virtual {v7, v1, v6, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpg-float v0, v0, v51

    if-gtz v0, :cond_10

    invoke-virtual {v7, v10, v9, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_b

    :cond_10
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_b
    iget-object v0, v13, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v38, :cond_11

    iget-object v6, v13, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v0, p0

    move/from16 v21, v22

    move v1, v4

    const/16 v22, 0x0

    move v2, v8

    move-object/from16 v24, v18

    move-object/from16 v18, p4

    move/from16 v3, v27

    move/from16 p4, v14

    move v14, v4

    move/from16 v4, v16

    move/from16 v29, v5

    move-object/from16 v25, v37

    move-object v5, v7

    move/from16 v28, v41

    move-object/from16 v30, v7

    move-object/from16 v31, v65

    move/from16 v7, v68

    move/from16 v32, v15

    move v15, v8

    move/from16 v8, v71

    move/from16 v34, v9

    move/from16 v33, v53

    move/from16 v9, v67

    move/from16 v37, v10

    move/from16 v35, v54

    move/from16 v10, v70

    move/from16 v41, v11

    move/from16 v11, v69

    move/from16 v50, v20

    move-object/from16 v20, v12

    move/from16 v12, v66

    invoke-virtual/range {v0 .. v12}, Lorg/ITsMagic/Atlas/a;->g(IIIILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFF)V

    goto :goto_c

    :cond_11
    move/from16 v29, v5

    move-object/from16 v30, v7

    move/from16 v34, v9

    move/from16 v32, v15

    move-object/from16 v24, v18

    move/from16 v50, v20

    move/from16 v21, v22

    move-object/from16 v25, v37

    move/from16 v28, v41

    move/from16 v33, v53

    move/from16 v35, v54

    move-object/from16 v31, v65

    const/16 v22, 0x0

    move-object/from16 v18, p4

    move v15, v8

    move/from16 v37, v10

    move/from16 v41, v11

    move-object/from16 v20, v12

    move/from16 p4, v14

    move v14, v4

    :goto_c
    iget-object v5, v13, Lorg/ITsMagic/Atlas/a;->d:[F

    aput v52, v5, v22

    aput v52, v5, v64

    const/4 v6, 0x2

    aput v52, v5, v6

    iget-object v4, v13, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move-object/from16 v3, v30

    invoke-virtual/range {v0 .. v5}, Lorg/ITsMagic/Atlas/a;->e(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V

    move-object/from16 v7, p1

    move/from16 v8, v19

    if-eqz p6, :cond_15

    invoke-virtual {v7, v14, v15}, LBb/b;->i(II)F

    move-result v0

    cmpl-float v1, v0, v52

    const v2, 0x3b808081

    if-lez v1, :cond_12

    invoke-virtual {v7, v14, v15}, LBb/b;->n(II)F

    move-result v3

    goto :goto_d

    :cond_12
    move v3, v2

    :goto_d
    if-lez v1, :cond_13

    invoke-virtual {v7, v14, v15}, LBb/b;->k(II)F

    move-result v4

    goto :goto_e

    :cond_13
    move v4, v2

    :goto_e
    if-lez v1, :cond_14

    invoke-virtual {v7, v14, v15}, LBb/b;->j(II)F

    move-result v2

    :cond_14
    iget-object v1, v13, Lorg/ITsMagic/Atlas/a;->d:[F

    aget v1, v1, v22

    add-float/2addr v3, v1

    invoke-static {v3}, LNc/b;->I(F)F

    move-result v3

    iget-object v1, v13, Lorg/ITsMagic/Atlas/a;->d:[F

    aget v1, v1, v64

    add-float/2addr v4, v1

    invoke-static {v4}, LNc/b;->I(F)F

    move-result v4

    iget-object v1, v13, Lorg/ITsMagic/Atlas/a;->d:[F

    aget v1, v1, v6

    add-float/2addr v2, v1

    invoke-static {v2}, LNc/b;->I(F)F

    move-result v5

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v6

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual/range {v0 .. v6}, LBb/b;->s(IIFFFF)V

    :cond_15
    :goto_f
    add-int/lit8 v4, v14, 0x1

    move/from16 v14, p4

    move v8, v15

    move-object/from16 p4, v18

    move/from16 v1, v21

    move-object/from16 v7, v23

    move-object/from16 v18, v24

    move/from16 v6, v28

    move/from16 v5, v29

    move-object/from16 v65, v31

    move/from16 v15, v32

    move/from16 v53, v33

    move/from16 v9, v34

    move/from16 v54, v35

    move/from16 v10, v37

    move/from16 v11, v41

    move/from16 v12, v50

    move-object/from16 v35, v20

    move-object/from16 v37, v25

    move-object/from16 v34, v30

    goto/16 :goto_a

    :cond_16
    move/from16 v21, v1

    move/from16 v29, v5

    move/from16 v28, v6

    move-object/from16 v23, v7

    move/from16 v41, v11

    move/from16 v50, v12

    move/from16 v32, v15

    move-object/from16 v24, v18

    move-object/from16 v30, v34

    move-object/from16 v20, v35

    move-object/from16 v25, v37

    move/from16 v33, v53

    move/from16 v35, v54

    move-object/from16 v31, v65

    const/16 v22, 0x0

    move-object/from16 v7, p1

    move-object/from16 v18, p4

    move v15, v8

    move/from16 v34, v9

    move/from16 v37, v10

    move/from16 p4, v14

    const/high16 v8, 0x3f800000    # 1.0f

    add-int/lit8 v0, v15, 0x1

    move v8, v0

    move-object/from16 p4, v18

    move-object/from16 v7, v23

    move-object/from16 v18, v24

    move/from16 v15, v32

    move-object/from16 v35, v20

    move-object/from16 v37, v25

    move/from16 v41, v28

    move-object/from16 v34, v30

    goto/16 :goto_9

    :cond_17
    move-object/from16 v23, v7

    move-object/from16 v24, v18

    move-object/from16 v30, v34

    move-object/from16 v20, v35

    move-object/from16 v25, v37

    move-object/from16 v31, v65

    const/16 v22, 0x0

    move-object/from16 v7, p1

    move-object/from16 v18, p4

    :goto_10
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object v14, v7

    move-object/from16 v6, v18

    move-object/from16 v12, v20

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move/from16 v10, v26

    move/from16 v15, v27

    move-object/from16 v11, v30

    move-object/from16 v7, v31

    goto/16 :goto_2

    :goto_11
    add-int/lit8 v10, v26, 0x1

    move/from16 v9, p5

    move-object v14, v7

    move-object/from16 v12, v20

    move/from16 v15, v27

    move-object/from16 v11, v30

    goto/16 :goto_0

    :cond_18
    return-void
.end method

.method public final F(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$c;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/ITsMagic/Atlas/a$c;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {}, LO9/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v11, v1, v2}, Lorg/ITsMagic/Atlas/a;->k(II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v13, 0x0

    if-gt v1, v3, :cond_0

    invoke-virtual/range {p0 .. p3}, Lorg/ITsMagic/Atlas/a;->p(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result v1

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v11, v1, v0}, Lorg/ITsMagic/Atlas/a;->h(ILorg/ITsMagic/Atlas/a$c;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/ITsMagic/Atlas/a;->E(LBb/b;Ljava/util/List;Ljava/util/List;IIZ)V

    invoke-virtual/range {p0 .. p0}, Lorg/ITsMagic/Atlas/a;->u()V

    return-void

    :cond_0
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v10, p3

    invoke-virtual {v11, v14, v15, v10, v12}, Lorg/ITsMagic/Atlas/a;->o(LBb/b;Ljava/util/List;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v9

    move v1, v13

    move v8, v1

    :goto_0
    array-length v2, v9

    if-ge v1, v2, :cond_1

    aget v2, v9, v1

    add-int/2addr v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v7, ""

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-gtz v8, :cond_2

    invoke-interface {v0, v13, v13, v1, v7}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0, v13, v8, v1, v7}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v16, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v13

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lorg/ITsMagic/Atlas/a$b;

    aget v18, v9, v5

    new-instance v19, LUg/a;

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v20, v5

    move-object/from16 v5, p3

    move-object v13, v6

    move-object/from16 v6, v17

    move-object v11, v7

    move/from16 v7, v18

    move/from16 v17, v8

    move-object/from16 v8, v16

    move-object/from16 v18, v9

    move/from16 v9, v17

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v10}, LUg/a;-><init>(Lorg/ITsMagic/Atlas/a;LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)V

    invoke-static/range {v19 .. v19}, LO9/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v20, 0x1

    move-object/from16 v10, p3

    move-object v7, v11

    move-object v6, v13

    move/from16 v8, v17

    move-object/from16 v9, v18

    const/4 v13, 0x0

    move-object/from16 v11, p0

    goto :goto_2

    :cond_4
    move-object v13, v6

    move-object v11, v7

    move/from16 v17, v8

    const/4 v1, 0x0

    :goto_3
    :try_start_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v13, v17

    if-gtz v13, :cond_6

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1, v11}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-interface {v0, v13, v13, v1, v11}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_7
    :goto_4
    return-void

    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to rasterize lightmap in parallel"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final G(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "output",
            "bakeDataList",
            "lights",
            "range",
            "plannedRaycasts",
            "executedRaycasts",
            "totalPlanned",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/ITsMagic/Atlas/a$b;",
            "I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Lorg/ITsMagic/Atlas/a$c;",
            ")V"
        }
    .end annotation

    move-object v0, p4

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->s()Lorg/ITsMagic/Atlas/a;

    move-result-object v7

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v8, Lorg/ITsMagic/Atlas/a$a;

    move-object v1, v8

    move-object v2, p0

    move-object/from16 v3, p8

    move/from16 v4, p7

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/ITsMagic/Atlas/a$a;-><init>(Lorg/ITsMagic/Atlas/a;Lorg/ITsMagic/Atlas/a$c;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    move v1, p5

    invoke-virtual {v7, p5, v8}, Lorg/ITsMagic/Atlas/a;->h(ILorg/ITsMagic/Atlas/a$c;)V

    iget v4, v0, Lorg/ITsMagic/Atlas/a$b;->a:I

    iget v5, v0, Lorg/ITsMagic/Atlas/a$b;->b:I

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/ITsMagic/Atlas/a;->E(LBb/b;Ljava/util/List;Ljava/util/List;IIZ)V

    invoke-virtual {v7}, Lorg/ITsMagic/Atlas/a;->u()V

    return-void
.end method

.method public H(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    return p1
.end method

.method public final I(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bakeDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LUg/h;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-static {}, LO9/b;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract d(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "light",
            "worldPosition",
            "surfaceNormal",
            "shadingNormal",
            "outRgb"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "[F)V"
        }
    .end annotation
.end method

.method public final e(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "lights",
            "worldPosition",
            "surfaceNormal",
            "shadingNormal",
            "outRgb"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            "[F)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/ITsMagic/Atlas/a;->d(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "intensity",
            "outRgb"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, p3, v0

    const/4 v0, 0x1

    aget v1, p3, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, p3, v0

    const/4 v0, 0x2

    aget v1, p3, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p1

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    aput v1, p3, v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(IIIILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFF)V
    .locals 3
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
            0x0
        }
        names = {
            "px",
            "py",
            "outputWidth",
            "outputHeight",
            "surfaceNormal",
            "outShadingNormal",
            "triTangentX",
            "triTangentY",
            "triTangentZ",
            "triBitangentX",
            "triBitangentY",
            "triBitangentZ"
        }
    .end annotation

    iget-object v0, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-le p3, v1, :cond_1

    invoke-virtual {v0}, LBb/b;->p()I

    move-result v0

    if-eq v0, p3, :cond_1

    int-to-float p1, p1

    sub-int/2addr p3, v1

    int-to-float p3, p3

    div-float/2addr p1, p3

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p3}, LBb/b;->p()I

    move-result p3

    sub-int/2addr p3, v1

    int-to-float p3, p3

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_1
    if-le p4, v1, :cond_2

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p3}, LBb/b;->l()I

    move-result p3

    if-eq p3, p4, :cond_2

    int-to-float p2, p2

    sub-int/2addr p4, v1

    int-to-float p3, p4

    div-float/2addr p2, p3

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p3}, LBb/b;->l()I

    move-result p3

    sub-int/2addr p3, v1

    int-to-float p3, p3

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    :cond_2
    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p3}, LBb/b;->p()I

    move-result p3

    sub-int/2addr p3, v1

    const/4 p4, 0x0

    invoke-static {p4, p1, p3}, LNc/b;->F(III)I

    move-result p1

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p3}, LBb/b;->l()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-static {p4, p2, p3}, LNc/b;->F(III)I

    move-result p2

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p3, p1, p2}, LBb/b;->i(II)F

    move-result p3

    const/4 p4, 0x0

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p5, p7, p8, p9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(FFF)F

    move-result p3

    iget-object v0, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, p3

    sub-float/2addr p7, v1

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v1, p3

    sub-float/2addr p8, v1

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v1, p3

    sub-float/2addr p9, v1

    invoke-virtual {v0, p7, p8, p9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p3

    const p7, 0x322bcc77    # 1.0E-8f

    cmpg-float p3, p3, p7

    if-gtz p3, :cond_4

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p5, p3, p4}, Lorg/ITsMagic/Atlas/a;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p8

    iget-object p9, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p9

    mul-float/2addr p8, p9

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p9

    iget-object v0, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    mul-float/2addr p9, v0

    sub-float/2addr p8, p9

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p9

    iget-object v0, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    mul-float/2addr p9, v0

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float/2addr p9, v0

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p3, p8, p9, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p10, p11, p12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(FFF)F

    move-result p3

    cmpg-float p3, p3, p4

    if-gez p3, :cond_5

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 p4, -0x40800000    # -1.0f

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_5
    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p3

    cmpg-float p3, p3, p7

    if-gtz p3, :cond_6

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p4, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p5, p3, p4}, Lorg/ITsMagic/Atlas/a;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :cond_6
    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p3, p1, p2}, LBb/b;->n(II)F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p3, p4

    const/high16 p8, 0x3f800000    # 1.0f

    sub-float/2addr p3, p8

    iget-object p9, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p9, p1, p2}, LBb/b;->k(II)F

    move-result p9

    mul-float/2addr p9, p4

    sub-float/2addr p9, p8

    iget-object p10, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    invoke-virtual {p10, p1, p2}, LBb/b;->j(II)F

    move-result p1

    mul-float/2addr p1, p4

    sub-float/2addr p1, p8

    mul-float p2, p3, p3

    mul-float p4, p9, p9

    add-float/2addr p2, p4

    mul-float p4, p1, p1

    add-float/2addr p2, p4

    cmpg-float p4, p2, p7

    if-gtz p4, :cond_7

    return-void

    :cond_7
    float-to-double p10, p2

    invoke-static {p10, p11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p10

    double-to-float p2, p10

    div-float/2addr p8, p2

    mul-float/2addr p3, p8

    mul-float/2addr p9, p8

    mul-float/2addr p1, p8

    iget-object p2, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    mul-float/2addr p2, p3

    iget-object p4, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p4

    mul-float/2addr p4, p9

    add-float/2addr p2, p4

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p4

    mul-float/2addr p4, p1

    add-float/2addr p2, p4

    iget-object p4, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p4

    mul-float/2addr p4, p3

    iget-object p8, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p8

    mul-float/2addr p8, p9

    add-float/2addr p4, p8

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p8

    mul-float/2addr p8, p1

    add-float/2addr p4, p8

    iget-object p8, p0, Lorg/ITsMagic/Atlas/a;->f:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p8

    mul-float/2addr p8, p3

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p3

    mul-float/2addr p3, p9

    add-float/2addr p8, p3

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p3

    mul-float/2addr p3, p1

    add-float/2addr p8, p3

    invoke-virtual {p6, p2, p4, p8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    cmpg-float p1, p1, p7

    if-gtz p1, :cond_8

    invoke-virtual {p6, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_8
    invoke-virtual {p6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    return-void
.end method

.method public final h(ILorg/ITsMagic/Atlas/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "totalRaycasts",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/ITsMagic/Atlas/a;->l:I

    iput v0, p0, Lorg/ITsMagic/Atlas/a;->k:I

    iput-object p2, p0, Lorg/ITsMagic/Atlas/a;->i:Lorg/ITsMagic/Atlas/a$c;

    sget-object v1, Lorg/ITsMagic/Atlas/a$d;->EXECUTE:Lorg/ITsMagic/Atlas/a$d;

    iput-object v1, p0, Lorg/ITsMagic/Atlas/a;->h:Lorg/ITsMagic/Atlas/a$d;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    if-gtz p1, :cond_1

    invoke-interface {p2, v0, v0, v2, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0, p1, v2, v1}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final i(LBb/b;Ljava/util/List;)Lorg/ITsMagic/Atlas/d$a;
    .locals 72
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;)",
            "Lorg/ITsMagic/Atlas/d$a;"
        }
    .end annotation

    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p2}, Lorg/ITsMagic/Atlas/a;->n(LBb/b;Ljava/util/List;)I

    move-result v0

    new-instance v14, Lorg/ITsMagic/Atlas/d$a;

    const/4 v15, 0x1

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v14, v1}, Lorg/ITsMagic/Atlas/d$a;-><init>(I)V

    if-gtz v0, :cond_0

    return-object v14

    :cond_0
    invoke-virtual/range {p1 .. p1}, LBb/b;->p()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, LBb/b;->l()I

    move-result v17

    new-instance v12, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v11, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_14

    move-object/from16 v8, p2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUg/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LUg/h;->a()LUg/g;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    move/from16 v27, v9

    move-object/from16 v25, v11

    move-object/from16 v21, v12

    move-object v0, v14

    const/16 v29, 0x0

    goto/16 :goto_f

    :cond_2
    invoke-virtual {v0}, LUg/h;->a()LUg/g;

    move-result-object v0

    invoke-virtual {v0}, LUg/g;->i()Lvc/q;

    move-result-object v7

    invoke-virtual {v0}, LUg/g;->c()Lvc/q;

    move-result-object v6

    invoke-virtual {v0}, LUg/g;->a()Lvc/p;

    move-result-object v5

    invoke-virtual {v0}, LUg/g;->e()Lvc/p;

    move-result-object v4

    invoke-virtual {v0}, LUg/g;->g()Lvc/n;

    move-result-object v3

    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Lvc/n;->b()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Lvc/n;->h(I)I

    move-result v0

    invoke-virtual {v3, v2}, Lvc/n;->i(I)I

    move-result v1

    invoke-virtual {v3, v2}, Lvc/n;->j(I)I

    move-result v15

    if-ltz v0, :cond_4

    if-ltz v1, :cond_4

    if-gez v15, :cond_5

    :cond_4
    :goto_3
    move/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v23, v4

    move-object/from16 v30, v5

    move-object/from16 v18, v6

    move-object/from16 v33, v7

    move/from16 v27, v9

    move-object/from16 v25, v11

    move-object/from16 v21, v12

    move-object v0, v14

    const/16 v29, 0x0

    goto/16 :goto_e

    :cond_5
    invoke-virtual {v5}, Lvc/p;->b()I

    move-result v10

    if-ge v0, v10, :cond_4

    invoke-virtual {v5}, Lvc/p;->b()I

    move-result v10

    if-ge v1, v10, :cond_4

    invoke-virtual {v5}, Lvc/p;->b()I

    move-result v10

    if-lt v15, v10, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v10

    if-ge v0, v10, :cond_4

    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v10

    if-ge v1, v10, :cond_4

    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v10

    if-lt v15, v10, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v0}, Lvc/p;->i(I)F

    move-result v10

    move/from16 v18, v2

    add-int/lit8 v2, v16, -0x1

    move-object/from16 v19, v3

    int-to-float v3, v2

    mul-float/2addr v10, v3

    invoke-virtual {v5, v0}, Lvc/p;->j(I)F

    move-result v20

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v20, v26, v20

    add-int/lit8 v8, v17, -0x1

    move/from16 v27, v9

    int-to-float v9, v8

    move-object/from16 v28, v14

    mul-float v14, v20, v9

    invoke-virtual {v5, v1}, Lvc/p;->i(I)F

    move-result v20

    move-object/from16 v35, v11

    mul-float v11, v20, v3

    invoke-virtual {v5, v1}, Lvc/p;->j(I)F

    move-result v20

    sub-float v20, v26, v20

    move-object/from16 v36, v12

    mul-float v12, v20, v9

    invoke-virtual {v5, v15}, Lvc/p;->i(I)F

    move-result v20

    mul-float v3, v3, v20

    invoke-virtual {v5, v15}, Lvc/p;->j(I)F

    move-result v20

    sub-float v20, v26, v20

    mul-float v9, v9, v20

    move/from16 v20, v10

    move/from16 v21, v14

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v3

    move/from16 v25, v9

    invoke-static/range {v20 .. v25}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3727c5ac    # 1.0E-5f

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_8

    move-object/from16 v23, v4

    move-object/from16 v30, v5

    move-object/from16 v33, v7

    move/from16 v20, v18

    move-object/from16 v0, v28

    move-object/from16 v25, v35

    move-object/from16 v21, v36

    const/16 v29, 0x0

    move-object/from16 v18, v6

    goto/16 :goto_e

    :cond_8
    move-object/from16 v38, v5

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    move-object/from16 v39, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v2}, LNc/b;->F(III)I

    move-result v40

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-object/from16 p1, v6

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v2}, LNc/b;->F(III)I

    move-result v6

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move/from16 v42, v6

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    const/4 v5, 0x0

    invoke-static {v5, v2, v8}, LNc/b;->F(III)I

    move-result v2

    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v8}, LNc/b;->F(III)I

    move-result v8

    invoke-virtual {v7, v0}, Lvc/q;->m(I)F

    move-result v41

    invoke-virtual {v7, v0}, Lvc/q;->n(I)F

    move-result v43

    invoke-virtual {v7, v0}, Lvc/q;->o(I)F

    move-result v44

    invoke-virtual {v7, v1}, Lvc/q;->m(I)F

    move-result v45

    invoke-virtual {v7, v1}, Lvc/q;->n(I)F

    move-result v46

    invoke-virtual {v7, v1}, Lvc/q;->o(I)F

    move-result v47

    invoke-virtual {v7, v15}, Lvc/q;->m(I)F

    move-result v48

    invoke-virtual {v7, v15}, Lvc/q;->n(I)F

    move-result v49

    invoke-virtual {v7, v15}, Lvc/q;->o(I)F

    move-result v50

    sub-float v4, v46, v43

    sub-float v6, v50, v44

    mul-float v20, v4, v6

    sub-float v22, v47, v44

    sub-float v23, v49, v43

    mul-float v24, v22, v23

    sub-float v20, v20, v24

    sub-float v24, v48, v41

    mul-float v25, v22, v24

    sub-float v29, v45, v41

    mul-float v30, v29, v6

    sub-float v25, v25, v30

    mul-float v30, v29, v23

    mul-float v31, v4, v24

    sub-float v30, v30, v31

    mul-float v31, v20, v20

    mul-float v32, v25, v25

    add-float v31, v31, v32

    mul-float v32, v30, v30

    add-float v5, v31, v32

    const v52, 0x322bcc77    # 1.0E-8f

    cmpl-float v31, v5, v52

    const/16 v32, 0x0

    if-lez v31, :cond_9

    move/from16 v54, v9

    move/from16 v53, v10

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v5, v9

    div-float v5, v26, v5

    mul-float v20, v20, v5

    mul-float v25, v25, v5

    mul-float v30, v30, v5

    move/from16 v10, v20

    move/from16 v9, v25

    move/from16 v5, v30

    goto :goto_4

    :cond_9
    move/from16 v54, v9

    move/from16 v53, v10

    move/from16 v9, v26

    move/from16 v5, v32

    move v10, v5

    :goto_4
    move/from16 v20, v2

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lvc/q;->d()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lvc/q;->d()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lvc/q;->d()I

    move-result v2

    if-ge v15, v2, :cond_a

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lvc/q;->m(I)F

    move-result v25

    invoke-virtual {v2, v0}, Lvc/q;->n(I)F

    move-result v30

    invoke-virtual {v2, v0}, Lvc/q;->o(I)F

    move-result v31

    invoke-virtual {v2, v1}, Lvc/q;->m(I)F

    move-result v33

    invoke-virtual {v2, v1}, Lvc/q;->n(I)F

    move-result v34

    invoke-virtual {v2, v1}, Lvc/q;->o(I)F

    move-result v55

    invoke-virtual {v2, v15}, Lvc/q;->m(I)F

    move-result v56

    invoke-virtual {v2, v15}, Lvc/q;->n(I)F

    move-result v57

    invoke-virtual {v2, v15}, Lvc/q;->o(I)F

    move-result v58

    move/from16 v59, v34

    move/from16 v60, v55

    move/from16 v61, v56

    move/from16 v62, v57

    move/from16 v63, v58

    move/from16 v55, v25

    move/from16 v56, v30

    move/from16 v57, v31

    move/from16 v58, v33

    goto :goto_5

    :cond_a
    move-object/from16 v2, p1

    move-object/from16 p1, v2

    move/from16 v57, v5

    move/from16 v60, v57

    move/from16 v63, v60

    move/from16 v56, v9

    move/from16 v59, v56

    move/from16 v62, v59

    move/from16 v55, v10

    move/from16 v58, v55

    move/from16 v61, v58

    :goto_5
    iget-object v2, v13, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    if-eqz v2, :cond_b

    if-eqz v39, :cond_b

    invoke-virtual/range {v39 .. v39}, Lvc/p;->b()I

    move-result v2

    if-ge v0, v2, :cond_b

    invoke-virtual/range {v39 .. v39}, Lvc/p;->b()I

    move-result v2

    if-ge v1, v2, :cond_b

    invoke-virtual/range {v39 .. v39}, Lvc/p;->b()I

    move-result v2

    if-ge v15, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v64, v7

    move-object/from16 v7, v39

    if-eqz v2, :cond_d

    invoke-virtual {v7, v0}, Lvc/p;->i(I)F

    move-result v25

    invoke-virtual {v7, v0}, Lvc/p;->j(I)F

    move-result v0

    invoke-virtual {v7, v1}, Lvc/p;->i(I)F

    move-result v30

    invoke-virtual {v7, v1}, Lvc/p;->j(I)F

    move-result v1

    invoke-virtual {v7, v15}, Lvc/p;->i(I)F

    move-result v31

    invoke-virtual {v7, v15}, Lvc/p;->j(I)F

    move-result v15

    sub-float v30, v30, v25

    sub-float/2addr v1, v0

    sub-float v31, v31, v25

    sub-float/2addr v15, v0

    mul-float v0, v30, v15

    mul-float v25, v1, v31

    sub-float v0, v0, v25

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v25

    cmpl-float v21, v25, v21

    if-lez v21, :cond_c

    div-float v0, v26, v0

    mul-float v21, v29, v15

    mul-float v25, v24, v1

    sub-float v21, v21, v25

    mul-float v32, v21, v0

    mul-float v21, v4, v15

    mul-float v25, v23, v1

    sub-float v21, v21, v25

    mul-float v21, v21, v0

    mul-float v15, v15, v22

    mul-float/2addr v1, v6

    sub-float/2addr v15, v1

    mul-float v1, v15, v0

    mul-float v24, v24, v30

    mul-float v29, v29, v31

    sub-float v24, v24, v29

    mul-float v15, v24, v0

    mul-float v23, v23, v30

    mul-float v4, v4, v31

    sub-float v23, v23, v4

    mul-float v4, v23, v0

    mul-float v6, v6, v30

    mul-float v22, v22, v31

    sub-float v6, v6, v22

    mul-float/2addr v0, v6

    move/from16 v69, v0

    move/from16 v66, v1

    move/from16 v68, v4

    move/from16 v67, v15

    move/from16 v65, v21

    move/from16 v39, v32

    move v15, v2

    goto :goto_7

    :cond_c
    move/from16 v39, v32

    move/from16 v65, v39

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    const/4 v15, 0x0

    goto :goto_7

    :cond_d
    move v15, v2

    move/from16 v39, v32

    move/from16 v65, v39

    move/from16 v66, v65

    move/from16 v67, v66

    move/from16 v68, v67

    move/from16 v69, v68

    :goto_7
    move/from16 v6, v20

    :goto_8
    if-gt v6, v8, :cond_13

    int-to-float v0, v6

    const/high16 v70, 0x3f000000    # 0.5f

    add-float v71, v0, v70

    move/from16 v2, v40

    move/from16 v4, v42

    :goto_9
    if-gt v2, v4, :cond_12

    int-to-float v0, v2

    add-float v24, v0, v70

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v3

    move/from16 v32, v54

    move/from16 v33, v24

    move/from16 v34, v71

    invoke-static/range {v29 .. v34}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v0

    div-float v0, v0, v37

    move/from16 v20, v3

    move/from16 v21, v54

    move/from16 v22, v53

    move/from16 v23, v14

    move/from16 v25, v71

    invoke-static/range {v20 .. v25}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v1

    div-float v1, v1, v37

    sub-float v20, v26, v0

    sub-float v20, v20, v1

    const v21, -0x48d83a54    # -1.0E-5f

    cmpg-float v22, v0, v21

    if-ltz v22, :cond_e

    cmpg-float v22, v1, v21

    if-ltz v22, :cond_e

    cmpg-float v21, v20, v21

    if-gez v21, :cond_f

    :cond_e
    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v32, v5

    move-object/from16 v23, v7

    move/from16 v34, v8

    move/from16 v42, v10

    move/from16 v51, v11

    move/from16 v31, v15

    move/from16 v20, v18

    move-object/from16 v0, v28

    move-object/from16 v25, v35

    move-object/from16 v21, v36

    move-object/from16 v30, v38

    move/from16 v38, v53

    move/from16 v35, v54

    move-object/from16 v33, v64

    const/16 v29, 0x0

    move-object/from16 v18, p1

    move v15, v6

    move/from16 v36, v9

    move/from16 v53, v12

    move/from16 p1, v14

    move v14, v2

    goto/16 :goto_d

    :cond_f
    mul-float v21, v41, v0

    mul-float v22, v45, v1

    add-float v21, v21, v22

    mul-float v22, v48, v20

    move/from16 v23, v3

    add-float v3, v21, v22

    mul-float v21, v43, v0

    mul-float v22, v46, v1

    add-float v21, v21, v22

    mul-float v22, v49, v20

    move/from16 v42, v4

    add-float v4, v21, v22

    mul-float v21, v44, v0

    mul-float v22, v47, v1

    add-float v21, v21, v22

    mul-float v22, v50, v20

    move-object/from16 v24, v7

    add-float v7, v21, v22

    move/from16 v21, v12

    move-object/from16 v12, v36

    invoke-virtual {v12, v3, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v3, v55, v0

    mul-float v4, v58, v1

    add-float/2addr v3, v4

    mul-float v4, v61, v20

    add-float/2addr v3, v4

    mul-float v4, v56, v0

    mul-float v7, v59, v1

    add-float/2addr v4, v7

    mul-float v7, v62, v20

    add-float/2addr v4, v7

    mul-float v0, v0, v57

    mul-float v1, v1, v60

    add-float/2addr v0, v1

    mul-float v20, v20, v63

    add-float v0, v0, v20

    move-object/from16 v7, v35

    invoke-virtual {v7, v3, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpg-float v0, v0, v52

    if-gtz v0, :cond_10

    invoke-virtual {v7, v10, v9, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_a

    :cond_10
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_a
    iget-object v0, v13, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v15, :cond_11

    iget-object v4, v13, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object/from16 v0, p0

    move v1, v2

    move v3, v2

    move/from16 v20, v18

    move-object/from16 v18, p1

    move v2, v6

    move/from16 p1, v14

    move/from16 v22, v23

    move v14, v3

    move/from16 v3, v16

    move-object/from16 v25, v4

    move-object/from16 v23, v24

    move/from16 v24, v42

    move/from16 v4, v17

    move/from16 v32, v5

    move-object/from16 v30, v38

    const/16 v29, 0x0

    move-object v5, v7

    move/from16 v31, v15

    move v15, v6

    move-object/from16 v6, v25

    move-object/from16 v25, v7

    move-object/from16 v33, v64

    move/from16 v7, v39

    move/from16 v34, v8

    move/from16 v8, v65

    move/from16 v36, v9

    move/from16 v35, v54

    move/from16 v9, v66

    move/from16 v42, v10

    move/from16 v38, v53

    move/from16 v10, v67

    move/from16 v51, v11

    move/from16 v11, v68

    move/from16 v53, v21

    move-object/from16 v21, v12

    move/from16 v12, v69

    invoke-virtual/range {v0 .. v12}, Lorg/ITsMagic/Atlas/a;->g(IIIILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFFF)V

    :goto_b
    move-object/from16 v0, v28

    goto :goto_c

    :cond_11
    move/from16 v32, v5

    move-object/from16 v25, v7

    move/from16 v34, v8

    move/from16 v36, v9

    move/from16 v51, v11

    move/from16 v31, v15

    move/from16 v20, v18

    move/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v30, v38

    move/from16 v24, v42

    move/from16 v38, v53

    move/from16 v35, v54

    move-object/from16 v33, v64

    const/16 v29, 0x0

    move-object/from16 v18, p1

    move v15, v6

    move/from16 v42, v10

    move/from16 p1, v14

    move/from16 v53, v21

    move v14, v2

    move-object/from16 v21, v12

    goto :goto_b

    :goto_c
    iget v1, v0, Lorg/ITsMagic/Atlas/d$a;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/ITsMagic/Atlas/d$a;->l:I

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->j:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2, v1, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2, v1, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {v21 .. v21}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {v21 .. v21}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {v21 .. v21}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {v25 .. v25}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {v25 .. v25}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual/range {v25 .. v25}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v3, v13, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v3, v13, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    iget-object v2, v0, Lorg/ITsMagic/Atlas/d$a;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v3, v13, Lorg/ITsMagic/Atlas/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    :goto_d
    add-int/lit8 v2, v14, 0x1

    move/from16 v14, p1

    move-object/from16 v28, v0

    move v6, v15

    move-object/from16 p1, v18

    move/from16 v18, v20

    move/from16 v3, v22

    move-object/from16 v7, v23

    move/from16 v4, v24

    move/from16 v15, v31

    move/from16 v5, v32

    move-object/from16 v64, v33

    move/from16 v8, v34

    move/from16 v54, v35

    move/from16 v9, v36

    move/from16 v10, v42

    move/from16 v11, v51

    move/from16 v12, v53

    move-object/from16 v36, v21

    move-object/from16 v35, v25

    move/from16 v53, v38

    move-object/from16 v38, v30

    goto/16 :goto_9

    :cond_12
    move/from16 v22, v3

    move/from16 v24, v4

    move/from16 v32, v5

    move-object/from16 v23, v7

    move/from16 v34, v8

    move/from16 v42, v10

    move/from16 v51, v11

    move/from16 v31, v15

    move/from16 v20, v18

    move-object/from16 v0, v28

    move-object/from16 v25, v35

    move-object/from16 v21, v36

    move-object/from16 v30, v38

    move/from16 v38, v53

    move/from16 v35, v54

    move-object/from16 v33, v64

    const/16 v29, 0x0

    move-object/from16 v18, p1

    move v15, v6

    move/from16 v36, v9

    move/from16 v53, v12

    move/from16 p1, v14

    add-int/lit8 v6, v15, 0x1

    move-object/from16 p1, v18

    move/from16 v18, v20

    move/from16 v15, v31

    move-object/from16 v36, v21

    move/from16 v42, v24

    move-object/from16 v35, v25

    move/from16 v53, v38

    move-object/from16 v38, v30

    goto/16 :goto_8

    :cond_13
    move-object/from16 v23, v7

    move/from16 v20, v18

    move-object/from16 v0, v28

    move-object/from16 v25, v35

    move-object/from16 v21, v36

    move-object/from16 v30, v38

    move-object/from16 v33, v64

    const/16 v29, 0x0

    move-object/from16 v18, p1

    :goto_e
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v8, p2

    move-object v14, v0

    move-object/from16 v6, v18

    move-object/from16 v3, v19

    move-object/from16 v12, v21

    move-object/from16 v4, v23

    move-object/from16 v11, v25

    move/from16 v9, v27

    move-object/from16 v5, v30

    move-object/from16 v7, v33

    const/4 v15, 0x1

    goto/16 :goto_2

    :goto_f
    add-int/lit8 v9, v27, 0x1

    move-object v14, v0

    move-object/from16 v12, v21

    move-object/from16 v11, v25

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_14
    move-object v0, v14

    return-object v0
.end method

.method public final j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceNormal",
            "outTangent",
            "outBitangent"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f7fbe77    # 0.999f

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p2, v2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    const v3, 0x322bcc77    # 1.0E-8f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    invoke-virtual {p2, v2, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->crossLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public final k(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "totalItems",
            "preferredWorkers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/ITsMagic/Atlas/a$b;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-double v1, p1

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    new-instance v2, Lorg/ITsMagic/Atlas/a$b;

    add-int v3, p2, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v2, p2, v4}, Lorg/ITsMagic/Atlas/a$b;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public l(LBb/b;Ljava/util/List;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/ITsMagic/Atlas/a;->m(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v4, p0, Lorg/ITsMagic/Atlas/a;->a:Ljava/util/List;

    new-instance v5, LUg/c;

    invoke-direct {v5, p0}, LUg/c;-><init>(Lorg/ITsMagic/Atlas/a;)V

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->v()Lorg/ITsMagic/Atlas/d$c;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lorg/ITsMagic/Atlas/d;->e(LBb/b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/d$b;Lorg/ITsMagic/Atlas/d$c;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    invoke-virtual {p0, p2}, Lorg/ITsMagic/Atlas/a;->I(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lorg/ITsMagic/Atlas/a;->q(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/ITsMagic/Atlas/a;->p(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public m(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lights"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->v()Lorg/ITsMagic/Atlas/d$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final n(LBb/b;Ljava/util/List;)I
    .locals 35
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;)I"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, LBb/b;->p()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, LBb/b;->l()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_d

    move-object/from16 v5, p2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LUg/h;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, LUg/h;->a()LUg/g;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    move/from16 v23, v0

    move/from16 v30, v1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v6}, LUg/h;->a()LUg/g;

    move-result-object v6

    invoke-virtual {v6}, LUg/g;->i()Lvc/q;

    move-result-object v7

    invoke-virtual {v6}, LUg/g;->a()Lvc/p;

    move-result-object v8

    invoke-virtual {v6}, LUg/g;->g()Lvc/n;

    move-result-object v6

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v6}, Lvc/n;->b()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-virtual {v6, v9}, Lvc/n;->h(I)I

    move-result v10

    invoke-virtual {v6, v9}, Lvc/n;->i(I)I

    move-result v11

    invoke-virtual {v6, v9}, Lvc/n;->j(I)I

    move-result v12

    if-ltz v10, :cond_3

    if-ltz v11, :cond_3

    if-gez v12, :cond_4

    :cond_3
    :goto_3
    move/from16 v23, v0

    move/from16 v30, v1

    :goto_4
    move/from16 v16, v4

    move-object/from16 p1, v6

    move-object/from16 v32, v7

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v8}, Lvc/p;->b()I

    move-result v13

    if-ge v10, v13, :cond_3

    invoke-virtual {v8}, Lvc/p;->b()I

    move-result v13

    if-ge v11, v13, :cond_3

    invoke-virtual {v8}, Lvc/p;->b()I

    move-result v13

    if-lt v12, v13, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v13

    if-ge v10, v13, :cond_3

    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v13

    if-ge v11, v13, :cond_3

    invoke-virtual {v7}, Lvc/q;->d()I

    move-result v13

    if-lt v12, v13, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v8, v10}, Lvc/p;->i(I)F

    move-result v13

    add-int/lit8 v14, v0, -0x1

    int-to-float v15, v14

    mul-float/2addr v13, v15

    invoke-virtual {v8, v10}, Lvc/p;->j(I)F

    move-result v10

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v10, v22, v10

    add-int/lit8 v2, v1, -0x1

    move/from16 v23, v0

    int-to-float v0, v2

    mul-float/2addr v10, v0

    invoke-virtual {v8, v11}, Lvc/p;->i(I)F

    move-result v16

    move/from16 v30, v1

    mul-float v1, v16, v15

    invoke-virtual {v8, v11}, Lvc/p;->j(I)F

    move-result v11

    sub-float v11, v22, v11

    mul-float/2addr v11, v0

    invoke-virtual {v8, v12}, Lvc/p;->i(I)F

    move-result v16

    mul-float v15, v15, v16

    invoke-virtual {v8, v12}, Lvc/p;->j(I)F

    move-result v12

    sub-float v12, v22, v12

    mul-float/2addr v12, v0

    move/from16 v16, v13

    move/from16 v17, v10

    move/from16 v18, v1

    move/from16 v19, v11

    move/from16 v20, v15

    move/from16 v21, v12

    invoke-static/range {v16 .. v21}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const v17, 0x3727c5ac    # 1.0E-5f

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v16, v4

    invoke-static {v1, v15}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v14}, LNc/b;->F(III)I

    move-result v4

    invoke-static {v1, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move/from16 v31, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v14}, LNc/b;->F(III)I

    move-result v4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v10, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move-object/from16 p1, v6

    float-to-double v5, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v5, v2}, LNc/b;->F(III)I

    move-result v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move-object/from16 v32, v7

    float-to-double v6, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6, v2}, LNc/b;->F(III)I

    move-result v2

    :goto_5
    if-gt v5, v2, :cond_b

    int-to-float v6, v5

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v6, v14

    move/from16 v33, v16

    move/from16 v7, v31

    :goto_6
    if-gt v7, v4, :cond_a

    move/from16 v34, v2

    int-to-float v2, v7

    add-float v20, v2, v14

    move/from16 v24, v1

    move/from16 v25, v11

    move/from16 v26, v15

    move/from16 v27, v12

    move/from16 v28, v20

    move/from16 v29, v6

    invoke-static/range {v24 .. v29}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v2

    div-float/2addr v2, v0

    move/from16 v16, v15

    move/from16 v17, v12

    move/from16 v18, v13

    move/from16 v19, v10

    move/from16 v21, v6

    invoke-static/range {v16 .. v21}, Lorg/ITsMagic/Atlas/a;->t(FFFFFF)F

    move-result v16

    div-float v16, v16, v0

    sub-float v17, v22, v2

    sub-float v17, v17, v16

    const v18, -0x48d83a54    # -1.0E-5f

    cmpg-float v2, v2, v18

    if-ltz v2, :cond_9

    cmpg-float v2, v16, v18

    if-ltz v2, :cond_9

    cmpg-float v2, v17, v18

    if-gez v2, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v33, v33, 0x1

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v34

    goto :goto_6

    :cond_a
    move/from16 v34, v2

    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v33

    const/4 v7, 0x0

    goto :goto_5

    :cond_b
    :goto_8
    move/from16 v4, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move/from16 v0, v23

    move/from16 v1, v30

    move-object/from16 v7, v32

    goto/16 :goto_2

    :cond_c
    move/from16 v23, v0

    move/from16 v30, v1

    move/from16 v16, v4

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v23

    move/from16 v1, v30

    goto/16 :goto_0

    :cond_d
    return v4
.end method

.method public final o(LBb/b;Ljava/util/List;Ljava/util/List;Ljava/util/List;)[I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights",
            "ranges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Lorg/ITsMagic/Atlas/a$b;",
            ">;)[I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lorg/ITsMagic/Atlas/a$b;

    new-instance v3, LUg/b;

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, LUg/b;-><init>(Lorg/ITsMagic/Atlas/a;LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;)V

    invoke-static {v3}, LO9/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_1

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Future;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failed to count light raycasts in parallel"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    return-object p1
.end method

.method public final p(LBb/b;Ljava/util/List;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/ITsMagic/Atlas/a;->j:I

    sget-object v0, Lorg/ITsMagic/Atlas/a$d;->COUNT_ONLY:Lorg/ITsMagic/Atlas/a$d;

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->h:Lorg/ITsMagic/Atlas/a$d;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/ITsMagic/Atlas/a;->E(LBb/b;Ljava/util/List;Ljava/util/List;IIZ)V

    sget-object p1, Lorg/ITsMagic/Atlas/a$d;->NONE:Lorg/ITsMagic/Atlas/a$d;

    iput-object p1, p0, Lorg/ITsMagic/Atlas/a;->h:Lorg/ITsMagic/Atlas/a$d;

    iget p1, p0, Lorg/ITsMagic/Atlas/a;->j:I

    return p1
.end method

.method public final q(LBb/b;Ljava/util/List;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, LO9/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/ITsMagic/Atlas/a;->k(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/ITsMagic/Atlas/a;->p(LBb/b;Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/ITsMagic/Atlas/a;->o(LBb/b;Ljava/util/List;Ljava/util/List;Ljava/util/List;)[I

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget v0, p1, p2

    add-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public final r(LBb/b;Ljava/util/List;Ljava/util/List;II)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "bakeDataList",
            "lights",
            "startBakeIndex",
            "endBakeIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBb/b;",
            "Ljava/util/List<",
            "LUg/h;",
            ">;",
            "Ljava/util/List<",
            "TT;>;II)I"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/ITsMagic/Atlas/a;->j:I

    sget-object v0, Lorg/ITsMagic/Atlas/a$d;->COUNT_ONLY:Lorg/ITsMagic/Atlas/a$d;

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->h:Lorg/ITsMagic/Atlas/a$d;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/ITsMagic/Atlas/a;->E(LBb/b;Ljava/util/List;Ljava/util/List;IIZ)V

    sget-object p1, Lorg/ITsMagic/Atlas/a$d;->NONE:Lorg/ITsMagic/Atlas/a$d;

    iput-object p1, p0, Lorg/ITsMagic/Atlas/a;->h:Lorg/ITsMagic/Atlas/a$d;

    iget p1, p0, Lorg/ITsMagic/Atlas/a;->j:I

    return p1
.end method

.method public abstract s()Lorg/ITsMagic/Atlas/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ITsMagic/Atlas/a<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lorg/ITsMagic/Atlas/a;->i:Lorg/ITsMagic/Atlas/a$c;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/ITsMagic/Atlas/a;->l:I

    const-string v2, ""

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v3, v2}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, v1, v3, v2}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lorg/ITsMagic/Atlas/a$d;->NONE:Lorg/ITsMagic/Atlas/a$d;

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->h:Lorg/ITsMagic/Atlas/a$d;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ITsMagic/Atlas/a;->i:Lorg/ITsMagic/Atlas/a$c;

    return-void
.end method

.method public abstract v()Lorg/ITsMagic/Atlas/d$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ITsMagic/Atlas/d$c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public w()LBb/b;
    .locals 1

    iget-object v0, p0, Lorg/ITsMagic/Atlas/a;->b:LBb/b;

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ITsMagic/Atlas/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "worldPosition",
            "worldNormal",
            "toLightDirection",
            "maxDistance"
        }
    .end annotation

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v1, p4, v0

    const/4 v2, 0x0

    if-lez v1, :cond_5

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v1

    const v3, 0x322bcc77    # 1.0E-8f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lorg/ITsMagic/Atlas/a;->h:Lorg/ITsMagic/Atlas/a$d;

    sget-object v3, Lorg/ITsMagic/Atlas/a$d;->COUNT_ONLY:Lorg/ITsMagic/Atlas/a$d;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    iget p1, p0, Lorg/ITsMagic/Atlas/a;->j:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/ITsMagic/Atlas/a;->j:I

    return v2

    :cond_1
    sget-object v3, Lorg/ITsMagic/Atlas/a$d;->EXECUTE:Lorg/ITsMagic/Atlas/a$d;

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/ITsMagic/Atlas/a;->k:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/ITsMagic/Atlas/a;->k:I

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->B()V

    :cond_2
    iget-object v1, p0, Lorg/ITsMagic/Atlas/a;->c:Laa/c;

    invoke-virtual {v1}, Laa/c;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lorg/ITsMagic/Atlas/a;->c:Laa/c;

    invoke-virtual {p1}, Laa/c;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lorg/ITsMagic/Atlas/a;->c:Laa/c;

    sub-float/2addr p4, v0

    iput p4, p1, Laa/c;->c:F

    move p1, v2

    :goto_0
    iget-object p2, p0, Lorg/ITsMagic/Atlas/a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lorg/ITsMagic/Atlas/a;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->A()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->v()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->c:Laa/c;

    sget-object p4, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    invoke-virtual {p2, p3, p4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->U(Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Laa/a;->getDistance()F

    move-result p3

    cmpl-float p3, p3, v0

    if-lez p3, :cond_4

    invoke-virtual {p2}, Laa/a;->getDistance()F

    move-result p2

    iget-object p3, p0, Lorg/ITsMagic/Atlas/a;->c:Laa/c;

    iget p3, p3, Laa/c;->c:F

    add-float/2addr p3, v0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_4

    return v4

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v2
.end method

.method public final synthetic z(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/ITsMagic/Atlas/a;->s()Lorg/ITsMagic/Atlas/a;

    move-result-object v0

    iget v4, p4, Lorg/ITsMagic/Atlas/a$b;->a:I

    iget v5, p4, Lorg/ITsMagic/Atlas/a$b;->b:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/ITsMagic/Atlas/a;->r(LBb/b;Ljava/util/List;Ljava/util/List;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
