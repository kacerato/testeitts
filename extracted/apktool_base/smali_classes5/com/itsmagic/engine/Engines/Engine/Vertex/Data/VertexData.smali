.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private COLORS_ARRAY:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private INDICES_ARRAY:[I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private NORMALS_ARRAY:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private TANGENTS_ARRAY:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private TEX_COORD_ARRAY:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private VERTICES_ARRAY:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public fg:Lcom/itsmagic/engine/Utils/FileGUID;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private jointsArray:[I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private weightsArray:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    .line 12
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->f([I)V

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object v0

    invoke-static {v0}, LNc/b;->R([F)[I

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->COLORS_ARRAY:[F

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 20
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TANGENTS_ARRAY:[F

    :cond_7
    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexData"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    if-nez v0, :cond_0

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v2, v0

    div-int/lit8 v2, v2, 0x3

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    if-nez v0, :cond_1

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    array-length v3, v0

    array-length v0, v0

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    array-length v4, v4

    add-int/2addr v0, v4

    new-array v0, v0, [I

    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget v5, v5, v4

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_1
    iget-object v5, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3

    add-int v6, v4, v3

    aget v5, v5, v4

    add-int/2addr v5, v2

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    :cond_4
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    if-nez v0, :cond_5

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    :cond_6
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    if-nez v0, :cond_7

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    :cond_8
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    if-nez v0, :cond_9

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    :cond_a
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    if-nez v0, :cond_b

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    :cond_b
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    invoke-static {v0, v2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    :cond_c
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->COLORS_ARRAY:[F

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->COLORS_ARRAY:[F

    if-nez v0, :cond_d

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->COLORS_ARRAY:[F

    :cond_d
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->COLORS_ARRAY:[F

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->COLORS_ARRAY:[F

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->COLORS_ARRAY:[F

    :cond_e
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->f([I)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    array-length v1, v1

    array-length v0, v0

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, LIb/h;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TANGENTS_ARRAY:[F

    if-eqz v1, :cond_3

    array-length v1, v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v3, v3

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->l(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->c0()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->toArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TANGENTS_ARRAY:[F

    :cond_4
    return-void
.end method

.method public c()[I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    return-object v0
.end method

.method public d()[I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    return-object v0
.end method

.method public e()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    return-object v0
.end method

.method public f()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TANGENTS_ARRAY:[F

    return-object v0
.end method

.method public g()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    return-object v0
.end method

.method public h()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    return-object v0
.end method

.method public i()[F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    return-object v0
.end method

.method public j(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v5, v4

    if-ge v2, v5, :cond_5

    const/4 v5, 0x2

    if-nez v3, :cond_1

    aget v4, v4, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    mul-float/2addr v4, v6

    aput v4, v0, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    aget v4, v4, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    mul-float/2addr v4, v6

    aput v4, v0, v2

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_3

    aget v4, v4, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    mul-float/2addr v4, v6

    aput v4, v0, v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-le v3, v5, :cond_4

    move v3, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    if-eqz v0, :cond_0

    invoke-static {v0}, Luc/a;->m([F)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    if-eqz v0, :cond_1

    invoke-static {v0}, Luc/a;->m([F)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    if-eqz v0, :cond_2

    invoke-static {v0}, Luc/a;->m([F)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->c()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->f([I)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Part;->a()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public m([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "INDICES"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->INDICES_ARRAY:[I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->indices:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/Primitives/Indices;->f([I)V

    return-void
.end method

.method public n([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jointsArray"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    return-void
.end method

.method public o([F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v3, v2, v1

    iput v3, p1, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v3, v1, 0x1

    aget v4, v2, v3

    iput v4, p1, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v4, v1, 0x2

    aget v2, v2, v4

    iput v2, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, p1, p1}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    iget v5, p1, Lcom/jme3/math/Vector3f;->x:F

    aput v5, v2, v1

    iget v5, p1, Lcom/jme3/math/Vector3f;->y:F

    aput v5, v2, v3

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "NORMALS_ARRAY"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    return-void
.end method

.method public q([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "TANGENTS_ARRAY"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TANGENTS_ARRAY:[F

    return-void
.end method

.method public r([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "TEX_COORD_ARRAY"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TEX_COORD_ARRAY:[F

    return-void
.end method

.method public s([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "VERTICES_ARRAY"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    return-void
.end method

.method public t([F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weightsArray"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    sget-object v0, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->NORMALS_ARRAY:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MISSING NORMALS AT VERTEX LOAD, REGENERATE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->b()V

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->l(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->COLORS_ARRAY:[F

    if-eqz v1, :cond_2

    invoke-static {v1}, Luc/a;->m([F)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TANGENTS_ARRAY:[F

    if-eqz v1, :cond_3

    invoke-static {v1}, Luc/a;->m([F)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->weightsArray:[F

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    invoke-static {v1}, Luc/a;->m([F)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->jointsArray:[I

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    invoke-static {v1}, Luc/a;->n([I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->TANGENTS_ARRAY:[F

    if-eqz v3, :cond_6

    array-length v3, v3

    array-length v1, v1

    if-lt v3, v1, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(ZZ)V

    return-object v0
.end method

.method public w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v0, v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    array-length v5, v4

    if-ge v2, v5, :cond_5

    const/4 v5, 0x2

    if-nez v3, :cond_1

    aget v4, v4, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    add-float/2addr v4, v6

    aput v4, v0, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    aget v4, v4, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    add-float/2addr v4, v6

    aput v4, v0, v2

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_3

    aget v4, v4, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    add-float/2addr v4, v6

    aput v4, v0, v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-le v3, v5, :cond_4

    move v3, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/VertexData;->VERTICES_ARRAY:[F

    return-void
.end method
