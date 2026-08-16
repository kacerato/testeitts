.class public Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;
.super Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;


# static fields
.field public static final d:I = 0x3

.field public static final e:I = 0x3

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2


# instance fields
.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-indexed-mesh"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionBuffer",
            "indexBuffer"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>()V

    .line 3
    const-string v0, "positionBuffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "indexBuffer"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "positionBuffer must not be empty"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 6
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "indexBuffer must not be empty"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 7
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v3, "positionBuffer capacity must be a multiple of 3"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 8
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const-string v0, "indexBuffer capacity must be a multiple of 3"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 9
    invoke-virtual {p0, p1, p2, v2}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->a(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->g()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "positionBuffer",
            "indexBuffer",
            "skipOptimization"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;-><init>()V

    .line 12
    const-string v0, "positionBuffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 13
    const-string v0, "indexBuffer"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 14
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "positionBuffer must not be empty"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 15
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "indexBuffer must not be empty"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 16
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v3, "positionBuffer capacity must be a multiple of 3"

    invoke-static {v0, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 17
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    const-string v0, "indexBuffer capacity must be a multiple of 3"

    invoke-static {v1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->a(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)V

    .line 19
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->g()V

    return-void
.end method

.method private static native nativeBuildCleanMesh(JIJIJIJII)Z
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
            "sourcePositionsPointer",
            "sourcePositionCapacity",
            "sourceIndicesPointer",
            "sourceIndexCapacity",
            "cleanedPositionsPointer",
            "cleanedPositionCapacity",
            "cleanedIndicesPointer",
            "cleanedIndexCapacity",
            "cleanMode"
        }
    .end annotation
.end method

.method private static native nativePlanCleanMesh(JIJI)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourcePositionsPointer",
            "sourcePositionCapacity",
            "sourceIndicesPointer",
            "sourceIndexCapacity"
        }
    .end annotation
.end method


# virtual methods
.method public final a(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourcePositions",
            "sourceIndices",
            "skipOptimization"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz p3, :cond_0

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v8

    move-wide v3, v9

    move-wide v6, v11

    invoke-static/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->nativePlanCleanMesh(JIJI)[I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_1

    array-length v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v14

    :goto_0
    const-string v6, "native mesh cleaning plan is invalid"

    invoke-static {v5, v6}, Lif/E;->H(ZLjava/lang/String;)Z

    aget v13, v3, v14

    aget v15, v3, v4

    const/4 v5, 0x2

    aget v7, v3, v5

    if-lez v7, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v14

    :goto_1
    const-string v6, "mesh has no valid triangles after cleaning"

    invoke-static {v3, v6}, Lif/E;->H(ZLjava/lang/String;)Z

    if-lez v15, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v14

    :goto_2
    const-string v6, "mesh has no valid vertices after cleaning"

    invoke-static {v3, v6}, Lif/E;->H(ZLjava/lang/String;)Z

    if-nez v13, :cond_4

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void

    :cond_4
    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v8, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    if-ne v13, v5, :cond_5

    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v3, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v4

    move-object v6, v3

    move-wide/from16 v16, v4

    goto :goto_3

    :cond_5
    if-ne v13, v4, :cond_6

    const-wide/16 v3, 0x0

    move-object v6, v1

    move-wide/from16 v16, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v18

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v19

    move-wide v1, v9

    move-wide v4, v11

    move-object v12, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move-object v10, v8

    move-wide/from16 v7, v16

    move v9, v15

    move-object v15, v10

    move-wide/from16 v10, v19

    move-object v0, v12

    move/from16 v12, v18

    invoke-static/range {v1 .. v13}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->nativeBuildCleanMesh(JIJIJIJII)Z

    move-result v1

    const-string v2, "native mesh cleaning failed"

    invoke-static {v1, v2}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-virtual {v0, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {v15, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object v15, v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown native mesh cleaning mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cloner",
            "original"
        }
    .end annotation

    check-cast p2, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->g()V

    goto :goto_2

    :cond_2
    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    :goto_2
    return-void
.end method

.method public copyIndices()Ljava/nio/IntBuffer;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public copyVertexPositions()Ljava/nio/FloatBuffer;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public countTriangles()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public countVertices()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->e()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public final g()V
    .locals 10

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numVertices:I

    iput v1, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->numTriangles:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexStride:I

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indexStride:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getNativeAllocationPointer()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    const-string v9, "native vertex position allocation must exist"

    invoke-static {v6, v9}, Lif/E;->H(ZLjava/lang/String;)Z

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    move v7, v8

    :cond_2
    const-string v4, "native index allocation must exist"

    invoke-static {v7, v4}, Lif/E;->H(ZLjava/lang/String;)Z

    invoke-super {p0, v2, v3, v0, v1}, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->createMeshFromIntPointers(JJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->vertexPositions:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;->indices:Lcom/jme3/scene/mesh/IndexBuffer;

    :cond_3
    :goto_1
    return-void
.end method

.method public h()Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Lcom/jme3/bullet/collision/shapes/infos/IndexedMesh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->h()Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;->h()Lcom/itsmagic/engine/Engines/Physics/DTOs/NativeIndexedMesh;

    move-result-object v0

    return-object v0
.end method
