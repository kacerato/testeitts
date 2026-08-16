.class public Lcom/ardor3d/util/geom/VertMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _lookupTable:[I


# direct methods
.method public constructor <init>(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/ardor3d/util/geom/VertMap;->setupTable(Lcom/ardor3d/scenegraph/Mesh;)V

    return-void
.end method

.method private setupTable(Lcom/ardor3d/scenegraph/Mesh;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCount()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ardor3d/util/geom/VertMap;->_lookupTable:[I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/ardor3d/util/geom/VertMap;->_lookupTable:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public applyRemapping(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ardor3d/util/geom/VertMap;->_lookupTable:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/util/geom/VertMap;->_lookupTable:[I

    aget v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getNewIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/geom/VertMap;->_lookupTable:[I

    aget p1, v0, p1

    return p1
.end method
