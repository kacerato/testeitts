.class public Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "batcher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rendererList",
            "requireTBN"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LN8/f;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->d:Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->n(Ljava/util/List;)V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 28
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
            "bakeVertices",
            "bakeNormals",
            "bakeTangents",
            "bakeBitangents",
            "vertices",
            "normals",
            "tangents",
            "bitangents",
            "matrix",
            "firstVerticeIndex"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    if-eqz v0, :cond_3

    const-wide/16 v4, -0x1

    move-object/from16 v6, p0

    invoke-static {v6, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v6

    move-object/from16 v8, p1

    invoke-static {v8, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v8

    move-object/from16 v10, p2

    invoke-static {v10, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v10

    move-object/from16 v12, p3

    invoke-static {v12, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v12

    invoke-static {v0, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v14

    invoke-static {v1, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v16

    invoke-static {v2, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v18

    invoke-static {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v20

    invoke-virtual/range {p8 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v22

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    move/from16 v24, v1

    goto :goto_0

    :cond_0
    move/from16 v24, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p6 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    move/from16 v25, v1

    goto :goto_1

    :cond_1
    move/from16 v25, v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual/range {p7 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    :cond_2
    move/from16 v26, v0

    move/from16 v27, p9

    invoke-static/range {v6 .. v27}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->nativeUpdateModel(JJJJJJJJJIIII)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertices can\'t be null inside batchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 16
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
            "bakeVertices",
            "bakeNormals",
            "vertices",
            "normals",
            "matrix",
            "firstVerticeIndex"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_1

    const-wide/16 v2, -0x1

    move-object/from16 v4, p0

    invoke-static {v4, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v4

    move-object/from16 v6, p1

    invoke-static {v6, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v6

    invoke-static {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v8

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v10

    invoke-virtual/range {p4 .. p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v12

    if-eqz v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    :goto_0
    move v14, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move/from16 v15, p5

    invoke-static/range {v4 .. v15}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->nativeUpdateModelWithoutTBN(JJJJJII)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vertices can\'t be null inside batchers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native nativeUpdateModel(JJJJJJJJJIIII)V
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
            0x0
        }
        names = {
            "bakeVertices",
            "bakeNormals",
            "bakeTangens",
            "bakeBitangents",
            "vertices",
            "normals",
            "tangentPointer",
            "bitangentPointer",
            "matrix",
            "bufferNormalsCount",
            "bufferTangentCount",
            "bufferBitangentsCount",
            "firstVerticeIndex"
        }
    .end annotation
.end method

.method public static native nativeUpdateModelWithoutTBN(JJJJJII)V
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
            "bakeVertices",
            "bakeNormals",
            "vertices",
            "normals",
            "matrix",
            "bufferNormalsCount",
            "firstVerticeIndex"
        }
    .end annotation
.end method


# virtual methods
.method public final c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFI)V
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

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->d:Z

    return v0
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;F)V
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

.method public final g(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;FF)V
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

.method public final h(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;FFF)V
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

.method public final i(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
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

.method public final j(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
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

.method public final k(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
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

.method public final l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;FI)V
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

.method public m()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 20
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
            "LN8/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v3, 0x0

    move v0, v3

    move v4, v0

    move v5, v4

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LN8/f;

    iget-object v7, v6, LN8/f;->r:LN8/b;

    iget-object v6, v6, LN8/f;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v8

    iput v4, v7, LN8/b;->a:I

    div-int/lit8 v9, v4, 0x3

    mul-int/lit8 v9, v9, 0x2

    iput v9, v7, LN8/b;->b:I

    add-int/2addr v4, v8

    :cond_0
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v6

    add-int/2addr v5, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Luc/a;->j(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-static {v4}, Luc/a;->j(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    div-int/lit8 v7, v4, 0x3

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Luc/a;->j(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-static {v5}, Luc/a;->o(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v5

    iget-boolean v8, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->d:Z

    if-eqz v8, :cond_3

    invoke-static {v4}, Luc/a;->j(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iget-object v8, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v8, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    move v4, v3

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LN8/f;

    iget-object v8, v6, LN8/f;->r:LN8/b;

    iget-object v9, v6, LN8/f;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v10

    if-lez v10, :cond_4

    :try_start_0
    iget v10, v8, LN8/b;->a:I

    div-int/lit8 v10, v10, 0x3

    invoke-virtual {v5, v0, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->putIncremented(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v10

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v11

    invoke-static {v10, v11}, LNc/b;->Z0(II)I

    move-result v10

    if-lez v10, :cond_5

    iget v8, v8, LN8/b;->b:I

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {v1, v7, v0, v10}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->k(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    :cond_5
    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v10

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v11

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v12

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v14

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v15

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v16

    iget-object v0, v6, LN8/f;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v6, v6, LN8/f;->r:LN8/b;

    iget v6, v6, LN8/b;->a:I

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v6

    invoke-static/range {v10 .. v19}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->a(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    goto :goto_4

    :cond_6
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v10

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v11

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v12

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v13

    iget-object v14, v6, LN8/f;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v0, v6, LN8/f;->r:LN8/b;

    iget v15, v0, LN8/b;->a:I

    invoke-static/range {v10 .. v15}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-void
.end method

.method public final o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
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

.method public final p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IF)V
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

.method public final q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
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

.method public r(LN8/f;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    iget-object v0, p1, LN8/f;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    iget-object v10, p1, LN8/f;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p1, LN8/f;->r:LN8/b;

    iget v11, p1, LN8/b;->a:I

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->a(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->c:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    iget-object v6, p1, LN8/f;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p1, LN8/f;->r:LN8/b;

    iget v7, p1, LN8/b;->a:I

    invoke-static/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Batching/BakeBuilder;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    :goto_0
    return-void
.end method
