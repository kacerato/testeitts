.class public LUg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LUg/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LUg/f;->a:Ljava/util/List;

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "oldGlobal"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IILvc/q;Lvc/q;Lvc/p;Lvc/q;Lvc/q;Lvc/p;I)I
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
            0x0
        }
        names = {
            "map",
            "oldGlobal",
            "localIndex",
            "vtx",
            "nrm",
            "uv",
            "outV",
            "outN",
            "outUV",
            "nextNewIndex"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    invoke-virtual {p3, p2}, Lvc/q;->m(I)F

    move-result p0

    invoke-virtual {p3, p2}, Lvc/q;->n(I)F

    move-result p1

    invoke-virtual {p3, p2}, Lvc/q;->o(I)F

    move-result p3

    invoke-virtual {p6, p0, p1, p3}, Lvc/q;->s(FFF)V

    invoke-virtual {p4, p2}, Lvc/q;->m(I)F

    move-result p0

    invoke-virtual {p4, p2}, Lvc/q;->n(I)F

    move-result p1

    invoke-virtual {p4, p2}, Lvc/q;->o(I)F

    move-result p3

    invoke-virtual {p7, p0, p1, p3}, Lvc/q;->s(FFF)V

    invoke-virtual {p5, p2}, Lvc/p;->i(I)F

    move-result p0

    invoke-virtual {p5, p2}, Lvc/p;->j(I)F

    move-result p1

    invoke-virtual {p8, p0, p1}, Lvc/p;->m(FF)V

    return p9
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "baseIndex",
            "value",
            "count"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(IFI)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendererList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LUg/h;",
            ">;)",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;"
        }
    .end annotation

    iget-object v0, p0, LUg/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1}, LUg/f;->v(Ljava/util/List;)V

    invoke-virtual {p0}, LUg/f;->p()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LUg/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LUg/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, LUg/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final g(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    if-lez p1, :cond_0

    invoke-static {p1}, Luc/a;->j(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "x",
            "y"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(FF)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "x",
            "y",
            "z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(FFF)V

    :cond_0
    return-void
.end method

.method public final k(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_0
    return-void
.end method

.method public final l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_0
    return-void
.end method

.method public final m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "value",
            "count"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    :cond_0
    return-void
.end method

.method public final n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/jme3/math/Vector3f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/jme3/math/Vector3f;)V

    :cond_0
    return-void
.end method

.method public final o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;FI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "value",
            "count"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->putFill(FI)V

    :cond_0
    return-void
.end method

.method public final p()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 29

    move-object/from16 v0, p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iget-object v2, v0, LUg/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LUg/h;

    invoke-virtual {v5}, LUg/h;->a()LUg/g;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, LUg/g;->i()Lvc/q;

    move-result-object v5

    invoke-virtual {v5}, Lvc/q;->d()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-object v1

    :cond_2
    invoke-static {v4}, Luc/a;->o(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, LUg/f;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)V

    iget-object v6, v0, LUg/f;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    move v8, v7

    move v9, v8

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const v15, 0x2b8cbccc    # 1.0E-12f

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LUg/h;

    invoke-virtual {v10}, LUg/h;->a()LUg/g;

    move-result-object v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, LUg/g;->i()Lvc/q;

    move-result-object v11

    invoke-virtual {v10}, LUg/g;->g()Lvc/n;

    move-result-object v10

    move v12, v3

    :goto_2
    invoke-virtual {v10}, Lvc/n;->b()I

    move-result v13

    if-ge v12, v13, :cond_5

    invoke-virtual {v10, v12}, Lvc/n;->h(I)I

    move-result v13

    invoke-virtual {v10, v12}, Lvc/n;->i(I)I

    move-result v14

    invoke-virtual {v10, v12}, Lvc/n;->j(I)I

    move-result v2

    invoke-virtual {v11, v13}, Lvc/q;->m(I)F

    move-result v16

    invoke-virtual {v11, v13}, Lvc/q;->n(I)F

    move-result v17

    invoke-virtual {v11, v13}, Lvc/q;->o(I)F

    move-result v18

    invoke-virtual {v11, v14}, Lvc/q;->m(I)F

    move-result v19

    invoke-virtual {v11, v14}, Lvc/q;->n(I)F

    move-result v20

    invoke-virtual {v11, v14}, Lvc/q;->o(I)F

    move-result v21

    invoke-virtual {v11, v2}, Lvc/q;->m(I)F

    move-result v22

    invoke-virtual {v11, v2}, Lvc/q;->n(I)F

    move-result v23

    invoke-virtual {v11, v2}, Lvc/q;->o(I)F

    move-result v24

    sub-float v19, v19, v16

    sub-float v20, v20, v17

    sub-float v21, v21, v18

    sub-float v22, v22, v16

    sub-float v23, v23, v17

    sub-float v24, v24, v18

    mul-float v16, v20, v24

    mul-float v17, v21, v23

    sub-float v16, v16, v17

    mul-float v21, v21, v22

    mul-float v24, v24, v19

    sub-float v21, v21, v24

    mul-float v19, v19, v23

    mul-float v20, v20, v22

    sub-float v19, v19, v20

    mul-float v16, v16, v16

    mul-float v21, v21, v21

    add-float v16, v16, v21

    mul-float v19, v19, v19

    add-float v16, v16, v19

    cmpg-float v16, v16, v15

    if-gtz v16, :cond_4

    goto :goto_3

    :cond_4
    add-int/2addr v13, v9

    invoke-static {v4, v13}, LUg/f;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)I

    move-result v13

    add-int/2addr v7, v13

    add-int/2addr v14, v9

    invoke-static {v4, v14}, LUg/f;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)I

    move-result v13

    add-int/2addr v7, v13

    add-int/2addr v2, v9

    invoke-static {v4, v2}, LUg/f;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)I

    move-result v2

    add-int/2addr v7, v2

    add-int/lit8 v8, v8, 0x3

    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Lvc/q;->d()I

    move-result v2

    add-int/2addr v9, v2

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v7, :cond_7

    if-nez v8, :cond_8

    :cond_7
    move v0, v3

    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_8
    invoke-static {v7}, Luc/a;->w(I)Lvc/q;

    move-result-object v2

    invoke-static {v7}, Luc/a;->w(I)Lvc/q;

    move-result-object v14

    invoke-static {v7}, Luc/a;->u(I)Lvc/p;

    move-result-object v13

    invoke-static {v8}, Luc/a;->o(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v12

    invoke-static {v4, v5}, LUg/f;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)V

    iget-object v5, v0, LUg/f;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v5, v3

    move/from16 v17, v5

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LUg/h;

    invoke-virtual {v6}, LUg/h;->a()LUg/g;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, LUg/g;->i()Lvc/q;

    move-result-object v11

    invoke-virtual {v6}, LUg/g;->c()Lvc/q;

    move-result-object v18

    invoke-virtual {v6}, LUg/g;->a()Lvc/p;

    move-result-object v19

    invoke-virtual {v6}, LUg/g;->g()Lvc/n;

    move-result-object v10

    move v8, v3

    move v9, v5

    :goto_5
    invoke-virtual {v10}, Lvc/n;->b()I

    move-result v5

    if-ge v8, v5, :cond_e

    invoke-virtual {v10, v8}, Lvc/n;->h(I)I

    move-result v7

    invoke-virtual {v10, v8}, Lvc/n;->i(I)I

    move-result v6

    invoke-virtual {v10, v8}, Lvc/n;->j(I)I

    move-result v5

    invoke-virtual {v11, v7}, Lvc/q;->m(I)F

    move-result v20

    invoke-virtual {v11, v7}, Lvc/q;->n(I)F

    move-result v21

    invoke-virtual {v11, v7}, Lvc/q;->o(I)F

    move-result v22

    invoke-virtual {v11, v6}, Lvc/q;->m(I)F

    move-result v23

    invoke-virtual {v11, v6}, Lvc/q;->n(I)F

    move-result v24

    invoke-virtual {v11, v6}, Lvc/q;->o(I)F

    move-result v25

    invoke-virtual {v11, v5}, Lvc/q;->m(I)F

    move-result v26

    invoke-virtual {v11, v5}, Lvc/q;->n(I)F

    move-result v27

    invoke-virtual {v11, v5}, Lvc/q;->o(I)F

    move-result v28

    sub-float v23, v23, v20

    sub-float v24, v24, v21

    sub-float v25, v25, v22

    sub-float v26, v26, v20

    sub-float v27, v27, v21

    sub-float v28, v28, v22

    mul-float v20, v24, v28

    mul-float v21, v25, v27

    sub-float v20, v20, v21

    mul-float v25, v25, v26

    mul-float v28, v28, v23

    sub-float v25, v25, v28

    mul-float v23, v23, v27

    mul-float v24, v24, v26

    sub-float v23, v23, v24

    mul-float v20, v20, v20

    mul-float v25, v25, v25

    add-float v20, v20, v25

    mul-float v23, v23, v23

    add-float v20, v20, v23

    cmpg-float v20, v20, v15

    if-gtz v20, :cond_a

    move/from16 v20, v8

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object v15, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    goto/16 :goto_8

    :cond_a
    add-int v20, v17, v7

    move/from16 v21, v5

    move-object v5, v4

    move/from16 v22, v6

    move/from16 v6, v20

    move/from16 v20, v8

    move-object v8, v11

    move/from16 v23, v9

    move-object/from16 v9, v18

    move-object/from16 v24, v10

    move-object/from16 v10, v19

    move-object/from16 v25, v11

    move-object v11, v2

    move-object v15, v12

    move-object v12, v14

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move/from16 v14, v23

    invoke-static/range {v5 .. v14}, LUg/f;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IILvc/q;Lvc/q;Lvc/p;Lvc/q;Lvc/q;Lvc/p;I)I

    move-result v14

    move/from16 v5, v23

    if-ne v14, v5, :cond_b

    add-int/lit8 v9, v5, 0x1

    move v13, v9

    goto :goto_6

    :cond_b
    move v13, v5

    :goto_6
    add-int v6, v17, v22

    move-object v5, v4

    move/from16 v7, v22

    move-object/from16 v8, v25

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object v11, v2

    move-object/from16 v12, v28

    move/from16 v22, v13

    move-object/from16 v13, v27

    move v3, v14

    move/from16 v14, v22

    invoke-static/range {v5 .. v14}, LUg/f;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IILvc/q;Lvc/q;Lvc/p;Lvc/q;Lvc/q;Lvc/p;I)I

    move-result v14

    move/from16 v5, v22

    if-ne v14, v5, :cond_c

    add-int/lit8 v13, v5, 0x1

    goto :goto_7

    :cond_c
    move v13, v5

    :goto_7
    add-int v6, v17, v21

    move-object v5, v4

    move/from16 v7, v21

    move-object/from16 v8, v25

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object v11, v2

    move-object/from16 v12, v28

    move/from16 v21, v13

    move-object/from16 v13, v27

    move v0, v14

    move/from16 v14, v21

    invoke-static/range {v5 .. v14}, LUg/f;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IILvc/q;Lvc/q;Lvc/p;Lvc/q;Lvc/q;Lvc/p;I)I

    move-result v5

    move/from16 v13, v21

    if-ne v5, v13, :cond_d

    add-int/lit8 v13, v13, 0x1

    :cond_d
    move v9, v13

    invoke-virtual {v15, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    invoke-virtual {v15, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    invoke-virtual {v15, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->put(I)V

    :goto_8
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v0, p0

    move-object v12, v15

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    const/4 v3, 0x0

    const v15, 0x2b8cbccc    # 1.0E-12f

    goto/16 :goto_5

    :cond_e
    move v5, v9

    move-object/from16 v25, v11

    move-object v15, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    invoke-virtual/range {v25 .. v25}, Lvc/q;->d()I

    move-result v0

    add-int v17, v17, v0

    move-object/from16 v0, p0

    const/4 v3, 0x0

    const v15, 0x2b8cbccc    # 1.0E-12f

    goto/16 :goto_4

    :cond_f
    move v0, v3

    move-object v15, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    invoke-virtual {v2, v0}, Lvc/q;->r(I)V

    move-object/from16 v3, v28

    invoke-virtual {v3, v0}, Lvc/q;->r(I)V

    move-object/from16 v4, v27

    invoke-virtual {v4, v0}, Lvc/p;->l(I)V

    invoke-virtual {v15, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r2(Lvc/q;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z1(Lvc/q;)V

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n2(Lvc/p;)V

    invoke-virtual {v1, v15}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-object v1

    :goto_9
    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-object v1
.end method

.method public final r(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    :cond_0
    return-void
.end method

.method public final s(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "idx",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    :cond_0
    return-void
.end method

.method public final t(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "idx",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_0
    return-void
.end method

.method public final u(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ILcom/jme3/math/Vector3f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "idx",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(ILcom/jme3/math/Vector3f;)V

    :cond_0
    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rendererList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LUg/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUg/h;

    invoke-virtual {v1}, LUg/h;->a()LUg/g;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LUg/f;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
