.class public Lcom/ardor3d/util/geom/NormalGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/util/geom/NormalGenerator$Edge;,
        Lcom/ardor3d/util/geom/NormalGenerator$Triangle;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private _borderIndices:[Z

.field private final _compVect0:Lcom/ardor3d/math/Vector3;

.field private final _compVect1:Lcom/ardor3d/math/Vector3;

.field private _creaseAngle:F

.field private _destColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/math/ColorRGBA;",
            ">;"
        }
    .end annotation
.end field

.field private _destTexCoords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field private _destTris:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ardor3d/util/geom/NormalGenerator$Triangle;",
            ">;"
        }
    .end annotation
.end field

.field private _destVerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/math/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field private _edges:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ardor3d/util/geom/NormalGenerator$Edge;",
            ">;"
        }
    .end annotation
.end field

.field private _sourceColors:[Lcom/ardor3d/math/ColorRGBA;

.field private _sourceInds:[I

.field private _sourceTexCoords:[Lcom/ardor3d/math/Vector2;

.field private _sourceVerts:[Lcom/ardor3d/math/Vector3;

.field private _splitColors:[Lcom/ardor3d/math/ColorRGBA;

.field private _splitIndices:[I

.field private _splitMeshBorders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/LinkedList<",
            "Lcom/ardor3d/util/geom/NormalGenerator$Edge;",
            ">;>;"
        }
    .end annotation
.end field

.field private _splitMeshes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/LinkedList<",
            "Lcom/ardor3d/util/geom/NormalGenerator$Triangle;",
            ">;>;"
        }
    .end annotation
.end field

.field private _splitNormals:[Lcom/ardor3d/math/Vector3;

.field private _splitTexCoords:[Lcom/ardor3d/math/Vector2;

.field private _splitVerts:[Lcom/ardor3d/math/Vector3;

.field private _triangles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ardor3d/util/geom/NormalGenerator$Triangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/util/geom/NormalGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/geom/NormalGenerator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_compVect0:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_compVect1:Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public static synthetic access$000(Lcom/ardor3d/util/geom/NormalGenerator;)Lcom/ardor3d/math/Vector3;
    .locals 0

    iget-object p0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_compVect0:Lcom/ardor3d/math/Vector3;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/ardor3d/util/geom/NormalGenerator;)Lcom/ardor3d/math/Vector3;
    .locals 0

    iget-object p0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_compVect1:Lcom/ardor3d/math/Vector3;

    return-object p0
.end method

.method private checkAngle(Lcom/ardor3d/util/geom/NormalGenerator$Triangle;Lcom/ardor3d/util/geom/NormalGenerator$Triangle;)Z
    .locals 4

    iget-object p1, p1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->normal:Lcom/ardor3d/math/Vector3;

    iget-object p2, p2, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, p2}, Lcom/ardor3d/math/Vector3;->smallestAngleBetween(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide p1

    iget v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_creaseAngle:F

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v0, v2

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private cleanup()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_creaseAngle:F

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceVerts:[Lcom/ardor3d/math/Vector3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceVerts:[Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceColors:[Lcom/ardor3d/math/ColorRGBA;

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceColors:[Lcom/ardor3d/math/ColorRGBA;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceTexCoords:[Lcom/ardor3d/math/Vector2;

    if-eqz v0, :cond_1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceTexCoords:[Lcom/ardor3d/math/Vector2;

    :cond_1
    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceInds:[I

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_triangles:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_triangles:Ljava/util/LinkedList;

    :cond_2
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destColors:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destColors:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTexCoords:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTexCoords:Ljava/util/List;

    :cond_5
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTris:Ljava/util/LinkedList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTris:Ljava/util/LinkedList;

    :cond_6
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    :cond_7
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    :cond_9
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    :cond_b
    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitVerts:[Lcom/ardor3d/math/Vector3;

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitColors:[Lcom/ardor3d/math/ColorRGBA;

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitTexCoords:[Lcom/ardor3d/math/Vector2;

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitIndices:[I

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_borderIndices:[Z

    return-void
.end method

.method private computeNormalsAndIndices()V
    .locals 9

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    move v5, v1

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    iget-object v6, v4, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v6, v6, v5

    iget v7, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_2

    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    aget-object v6, v6, v7

    iget-object v7, v4, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitIndices:[I

    add-int/lit8 v7, v2, 0x1

    iget-object v8, v4, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v8, v8, v5

    iget v8, v8, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    aput v8, v6, v2

    :goto_1
    move v2, v7

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    iget v6, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    aget-object v6, v7, v6

    iget-object v7, v4, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->normal:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitIndices:[I

    add-int/lit8 v7, v2, 0x1

    iget-object v8, v4, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v8, v8, v5

    iget v8, v8, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    aput v8, v6, v2

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v0, v0, v1

    sget-object v2, Lcom/ardor3d/math/Vector3;->ZERO:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Vector3;->distanceSquared(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->normalizeLocal()Lcom/ardor3d/math/Vector3;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private connectEdge(Lcom/ardor3d/util/geom/NormalGenerator$Triangle;I)V
    .locals 8

    iget-object v0, p1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    invoke-virtual {v3, v0}, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->isConnectedTo(Lcom/ardor3d/util/geom/NormalGenerator$Edge;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v3, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->parent:Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    invoke-direct {p0, p1, v2}, Lcom/ardor3d/util/geom/NormalGenerator;->checkAngle(Lcom/ardor3d/util/geom/NormalGenerator$Triangle;Lcom/ardor3d/util/geom/NormalGenerator$Triangle;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget v2, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    invoke-direct {p0, v2}, Lcom/ardor3d/util/geom/NormalGenerator;->duplicateValues(I)V

    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    iget-object v3, p1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    add-int/lit8 v5, p2, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget-object v3, v3, v5

    iput v2, v3, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    iget v2, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    invoke-direct {p0, v2}, Lcom/ardor3d/util/geom/NormalGenerator;->duplicateValues(I)V

    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    iget-object v3, p1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    add-int/lit8 v5, p2, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget-object v3, v3, v5

    iput v2, v3, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    goto :goto_1

    :cond_1
    iget v2, v3, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    const/4 v5, -0x1

    if-le v2, v5, :cond_2

    iput v2, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    iget-object v6, p1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    add-int/lit8 v7, p2, 0x1

    rem-int/lit8 v7, v7, 0x3

    aget-object v6, v6, v7

    iput v2, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    :cond_2
    iget v2, v3, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    if-le v2, v5, :cond_3

    iput v2, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    iget-object v3, p1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    add-int/lit8 v5, p2, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget-object v3, v3, v5

    iput v2, v3, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    :cond_3
    :goto_1
    move v2, v4

    goto :goto_0

    :cond_4
    return-void
.end method

.method private createMeshSplit()V
    .locals 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTris:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_triangles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTris:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    iget-object v2, v0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    iget-object v0, v0, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NormalGenerator;->insertTriangle()Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTris:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private duplicateCreaseVertices()V
    .locals 10

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceVerts:[Lcom/ardor3d/math/Vector3;

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, -0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    iget v8, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    if-ne v8, v3, :cond_4

    iget-object v8, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_borderIndices:[Z

    iget v9, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_3

    aget v8, v0, v9

    if-ne v8, v3, :cond_4

    invoke-direct {p0, v9}, Lcom/ardor3d/util/geom/NormalGenerator;->duplicateValues(I)V

    iget v8, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    iget-object v9, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    aput v9, v0, v8

    goto :goto_1

    :cond_3
    aput v9, v0, v9

    :cond_4
    :goto_1
    iget v8, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    if-ne v8, v3, :cond_2

    iget-object v8, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_borderIndices:[Z

    iget v9, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_5

    aget v8, v0, v9

    if-ne v8, v3, :cond_2

    invoke-direct {p0, v9}, Lcom/ardor3d/util/geom/NormalGenerator;->duplicateValues(I)V

    iget v6, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    iget-object v8, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    aput v8, v0, v6

    goto :goto_0

    :cond_5
    aput v9, v0, v9

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_2
    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_borderIndices:[Z

    array-length v8, v6

    if-ge v4, v8, :cond_1

    aget-boolean v8, v6, v4

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    aget v9, v0, v4

    invoke-direct {p0, v8, v4, v9}, Lcom/ardor3d/util/geom/NormalGenerator;->replaceIndex(Lcom/ardor3d/util/geom/NormalGenerator$Triangle;II)V

    goto :goto_3

    :cond_7
    aget v8, v0, v4

    if-le v8, v3, :cond_8

    aput-boolean v7, v6, v4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private duplicateValues(I)V
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destColors:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTexCoords:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private fillBorderIndices()V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_borderIndices:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_borderIndices:[Z

    iget v3, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    iget v1, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    aput-boolean v4, v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateNormals(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 12

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndexMode(I)Lcom/ardor3d/renderer/IndexMode;

    move-result-object v0

    sget-object v2, Lcom/ardor3d/renderer/IndexMode;->Triangles:Lcom/ardor3d/renderer/IndexMode;

    if-eq v0, v2, :cond_0

    .line 5
    sget-object v0, Lcom/ardor3d/util/geom/NormalGenerator;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid triangles mode in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->getIntArray(Lcom/ardor3d/scenegraph/IndexBufferData;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceInds:[I

    .line 7
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->getVector3Array(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceVerts:[Lcom/ardor3d/math/Vector3;

    .line 8
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->getColorArray(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/ColorRGBA;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceColors:[Lcom/ardor3d/math/ColorRGBA;

    goto :goto_0

    .line 10
    :cond_1
    iput-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceColors:[Lcom/ardor3d/math/ColorRGBA;

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->getVector2Array(Ljava/nio/FloatBuffer;)[Lcom/ardor3d/math/Vector2;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceTexCoords:[Lcom/ardor3d/math/Vector2;

    goto :goto_1

    .line 13
    :cond_2
    iput-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceTexCoords:[Lcom/ardor3d/math/Vector2;

    .line 14
    :goto_1
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NormalGenerator;->initialize()V

    .line 15
    :goto_2
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_triangles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NormalGenerator;->createMeshSplit()V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceVerts:[Lcom/ardor3d/math/Vector3;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_borderIndices:[Z

    .line 19
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NormalGenerator;->fillBorderIndices()V

    .line 20
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NormalGenerator;->duplicateCreaseVertices()V

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitVerts:[Lcom/ardor3d/math/Vector3;

    .line 22
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destColors:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/ardor3d/math/ColorRGBA;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/math/ColorRGBA;

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitColors:[Lcom/ardor3d/math/ColorRGBA;

    goto :goto_3

    .line 24
    :cond_5
    iput-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitColors:[Lcom/ardor3d/math/ColorRGBA;

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTexCoords:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/ardor3d/math/Vector2;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/math/Vector2;

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitTexCoords:[Lcom/ardor3d/math/Vector2;

    goto :goto_4

    .line 27
    :cond_6
    iput-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitTexCoords:[Lcom/ardor3d/math/Vector2;

    .line 28
    :goto_4
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    move v0, v1

    .line 29
    :goto_5
    iget-object v3, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 30
    new-instance v4, Lcom/ardor3d/math/Vector3;

    invoke-direct {v4}, Lcom/ardor3d/math/Vector3;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 32
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_6

    :cond_8
    mul-int/lit8 v3, v3, 0x3

    .line 33
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitIndices:[I

    .line 34
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NormalGenerator;->computeNormalsAndIndices()V

    .line 35
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    iget-object v4, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitVerts:[Lcom/ardor3d/math/Vector3;

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x3

    if-ge v3, v5, :cond_9

    .line 37
    invoke-static {v4}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_8

    .line 38
    :cond_9
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 39
    iget-object v3, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitVerts:[Lcom/ardor3d/math/Vector3;

    array-length v4, v3

    move v5, v1

    :goto_7
    if-ge v5, v4, :cond_a

    aget-object v6, v3, v5

    .line 40
    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v8

    double-to-float v6, v8

    invoke-virtual {v7, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 41
    :cond_a
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 42
    :goto_8
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/MeshData;->getNormalBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 43
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_b

    goto :goto_a

    .line 44
    :cond_b
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 45
    iget-object v4, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    array-length v5, v4

    move v6, v1

    :goto_9
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 46
    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v9

    double-to-float v7, v9

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 47
    :cond_c
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_b

    .line 48
    :cond_d
    :goto_a
    iget-object v3, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitNormals:[Lcom/ardor3d/math/Vector3;

    invoke-static {v3}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector3;)Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 49
    :goto_b
    iget-object v4, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitColors:[Lcom/ardor3d/math/ColorRGBA;

    if-eqz v4, :cond_10

    .line 50
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ardor3d/scenegraph/MeshData;->getColorBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitColors:[Lcom/ardor3d/math/ColorRGBA;

    array-length v7, v6

    mul-int/lit8 v7, v7, 0x4

    if-ge v5, v7, :cond_e

    .line 52
    invoke-static {v6}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Ljava/nio/FloatBuffer;

    move-result-object v4

    goto :goto_d

    .line 53
    :cond_e
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 54
    iget-object v5, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitColors:[Lcom/ardor3d/math/ColorRGBA;

    array-length v6, v5

    move v7, v1

    :goto_c
    if-ge v7, v6, :cond_f

    aget-object v8, v5, v7

    .line 55
    invoke-virtual {v8}, Lcom/ardor3d/math/ColorRGBA;->getRed()F

    move-result v9

    invoke-virtual {v4, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/ardor3d/math/ColorRGBA;->getGreen()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/ardor3d/math/ColorRGBA;->getBlue()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result v8

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 56
    :cond_f
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_d

    :cond_10
    move-object v4, v2

    .line 57
    :goto_d
    iget-object v5, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitTexCoords:[Lcom/ardor3d/math/Vector2;

    if-eqz v5, :cond_13

    .line 58
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords(I)Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/AbstractBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    .line 59
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitTexCoords:[Lcom/ardor3d/math/Vector2;

    array-length v7, v6

    mul-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_11

    .line 60
    invoke-static {v6}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([Lcom/ardor3d/math/type/ReadOnlyVector2;)Ljava/nio/FloatBuffer;

    move-result-object v2

    goto :goto_f

    .line 61
    :cond_11
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 62
    iget-object v5, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitTexCoords:[Lcom/ardor3d/math/Vector2;

    array-length v6, v5

    move v7, v1

    :goto_e
    if-ge v7, v6, :cond_12

    aget-object v8, v5, v7

    .line 63
    invoke-virtual {v8}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-virtual {v2, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v10

    double-to-float v8, v10

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 64
    :cond_12
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 65
    :cond_13
    :goto_f
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    iget-object v7, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitIndices:[I

    array-length v7, v7

    if-ge v6, v7, :cond_14

    .line 67
    new-instance v5, Lcom/ardor3d/scenegraph/IntBufferData;

    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitIndices:[I

    invoke-static {v6}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ardor3d/scenegraph/IntBufferData;-><init>(Ljava/nio/IntBuffer;)V

    goto :goto_11

    .line 68
    :cond_14
    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 69
    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitIndices:[I

    array-length v7, v6

    move v8, v1

    :goto_10
    if-ge v8, v7, :cond_15

    aget v9, v6, v8

    .line 70
    invoke-virtual {v5, v9}, Lcom/ardor3d/scenegraph/IndexBufferData;->put(I)Lcom/ardor3d/scenegraph/IndexBufferData;

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 71
    :cond_15
    invoke-virtual {v5}, Lcom/ardor3d/scenegraph/IndexBufferData;->getBuffer()Ljava/nio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 72
    :goto_11
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 73
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    .line 74
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ardor3d/scenegraph/MeshData;->setColorBuffer(Ljava/nio/FloatBuffer;)V

    .line 75
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    .line 77
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V

    return-void
.end method

.method private initialize()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceVerts:[Lcom/ardor3d/math/Vector3;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceVerts:[Lcom/ardor3d/math/Vector3;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destVerts:Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceColors:[Lcom/ardor3d/math/ColorRGBA;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceColors:[Lcom/ardor3d/math/ColorRGBA;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destColors:Ljava/util/List;

    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceColors:[Lcom/ardor3d/math/ColorRGBA;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destColors:Ljava/util/List;

    aget-object v3, v3, v1

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destColors:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceTexCoords:[Lcom/ardor3d/math/Vector2;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceTexCoords:[Lcom/ardor3d/math/Vector2;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTexCoords:Ljava/util/List;

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceTexCoords:[Lcom/ardor3d/math/Vector2;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTexCoords:Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTexCoords:Ljava/util/List;

    :cond_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_triangles:Ljava/util/LinkedList;

    :goto_3
    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceInds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    new-instance v3, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    aget v4, v2, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, v2, v5

    add-int/lit8 v1, v1, 0x2

    aget v1, v2, v1

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;-><init>(Lcom/ardor3d/util/geom/NormalGenerator;III)V

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_sourceVerts:[Lcom/ardor3d/math/Vector3;

    invoke-virtual {v3, v1}, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->computeNormal([Lcom/ardor3d/math/Vector3;)V

    iget-object v1, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_triangles:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshes:Ljava/util/LinkedList;

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :goto_4
    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_splitMeshBorders:Ljava/util/LinkedList;

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :goto_5
    return-void
.end method

.method private insertTriangle()Lcom/ardor3d/util/geom/NormalGenerator$Triangle;
    .locals 10

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_triangles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v3, v1

    move-object v4, v3

    move v5, v2

    :goto_0
    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    iget-object v6, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_edges:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    :cond_0
    if-nez v1, :cond_2

    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v3, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    array-length v9, v8

    if-ge v7, v9, :cond_0

    if-nez v1, :cond_0

    aget-object v8, v8, v7

    invoke-virtual {v4, v8}, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->isConnectedTo(Lcom/ardor3d/util/geom/NormalGenerator$Edge;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v4, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->parent:Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    invoke-direct {p0, v3, v8}, Lcom/ardor3d/util/geom/NormalGenerator;->checkAngle(Lcom/ardor3d/util/geom/NormalGenerator$Triangle;Lcom/ardor3d/util/geom/NormalGenerator$Triangle;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v3

    move v5, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v6

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    iget-object v0, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_destTris:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iput-object v1, v4, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->connected:Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    iget-object v0, v1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v0, v0, v5

    iget-object v6, v4, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->parent:Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    iput-object v6, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->connected:Lcom/ardor3d/util/geom/NormalGenerator$Triangle;

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    iget-object v6, v1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    add-int/lit8 v7, v5, 0x1

    rem-int/lit8 v8, v7, 0x3

    aget-object v6, v6, v8

    invoke-interface {v3, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    add-int/lit8 v9, v5, 0x2

    rem-int/lit8 v9, v9, 0x3

    aget-object v6, v6, v9

    invoke-interface {v3, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget v3, v4, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    if-le v3, v2, :cond_4

    iput v3, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    iget-object v6, v1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v6, v6, v8

    iput v3, v6, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    :cond_4
    iget v3, v4, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    if-le v3, v2, :cond_5

    iput v3, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    iget-object v0, v1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v0, v0, v9

    iput v3, v0, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    :cond_5
    :goto_2
    add-int/lit8 v0, v5, 0x3

    if-ge v7, v0, :cond_6

    rem-int/lit8 v0, v7, 0x3

    invoke-direct {p0, v1, v0}, Lcom/ardor3d/util/geom/NormalGenerator;->connectEdge(Lcom/ardor3d/util/geom/NormalGenerator$Triangle;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method private replaceIndex(Lcom/ardor3d/util/geom/NormalGenerator$Triangle;II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lcom/ardor3d/util/geom/NormalGenerator$Triangle;->edges:[Lcom/ardor3d/util/geom/NormalGenerator$Edge;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i0:I

    if-ne v2, p2, :cond_0

    iput p3, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI0:I

    :cond_0
    iget v2, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->i1:I

    if-ne v2, p2, :cond_1

    iput p3, v1, Lcom/ardor3d/util/geom/NormalGenerator$Edge;->newI1:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public generateNormals(Lcom/ardor3d/scenegraph/Mesh;F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput p2, p0, Lcom/ardor3d/util/geom/NormalGenerator;->_creaseAngle:F

    .line 2
    invoke-direct {p0, p1}, Lcom/ardor3d/util/geom/NormalGenerator;->generateNormals(Lcom/ardor3d/scenegraph/Mesh;)V

    .line 3
    invoke-direct {p0}, Lcom/ardor3d/util/geom/NormalGenerator;->cleanup()V

    :cond_0
    return-void
.end method
