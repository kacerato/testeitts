.class public Lcom/ardor3d/bounding/TreeComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/bounding/TreeComparator$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ardor3d/intersection/PrimitiveKey;",
        ">;"
    }
.end annotation


# instance fields
.field private _aCompare:[Lcom/ardor3d/math/Vector3;

.field private _axis:Lcom/ardor3d/bounding/TreeComparator$Axis;

.field private _bCompare:[Lcom/ardor3d/math/Vector3;

.field private _mesh:Lcom/ardor3d/scenegraph/Mesh;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/bounding/TreeComparator;->_aCompare:[Lcom/ardor3d/math/Vector3;

    iput-object v0, p0, Lcom/ardor3d/bounding/TreeComparator;->_bCompare:[Lcom/ardor3d/math/Vector3;

    return-void
.end method


# virtual methods
.method public compare(Lcom/ardor3d/intersection/PrimitiveKey;Lcom/ardor3d/intersection/PrimitiveKey;)I
    .locals 8

    .line 2
    invoke-virtual {p1, p2}, Lcom/ardor3d/intersection/PrimitiveKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ardor3d/bounding/TreeComparator;->_mesh:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ardor3d/intersection/PrimitiveKey;->getPrimitiveIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/ardor3d/intersection/PrimitiveKey;->getSection()I

    move-result p1

    iget-object v3, p0, Lcom/ardor3d/bounding/TreeComparator;->_aCompare:[Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v2, p1, v3}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/bounding/TreeComparator;->_aCompare:[Lcom/ardor3d/math/Vector3;

    .line 4
    iget-object p1, p0, Lcom/ardor3d/bounding/TreeComparator;->_mesh:Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ardor3d/intersection/PrimitiveKey;->getPrimitiveIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/ardor3d/intersection/PrimitiveKey;->getSection()I

    move-result p2

    iget-object v2, p0, Lcom/ardor3d/bounding/TreeComparator;->_bCompare:[Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1, v0, p2, v2}, Lcom/ardor3d/scenegraph/MeshData;->getPrimitive(II[Lcom/ardor3d/math/Vector3;)[Lcom/ardor3d/math/Vector3;

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/bounding/TreeComparator;->_bCompare:[Lcom/ardor3d/math/Vector3;

    const/4 p1, 0x1

    move p2, p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/ardor3d/bounding/TreeComparator;->_aCompare:[Lcom/ardor3d/math/Vector3;

    array-length v2, v0

    if-ge p2, v2, :cond_1

    .line 6
    aget-object v2, v0, v1

    aget-object v0, v0, p2

    invoke-virtual {v2, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, p1

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/ardor3d/bounding/TreeComparator;->_bCompare:[Lcom/ardor3d/math/Vector3;

    array-length v2, v0

    if-ge p2, v2, :cond_2

    .line 8
    aget-object v2, v0, v1

    aget-object v0, v0, p2

    invoke-virtual {v2, v0}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/ardor3d/bounding/TreeComparator;->_aCompare:[Lcom/ardor3d/math/Vector3;

    array-length v2, p2

    array-length v3, v0

    if-ne v2, v3, :cond_3

    .line 10
    aget-object p2, p2, v1

    .line 11
    aget-object v0, v0, v1

    goto :goto_2

    .line 12
    :cond_3
    aget-object v0, p2, v1

    array-length p2, p2

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/math/Vector3;->divideLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/ardor3d/bounding/TreeComparator;->_bCompare:[Lcom/ardor3d/math/Vector3;

    aget-object v2, v0, v1

    array-length v0, v0

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/ardor3d/math/Vector3;->divideLocal(D)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    .line 14
    :goto_2
    sget-object v2, Lcom/ardor3d/bounding/TreeComparator$1;->$SwitchMap$com$ardor3d$bounding$TreeComparator$Axis:[I

    iget-object v3, p0, Lcom/ardor3d/bounding/TreeComparator;->_axis:Lcom/ardor3d/bounding/TreeComparator$Axis;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, p1, :cond_a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    return v1

    .line 15
    :cond_4
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_5

    return v3

    .line 16
    :cond_5
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getZ()D

    move-result-wide v4

    cmpl-double p2, v2, v4

    if-lez p2, :cond_6

    return p1

    :cond_6
    return v1

    .line 17
    :cond_7
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getY()D

    move-result-wide v4

    cmpl-double p2, v2, v4

    if-lez p2, :cond_9

    return p1

    :cond_9
    return v1

    .line 19
    :cond_a
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_b

    return v3

    .line 20
    :cond_b
    invoke-virtual {p2}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->getX()D

    move-result-wide v4

    cmpl-double p2, v2, v4

    if-lez p2, :cond_c

    return p1

    :cond_c
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/intersection/PrimitiveKey;

    check-cast p2, Lcom/ardor3d/intersection/PrimitiveKey;

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/bounding/TreeComparator;->compare(Lcom/ardor3d/intersection/PrimitiveKey;Lcom/ardor3d/intersection/PrimitiveKey;)I

    move-result p1

    return p1
.end method

.method public setAxis(Lcom/ardor3d/bounding/TreeComparator$Axis;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/bounding/TreeComparator;->_axis:Lcom/ardor3d/bounding/TreeComparator$Axis;

    return-void
.end method

.method public setMesh(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/bounding/TreeComparator;->_mesh:Lcom/ardor3d/scenegraph/Mesh;

    return-void
.end method
