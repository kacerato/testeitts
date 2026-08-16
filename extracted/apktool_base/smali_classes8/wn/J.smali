.class public Lwn/J;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lxn/c;Lwn/q;Lwn/N;)Lwn/h;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "geomProvider",
            "builderCfg",
            "ctx"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, v0, Lwn/q;->a:Lwn/t;

    new-instance v13, Lwn/h;

    iget v6, v0, Lwn/q;->d:I

    iget v7, v0, Lwn/q;->e:I

    iget-object v8, v0, Lwn/q;->f:[F

    iget-object v9, v0, Lwn/q;->g:[F

    iget v10, v4, Lwn/t;->e:F

    iget v11, v4, Lwn/t;->f:F

    iget v12, v4, Lwn/t;->w:I

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lwn/h;-><init>(II[F[FFFI)V

    invoke-interface/range {p0 .. p0}, Lxn/c;->b()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxn/e;

    invoke-virtual {v5}, Lxn/e;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v14

    iget-boolean v6, v4, Lwn/t;->b:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lwn/q;->f:[F

    aget v7, v6, v3

    aget v6, v6, v2

    new-array v8, v2, [F

    aput v7, v8, v3

    aput v6, v8, v1

    iget-object v6, v0, Lwn/q;->g:[F

    aget v7, v6, v3

    aget v6, v6, v2

    new-array v9, v2, [F

    aput v7, v9, v3

    aput v6, v9, v1

    invoke-virtual {v5, v8, v9}, Lxn/e;->a([F[F)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxn/a$c;

    iget-object v5, v5, Lxn/a$c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v6

    div-int/lit8 v16, v6, 0x3

    iget v7, v4, Lwn/t;->g:F

    iget-object v11, v4, Lwn/t;->r:Lwn/a;

    move-object/from16 v6, p2

    move-object v8, v14

    move-object v9, v5

    move/from16 v10, v16

    invoke-static/range {v6 .. v11}, Lwn/m;->f(Lwn/N;FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;ILwn/a;)[I

    move-result-object v8

    iget v10, v4, Lwn/t;->i:I

    move-object v7, v5

    move-object v5, v13

    move-object v6, v14

    move/from16 v9, v16

    move-object/from16 v11, p2

    invoke-static/range {v5 .. v11}, Lwn/G;->f(Lwn/h;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[IIILwn/N;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lxn/e;->b()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v5

    div-int/lit8 v16, v5, 0x3

    iget v7, v4, Lwn/t;->g:F

    iget-object v11, v4, Lwn/t;->r:Lwn/a;

    move-object/from16 v6, p2

    move-object v8, v14

    move-object v9, v15

    move/from16 v10, v16

    invoke-static/range {v6 .. v11}, Lwn/m;->f(Lwn/N;FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;ILwn/a;)[I

    move-result-object v8

    iget v10, v4, Lwn/t;->i:I

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v9, v16

    move-object/from16 v11, p2

    invoke-static/range {v5 .. v11}, Lwn/G;->f(Lwn/h;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[IIILwn/N;)V

    goto/16 :goto_0

    :cond_2
    return-object v13
.end method
