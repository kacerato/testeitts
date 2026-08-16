.class public final Lcom/jme3/scene/plugins/OBJLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/plugins/OBJLoader$Vertex;,
        Lcom/jme3/scene/plugins/OBJLoader$Face;,
        Lcom/jme3/scene/plugins/OBJLoader$Group;,
        Lcom/jme3/scene/plugins/OBJLoader$ObjectGroup;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected curIndex:I

.field protected currentMatName:Ljava/lang/String;

.field protected currentObjectName:Ljava/lang/String;

.field protected geomIndex:I

.field private final groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/scene/plugins/OBJLoader$Group;",
            ">;"
        }
    .end annotation
.end field

.field protected final indexVertMap:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/scene/plugins/OBJLoader$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field protected key:Lcom/jme3/asset/ModelKey;

.field protected matList:Lcom/jme3/material/MaterialList;

.field protected final norms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field protected objName:Ljava/lang/String;

.field protected objNode:Lcom/jme3/scene/Node;

.field protected objectIndex:I

.field protected scan:Ljava/util/Scanner;

.field protected final texCoords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/math/Vector2f;",
            ">;"
        }
    .end annotation
.end field

.field protected final vertIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/jme3/scene/plugins/OBJLoader$Vertex;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final vertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/scene/plugins/OBJLoader$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field protected final verts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/scene/plugins/OBJLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->groups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0, v1}, Lcom/jme3/util/IntMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->indexVertMap:Lcom/jme3/util/IntMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    iput v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->objectIndex:I

    iput v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->geomIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    return-void
.end method

.method private materializeGroup(Lcom/jme3/scene/plugins/OBJLoader$Group;Lcom/jme3/scene/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/jme3/scene/plugins/OBJLoader$Group;->access$000(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Lcom/jme3/scene/plugins/OBJLoader$Group;->access$000(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/jme3/scene/plugins/OBJLoader;->createGeometry(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/jme3/scene/Geometry;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/jme3/scene/plugins/OBJLoader$Group;->access$100(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Lcom/jme3/scene/plugins/OBJLoader$Group;->access$100(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/scene/plugins/OBJLoader;->createGeometry(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/jme3/scene/Geometry;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public constructMesh(Ljava/util/ArrayList;)Lcom/jme3/scene/Mesh;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/scene/plugins/OBJLoader$Face;",
            ">;)",
            "Lcom/jme3/scene/Mesh;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/jme3/scene/Mesh;

    invoke-direct {v1}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v4, v7, :cond_4

    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jme3/scene/plugins/OBJLoader$Face;

    iget-object v10, v9, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    array-length v11, v10

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_2

    aget-object v13, v10, v12

    invoke-virtual {v0, v13}, Lcom/jme3/scene/plugins/OBJLoader;->findVertexIndex(Lcom/jme3/scene/plugins/OBJLoader$Vertex;)V

    if-nez v6, :cond_0

    iget-object v14, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    if-eqz v14, :cond_0

    move v6, v8

    :cond_0
    if-nez v5, :cond_1

    iget-object v13, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    if-eqz v13, :cond_1

    move v5, v8

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    iget-object v10, v9, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    array-length v10, v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    invoke-virtual {v0, v9}, Lcom/jme3/scene/plugins/OBJLoader;->quadToTriangle(Lcom/jme3/scene/plugins/OBJLoader$Face;)[Lcom/jme3/scene/plugins/OBJLoader$Face;

    move-result-object v9

    aget-object v10, v9, v3

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v9, v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v7, 0x3

    mul-int/2addr v4, v7

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v9, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    mul-int/2addr v5, v7

    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v5

    sget-object v10, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v10, v7, v5}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    goto :goto_3

    :cond_5
    move-object v5, v9

    :goto_3
    const/4 v10, 0x2

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    mul-int/2addr v6, v10

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v9

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v6, v10, v9}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_6
    iget-object v6, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/high16 v11, 0x10000

    if-lt v6, v11, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/2addr v6, v7

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v6

    sget-object v11, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v11, v7, v6}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    new-instance v11, Lcom/jme3/scene/mesh/IndexIntBuffer;

    invoke-direct {v11, v6}, Lcom/jme3/scene/mesh/IndexIntBuffer;-><init>(Ljava/nio/IntBuffer;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/2addr v6, v7

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v6

    sget-object v11, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v11, v7, v6}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    new-instance v11, Lcom/jme3/scene/mesh/IndexShortBuffer;

    invoke-direct {v11, v6}, Lcom/jme3/scene/mesh/IndexShortBuffer;-><init>(Ljava/nio/ShortBuffer;)V

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v12, v3

    :goto_5
    if-ge v12, v6, :cond_b

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/scene/plugins/OBJLoader$Face;

    iget-object v13, v13, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    array-length v14, v13

    if-eq v14, v7, :cond_8

    goto/16 :goto_6

    :cond_8
    aget-object v14, v13, v3

    aget-object v15, v13, v8

    aget-object v13, v13, v10

    iget v8, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v8, v7

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    iget-object v3, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v3, v7

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v3, v7

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_9

    iget-object v3, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    if-eqz v3, :cond_9

    iget v3, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v3, v7

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v3, v7

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v3, v7

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_9
    if-eqz v9, :cond_a

    iget-object v3, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    if-eqz v3, :cond_a

    iget v3, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v3, v10

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget v3, v3, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget v8, v8, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v3, v10

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget v3, v3, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget v8, v8, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v3, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    mul-int/2addr v3, v10

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget v3, v3, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {v9, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v8, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    iget v8, v8, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_a
    mul-int/lit8 v3, v12, 0x3

    iget v8, v14, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    invoke-virtual {v11, v3, v8}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/lit8 v8, v3, 0x1

    iget v14, v15, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    invoke-virtual {v11, v8, v14}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    add-int/2addr v3, v10

    iget v8, v13, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    invoke-virtual {v11, v3, v8}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    :goto_6
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_b
    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v2, v7, v4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->setStatic()V

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->updateCounts()V

    iget-object v2, v0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v0, Lcom/jme3/scene/plugins/OBJLoader;->indexVertMap:Lcom/jme3/util/IntMap;

    invoke-virtual {v2}, Lcom/jme3/util/IntMap;->clear()V

    const/4 v2, 0x0

    iput v2, v0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    return-object v1
.end method

.method public createGeometry(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/jme3/scene/Geometry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/jme3/scene/plugins/OBJLoader$Face;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/jme3/scene/Geometry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/jme3/scene/plugins/OBJLoader;->constructMesh(Ljava/util/ArrayList;)Lcom/jme3/scene/Mesh;

    move-result-object p1

    new-instance v0, Lcom/jme3/scene/Geometry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-geom-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->geomIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->geomIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/Material;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Light/Lighting.j3md"

    invoke-direct {p2, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v1, "Shininess"

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {p2, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    :cond_1
    invoke-virtual {v0, p2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {p2}, Lcom/jme3/material/Material;->isTransparent()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    :goto_1
    invoke-virtual {p2}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Lighting"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "OBJ mesh {0} doesn\'t contain normals! It might not display correctly"

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No geometry data to generate mesh"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findVertexIndex(Lcom/jme3/scene/plugins/OBJLoader$Vertex;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    iput v0, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->indexVertMap:Lcom/jme3/util/IntMap;

    iget v1, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->index:I

    invoke-virtual {v0, v1, p1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->reset()V

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    check-cast v0, Lcom/jme3/asset/ModelKey;

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {v0}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {v0}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {v1}, Lcom/jme3/asset/AssetKey;->getExtension()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v3, v1

    const/4 v1, 0x1

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/jme3/scene/Node;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->objName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-objnode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    new-instance v0, Lcom/jme3/scene/plugins/OBJLoader$Group;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jme3/scene/plugins/OBJLoader$Group;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->groups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v3

    instance-of v3, v3, Lcom/jme3/asset/ModelKey;

    if-eqz v3, :cond_9

    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance p1, Ljava/util/Scanner;

    invoke-direct {p1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readLine()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    iget-object p1, p0, Lcom/jme3/scene/plugins/OBJLoader;->groups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/plugins/OBJLoader$Group;

    if-ne v2, v0, :cond_4

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-direct {p0, v2, v3}, Lcom/jme3/scene/plugins/OBJLoader;->materializeGroup(Lcom/jme3/scene/plugins/OBJLoader$Group;Lcom/jme3/scene/Node;)V

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/jme3/scene/Node;

    invoke-static {v2}, Lcom/jme3/scene/plugins/OBJLoader$Group;->access$200(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/jme3/scene/plugins/OBJLoader;->materializeGroup(Lcom/jme3/scene/plugins/OBJLoader$Group;Lcom/jme3/scene/Node;)V

    invoke-virtual {v3}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v2

    if-ne v2, v1, :cond_5

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v2

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v2

    if-le v2, v1, :cond_3

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result p1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p1, p0, Lcom/jme3/scene/plugins/OBJLoader;->objNode:Lcom/jme3/scene/Node;

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Model assets must be loaded using a ModelKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadMtlLib(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mtl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/jme3/asset/AssetKey;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    invoke-virtual {v2}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v1, v0}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MaterialList;

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->key:Lcom/jme3/asset/ModelKey;

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Cannot locate {0} for model {1}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected .mtl file! Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextStatement()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    const-string v1, ".*\r{0,1}\n"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->skip(Ljava/lang/String;)Ljava/util/Scanner;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public quadToTriangle(Lcom/jme3/scene/plugins/OBJLoader$Face;)[Lcom/jme3/scene/plugins/OBJLoader$Face;
    .locals 10

    new-instance v0, Lcom/jme3/scene/plugins/OBJLoader$Face;

    invoke-direct {v0}, Lcom/jme3/scene/plugins/OBJLoader$Face;-><init>()V

    new-instance v1, Lcom/jme3/scene/plugins/OBJLoader$Face;

    invoke-direct {v1}, Lcom/jme3/scene/plugins/OBJLoader$Face;-><init>()V

    filled-new-array {v0, v1}, [Lcom/jme3/scene/plugins/OBJLoader$Face;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x3

    new-array v4, v3, [Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iput-object v4, v2, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    const/4 v2, 0x1

    aget-object v4, v0, v2

    new-array v5, v3, [Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iput-object v5, v4, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iget-object p1, p1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aget-object v4, p1, v1

    aget-object v5, p1, v2

    const/4 v6, 0x2

    aget-object v7, p1, v6

    aget-object p1, p1, v3

    iget-object v3, v4, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget-object v8, v7, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v8}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v3

    iget-object v8, v5, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    iget-object v9, p1, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    invoke-virtual {v8, v9}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v8

    cmpg-float v3, v3, v8

    if-gez v3, :cond_0

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v4, v3, v1

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v5, v3, v2

    aput-object p1, v3, v6

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v5, v3, v1

    aput-object v7, v3, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object p1, v1, v6

    goto :goto_0

    :cond_0
    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v4, v3, v1

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v5, v3, v2

    aput-object v7, v3, v6

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v4, v3, v1

    aput-object v7, v3, v2

    aget-object v1, v0, v2

    iget-object v1, v1, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object p1, v1, v6

    :goto_0
    return-object v0
.end method

.method public readFace()V
    .locals 11

    new-instance v0, Lcom/jme3/scene/plugins/OBJLoader$Face;

    invoke-direct {v0}, Lcom/jme3/scene/plugins/OBJLoader$Face;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v2, :cond_9

    aget-object v7, v1, v4

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-ne v8, v6, :cond_0

    aget-object v5, v7, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v7, v3

    :goto_1
    move v9, v7

    goto/16 :goto_3

    :cond_0
    array-length v8, v7

    if-ne v8, v5, :cond_1

    aget-object v5, v7, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v9, v7

    move v7, v3

    goto :goto_3

    :cond_1
    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    aget-object v8, v7, v6

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v7, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v5, v7, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_2
    move v7, v5

    move v5, v8

    goto :goto_3

    :cond_2
    array-length v8, v7

    if-ne v8, v9, :cond_3

    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v5, v7, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v9, v3

    goto :goto_2

    :cond_3
    move v5, v3

    move v7, v5

    goto :goto_1

    :goto_3
    if-gez v5, :cond_4

    iget-object v8, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v5, v8, 0x1

    :cond_4
    if-gez v9, :cond_5

    iget-object v8, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v9

    add-int/lit8 v9, v8, 0x1

    :cond_5
    if-gez v7, :cond_6

    iget-object v8, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v7

    add-int/lit8 v7, v8, 0x1

    :cond_6
    new-instance v8, Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    invoke-direct {v8}, Lcom/jme3/scene/plugins/OBJLoader$Vertex;-><init>()V

    iget-object v10, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    sub-int/2addr v5, v6

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    iput-object v5, v8, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->v:Lcom/jme3/math/Vector3f;

    if-lez v9, :cond_7

    iget-object v5, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector2f;

    iput-object v5, v8, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vt:Lcom/jme3/math/Vector2f;

    :cond_7
    if-lez v7, :cond_8

    iget-object v5, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Vector3f;

    iput-object v5, v8, Lcom/jme3/scene/plugins/OBJLoader$Vertex;->vn:Lcom/jme3/math/Vector3f;

    :cond_8
    iget-object v5, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_e

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v5, :cond_a

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iput-object v1, v0, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    :goto_4
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    iget-object v1, v0, Lcom/jme3/scene/plugins/OBJLoader$Face;->verticies:[Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/plugins/OBJLoader$Vertex;

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/plugins/OBJLoader$Group;

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v1}, Lcom/jme3/scene/plugins/OBJLoader$Group;->access$000(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/jme3/scene/plugins/OBJLoader$Group;->access$000(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    invoke-static {v1}, Lcom/jme3/scene/plugins/OBJLoader$Group;->access$100(Lcom/jme3/scene/plugins/OBJLoader$Group;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    return-void

    :cond_e
    :goto_6
    sget-object v0, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    const-string v1, "Edge or polygon detected in OBJ. Ignored."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public readLine()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->nextStatement()Z

    move-result v0

    return v0

    :cond_1
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readVector3()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string v1, "vn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readVector3()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string v1, "vt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readVector2()Lcom/jme3/math/Vector2f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->readFace()V

    goto :goto_0

    :cond_5
    const-string v1, "usemtl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "mtllib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/plugins/OBJLoader;->loadMtlLib(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "smoothing groups are not supported, statement ignored: {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->nextStatement()Z

    move-result v0

    return v0

    :cond_8
    const-string v1, "mg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "merge groups are not supported, statement ignored: {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->nextStatement()Z

    move-result v0

    return v0

    :cond_9
    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->groups:Ljava/util/ArrayList;

    new-instance v1, Lcom/jme3/scene/plugins/OBJLoader$Group;

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jme3/scene/plugins/OBJLoader$Group;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_a
    sget-object v1, Lcom/jme3/scene/plugins/OBJLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unknown statement in OBJ! {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/OBJLoader;->nextStatement()Z

    move-result v0

    return v0
.end method

.method public readVector2()Lcom/jme3/math/Vector2f;
    .locals 3

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector2f;->setX(F)Lcom/jme3/math/Vector2f;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector2f;->setY(F)Lcom/jme3/math/Vector2f;

    return-object v0
.end method

.method public readVector3()Lcom/jme3/math/Vector3f;
    .locals 4

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->verts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->norms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->vertIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->indexVertMap:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->currentMatName:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->matList:Lcom/jme3/material/MaterialList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->curIndex:I

    iput v1, p0, Lcom/jme3/scene/plugins/OBJLoader;->geomIndex:I

    iput-object v0, p0, Lcom/jme3/scene/plugins/OBJLoader;->scan:Ljava/util/Scanner;

    return-void
.end method
