.class public final Lorg/ITsMagic/Atlas/d$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ITsMagic/Atlas/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field public final f:[I


# direct methods
.method public constructor <init>([J[J[J[J[J[I)V
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
            "verticesPointers",
            "trianglesPointers",
            "nodeBoundsPointers",
            "nodeMetaPointers",
            "triangleOrderPointers",
            "nodeCounts"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ITsMagic/Atlas/d$e;->a:[J

    iput-object p2, p0, Lorg/ITsMagic/Atlas/d$e;->b:[J

    iput-object p3, p0, Lorg/ITsMagic/Atlas/d$e;->c:[J

    iput-object p4, p0, Lorg/ITsMagic/Atlas/d$e;->d:[J

    iput-object p5, p0, Lorg/ITsMagic/Atlas/d$e;->e:[J

    iput-object p6, p0, Lorg/ITsMagic/Atlas/d$e;->f:[I

    return-void
.end method

.method public static a(Ljava/util/List;)Lorg/ITsMagic/Atlas/d$e;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meshes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;",
            ">;)",
            "Lorg/ITsMagic/Atlas/d$e;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->D()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->apply()V

    :cond_1
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->A()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->v()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m()I

    move-result v8

    if-gtz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->A()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v8, v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->v()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v8

    invoke-static {v8, v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->l()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-static {v8, v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->n()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v8

    invoke-static {v8, v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->p()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v8

    invoke-static {v8, v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/BVHMesh;->m()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p0, Lorg/ITsMagic/Atlas/d$e;

    invoke-static {v0}, Lorg/ITsMagic/Atlas/d$e;->c(Ljava/util/List;)[J

    move-result-object v8

    invoke-static {v1}, Lorg/ITsMagic/Atlas/d$e;->c(Ljava/util/List;)[J

    move-result-object v9

    invoke-static {v2}, Lorg/ITsMagic/Atlas/d$e;->c(Ljava/util/List;)[J

    move-result-object v10

    invoke-static {v3}, Lorg/ITsMagic/Atlas/d$e;->c(Ljava/util/List;)[J

    move-result-object v11

    invoke-static {v4}, Lorg/ITsMagic/Atlas/d$e;->c(Ljava/util/List;)[J

    move-result-object v12

    invoke-static {v5}, Lorg/ITsMagic/Atlas/d$e;->b(Ljava/util/List;)[I

    move-result-object v13

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lorg/ITsMagic/Atlas/d$e;-><init>([J[J[J[J[J[I)V

    return-object p0
.end method

.method public static b(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
