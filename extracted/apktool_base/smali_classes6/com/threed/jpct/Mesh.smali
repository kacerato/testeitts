.class public final Lcom/threed/jpct/Mesh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COMPRESS:Z = true

.field public static final DONT_COMPRESS:Z = false

.field public static final SERIALIZE_ALL:I = 0x0

.field public static final SERIALIZE_LOW_PRECISION:I = 0x2

.field public static final SERIALIZE_VERTICES_ONLY:I = 0x1

.field private static final serialVersionUID:J = 0x2L

.field private static verts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/threed/jpct/GenericContainer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field anzCoords:I

.field anzTri:I

.field anzVectors:I

.field coords:[I

.field private locked:Z

.field maxVectors:I

.field myController:Lcom/threed/jpct/IVertexController;

.field normalsCalculated:Z

.field nxOrg:[F

.field transient nxiOrg:[I

.field nyOrg:[F

.field transient nyiOrg:[I

.field nzOrg:[F

.field transient nziOrg:[I

.field obbEnd:I

.field obbStart:I

.field points:[[I

.field private serializeMethod:I

.field snxOrg:[S

.field snyOrg:[S

.field snzOrg:[S

.field sxOrg:[S

.field syOrg:[S

.field szOrg:[S

.field tangentVectors:[[F

.field tangentsCalculated:Z

.field xOrg:[F

.field yOrg:[F

.field zOrg:[F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    iput-boolean v0, p0, Lcom/threed/jpct/Mesh;->tangentsCalculated:Z

    iput-object v1, p0, Lcom/threed/jpct/Mesh;->sxOrg:[S

    iput-object v1, p0, Lcom/threed/jpct/Mesh;->syOrg:[S

    iput-object v1, p0, Lcom/threed/jpct/Mesh;->szOrg:[S

    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snxOrg:[S

    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snyOrg:[S

    iput-object v1, p0, Lcom/threed/jpct/Mesh;->snzOrg:[S

    iput p1, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    iput v0, p0, Lcom/threed/jpct/Mesh;->anzVectors:I

    iput v0, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iput v0, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    iput v0, p0, Lcom/threed/jpct/Mesh;->obbStart:I

    iput v0, p0, Lcom/threed/jpct/Mesh;->obbEnd:I

    iput-boolean v0, p0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    const/4 v1, 0x3

    div-int/2addr p1, v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v2

    aput p1, v3, v0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->points:[[I

    iget p1, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->coords:[I

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    return-void
.end method

.method private final calcNormalsFast()V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    const/4 v4, 0x3

    if-lt v2, v3, :cond_6

    move v2, v1

    :goto_1
    iget v3, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v2, v3, :cond_1

    sget-object v1, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_1
    iget-object v3, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v3, v3, v2

    iget-object v5, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v5, v5, v2

    iget-object v6, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v6, v6, v2

    new-instance v7, Lcom/threed/jpct/GenericContainer;

    invoke-direct {v7, v4}, Lcom/threed/jpct/GenericContainer;-><init>(I)V

    invoke-virtual {v7, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    invoke-virtual {v7, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    invoke-virtual {v7, v6}, Lcom/threed/jpct/GenericContainer;->add(F)V

    sget-object v3, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    move v8, v7

    move v9, v5

    move v10, v9

    move v11, v10

    :goto_2
    if-lt v7, v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v0, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v14, v0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v12, v14, v12

    aget v14, v12, v1

    aget v14, v13, v14

    const/4 v15, 0x1

    aget v15, v12, v15

    aget v15, v13, v15

    const/16 v16, 0x2

    aget v12, v12, v16

    aget v12, v13, v12

    iget-object v13, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v16, v13, v12

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v17, v1, v12

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v12, v4, v12

    aget v18, v13, v14

    aget v19, v1, v14

    aget v14, v4, v14

    aget v13, v13, v15

    aget v1, v1, v15

    aget v4, v4, v15

    add-int/lit8 v8, v8, 0x1

    sub-float v18, v18, v16

    sub-float v19, v19, v17

    sub-float/2addr v14, v12

    sub-float v13, v13, v16

    sub-float v1, v1, v17

    sub-float/2addr v4, v12

    mul-float v12, v19, v4

    mul-float v15, v14, v1

    sub-float/2addr v12, v15

    add-float/2addr v9, v12

    mul-float/2addr v14, v13

    mul-float v4, v4, v18

    sub-float/2addr v14, v4

    add-float/2addr v10, v14

    mul-float v18, v18, v1

    mul-float v19, v19, v13

    sub-float v18, v18, v19

    add-float v11, v11, v18

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x3

    goto :goto_2

    :cond_3
    move v9, v5

    move v10, v9

    move v11, v10

    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_5

    mul-float v1, v9, v9

    mul-float v3, v10, v10

    add-float/2addr v1, v3

    mul-float v3, v11, v11

    add-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    cmpl-float v3, v1, v5

    if-nez v3, :cond_4

    const v1, 0x2b8cbccc    # 1.0E-12f

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    mul-float/2addr v9, v3

    aput v9, v1, v2

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    mul-float/2addr v10, v3

    aput v10, v1, v2

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    mul-float/2addr v11, v3

    aput v11, v1, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x3

    goto/16 :goto_1

    :cond_6
    iget-object v1, v0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v1, v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    :goto_4
    if-lt v4, v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v3, v0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v5, v1, v4

    aget v3, v3, v5

    iget-object v5, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v5, v5, v3

    iget-object v6, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v6, v6, v3

    iget-object v7, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v3, v7, v3

    new-instance v7, Lcom/threed/jpct/GenericContainer;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/threed/jpct/GenericContainer;-><init>(I)V

    invoke-virtual {v7, v5}, Lcom/threed/jpct/GenericContainer;->add(F)V

    invoke-virtual {v7, v6}, Lcom/threed/jpct/GenericContainer;->add(F)V

    invoke-virtual {v7, v3}, Lcom/threed/jpct/GenericContainer;->add(F)V

    sget-object v3, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v5, Lcom/threed/jpct/Mesh;->verts:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {v2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v3, v8

    goto :goto_4
.end method

.method private floatToShort([F)[S
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget p1, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/threed/jpct/Mesh;->sxOrg:[S

    invoke-direct {p0, p1}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->sxOrg:[S

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->syOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->syOrg:[S

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->szOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->szOrg:[S

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->snxOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->snxOrg:[S

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->snyOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->snyOrg:[S

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->snzOrg:[S

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->shortToFloat([S)[F

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->snzOrg:[S

    :cond_0
    iget p1, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object p1, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object p1, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    array-length p1, p1

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object p1, p0, Lcom/threed/jpct/Mesh;->points:[[I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/threed/jpct/Mesh;->calcNormals()V

    :cond_1
    return-void
.end method

.method private shortToFloat([S)[F
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    aget-short v2, p1, v1

    shl-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v1, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v2, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v3, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v5, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget v6, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    and-int/lit8 v7, v6, 0x1

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    :cond_0
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    invoke-direct {p0, v0}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->sxOrg:[S

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->syOrg:[S

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->szOrg:[S

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->snxOrg:[S

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->snyOrg:[S

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v6, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    invoke-direct {p0, v6}, Lcom/threed/jpct/Mesh;->floatToShort([F)[S

    move-result-object v6

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->snzOrg:[S

    iput-object v8, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    iput-object v1, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iput-object v2, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    iput-object v3, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object v4, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object v5, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    return-void
.end method


# virtual methods
.method public applyVertexController()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/threed/jpct/IVertexController;->apply()V

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    invoke-interface {v0}, Lcom/threed/jpct/IVertexController;->updateMesh()V

    goto :goto_0

    :cond_0
    const-string v0, "No controller has been assigned to this mesh"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public calcBoundingBox()[F
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget v3, p0, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v3, :cond_0

    move v2, v3

    :cond_0
    const v3, 0x51ba43b7    # 1.0E11f

    const v4, -0x2e45bc49    # -1.0E11f

    move v9, v1

    move v5, v3

    move v6, v4

    move v7, v6

    move v8, v7

    move v4, v5

    :goto_0
    if-lt v9, v2, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [F

    aput v3, v2, v1

    aput v6, v2, v0

    const/4 v0, 0x2

    aput v4, v2, v0

    const/4 v0, 0x3

    aput v7, v2, v0

    const/4 v0, 0x4

    aput v5, v2, v0

    const/4 v0, 0x5

    aput v8, v2, v0

    return-object v2

    :cond_1
    iget-object v10, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v10, v10, v9

    iget-object v11, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v11, v11, v9

    iget-object v12, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v12, v12, v9

    cmpg-float v13, v10, v3

    if-gez v13, :cond_2

    move v3, v10

    :cond_2
    cmpl-float v13, v10, v6

    if-lez v13, :cond_3

    move v6, v10

    :cond_3
    cmpg-float v10, v11, v4

    if-gez v10, :cond_4

    move v4, v11

    :cond_4
    cmpl-float v10, v11, v7

    if-lez v10, :cond_5

    move v7, v11

    :cond_5
    cmpg-float v10, v12, v5

    if-gez v10, :cond_6

    move v5, v12

    :cond_6
    cmpl-float v10, v12, v8

    if-lez v10, :cond_7

    move v8, v12

    :cond_7
    add-int/2addr v9, v0

    goto :goto_0
.end method

.method public calcCenter()Lcom/threed/jpct/SimpleVector;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move v5, v4

    move v6, v5

    move v2, v1

    move v3, v2

    :goto_0
    iget v7, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v2, v7, :cond_1

    if-eqz v3, :cond_0

    int-to-float v0, v3

    div-float/2addr v4, v0

    div-float/2addr v5, v0

    div-float/2addr v6, v0

    invoke-static {v4, v5, v6}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0, v0, v0}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v7, p0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v7, v7, v2

    move v8, v1

    :goto_1
    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v10, v7, v8

    aget v9, v9, v10

    iget-object v10, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v10, v10, v9

    add-float/2addr v4, v10

    iget-object v10, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v10, v10, v9

    add-float/2addr v5, v10

    iget-object v10, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v9, v10, v9

    add-float/2addr v6, v9

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public calcNormals()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/threed/jpct/Mesh;->calcNormalsFast()V

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Normal vectors calculated in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    return-void
.end method

.method public final calcNormalsMD2([Ljava/util/Vector;)[Ljava/util/Vector;
    .locals 24

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    iget v1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    new-array v1, v1, [Ljava/util/Vector;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget v4, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v3, v4, :cond_2

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object p1

    :cond_2
    if-nez p1, :cond_3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v1, v3

    :cond_3
    iget-object v4, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v4, v4, v3

    iget-object v5, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v5, v5, v3

    iget-object v6, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v6, v6, v3

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-nez p1, :cond_9

    move v10, v2

    move v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    iget v15, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v10, v15, :cond_4

    move-object/from16 v23, v1

    goto/16 :goto_5

    :cond_4
    iget-object v15, v0, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v8, v0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v8, v8, v10

    aget v17, v8, v2

    aget v17, v15, v17

    aget v18, v8, v9

    aget v18, v15, v18

    aget v8, v8, v7

    aget v8, v15, v8

    iget-object v15, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v19, v15, v8

    iget-object v7, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v20, v7, v8

    iget-object v9, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v8, v9, v8

    aget v21, v15, v17

    aget v22, v7, v17

    aget v17, v9, v17

    aget v15, v15, v18

    aget v7, v7, v18

    aget v9, v9, v18

    cmpl-float v18, v4, v19

    if-nez v18, :cond_5

    cmpl-float v18, v5, v20

    if-nez v18, :cond_5

    cmpl-float v18, v6, v8

    if-eqz v18, :cond_7

    :cond_5
    cmpl-float v18, v4, v15

    if-nez v18, :cond_6

    cmpl-float v18, v5, v7

    if-nez v18, :cond_6

    cmpl-float v18, v6, v9

    if-eqz v18, :cond_7

    :cond_6
    cmpl-float v18, v4, v21

    if-nez v18, :cond_8

    cmpl-float v18, v5, v22

    if-nez v18, :cond_8

    cmpl-float v18, v6, v17

    if-nez v18, :cond_8

    :cond_7
    aget-object v2, v1, v3

    move-object/from16 v23, v1

    invoke-static {v10}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    sub-float v21, v21, v19

    sub-float v22, v22, v20

    sub-float v17, v17, v8

    sub-float v15, v15, v19

    sub-float v7, v7, v20

    sub-float/2addr v9, v8

    mul-float v1, v22, v9

    mul-float v2, v17, v7

    sub-float/2addr v1, v2

    add-float/2addr v12, v1

    mul-float v17, v17, v15

    mul-float v9, v9, v21

    sub-float v17, v17, v9

    add-float v13, v13, v17

    mul-float v21, v21, v7

    mul-float v22, v22, v15

    sub-float v21, v21, v22

    add-float v14, v14, v21

    goto :goto_3

    :cond_8
    move-object/from16 v23, v1

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v23

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v23, v1

    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-lt v2, v1, :cond_c

    :goto_5
    if-eqz v11, :cond_b

    mul-float v1, v12, v12

    mul-float v2, v13, v13

    add-float/2addr v1, v2

    mul-float v2, v14, v14

    add-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    const/4 v7, 0x0

    cmpl-float v2, v1, v7

    if-nez v2, :cond_a

    const v1, 0x2b8cbccc    # 1.0E-12f

    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    mul-float/2addr v12, v2

    aput v12, v1, v3

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    mul-float/2addr v13, v2

    aput v13, v1, v3

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    mul-float/2addr v14, v2

    aput v14, v1, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v23

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x0

    aget-object v8, p1, v3

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v10, v0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v8, v10, v8

    const/4 v10, 0x0

    aget v15, v8, v10

    aget v15, v9, v15

    const/16 v16, 0x1

    aget v17, v8, v16

    aget v17, v9, v17

    const/16 v18, 0x2

    aget v8, v8, v18

    aget v8, v9, v8

    iget-object v9, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v19, v9, v8

    iget-object v7, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v20, v7, v8

    iget-object v10, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v8, v10, v8

    aget v21, v9, v15

    aget v22, v7, v15

    aget v15, v10, v15

    aget v9, v9, v17

    aget v7, v7, v17

    aget v10, v10, v17

    cmpl-float v17, v4, v19

    if-nez v17, :cond_d

    cmpl-float v17, v5, v20

    if-nez v17, :cond_d

    cmpl-float v17, v6, v8

    if-eqz v17, :cond_f

    :cond_d
    cmpl-float v17, v4, v9

    if-nez v17, :cond_e

    cmpl-float v17, v5, v7

    if-nez v17, :cond_e

    cmpl-float v17, v6, v10

    if-eqz v17, :cond_f

    :cond_e
    cmpl-float v17, v4, v21

    if-nez v17, :cond_10

    cmpl-float v17, v5, v22

    if-nez v17, :cond_10

    cmpl-float v17, v6, v15

    if-nez v17, :cond_10

    :cond_f
    add-int/lit8 v11, v11, 0x1

    sub-float v21, v21, v19

    sub-float v22, v22, v20

    sub-float/2addr v15, v8

    sub-float v9, v9, v19

    sub-float v7, v7, v20

    sub-float/2addr v10, v8

    mul-float v8, v22, v10

    mul-float v17, v15, v7

    sub-float v8, v8, v17

    add-float/2addr v12, v8

    mul-float/2addr v15, v9

    mul-float v10, v10, v21

    sub-float/2addr v15, v10

    add-float/2addr v13, v15

    mul-float v21, v21, v7

    mul-float v22, v22, v9

    sub-float v21, v21, v22

    add-float v14, v14, v21

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method

.method public calculateTangentVectors(Lcom/threed/jpct/Vectors;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    if-eqz v4, :cond_0

    array-length v4, v4

    iget v5, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-eq v4, v5, :cond_1

    :cond_0
    iget v4, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    new-array v4, v4, [[F

    iput-object v4, v0, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    :cond_1
    iget v4, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    new-array v5, v4, [Lcom/threed/jpct/SimpleVector;

    new-array v6, v4, [Lcom/threed/jpct/SimpleVector;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-lt v8, v4, :cond_c

    iget v10, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    move v4, v7

    :goto_1
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lt v4, v10, :cond_6

    new-instance v13, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v13}, Lcom/threed/jpct/SimpleVector;-><init>()V

    new-instance v14, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v14}, Lcom/threed/jpct/SimpleVector;-><init>()V

    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iget v15, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    move v4, v7

    :goto_2
    if-lt v4, v15, :cond_3

    iput-boolean v12, v0, Lcom/threed/jpct/Mesh;->tangentsCalculated:Z

    invoke-static {}, Lcom/threed/jpct/Logger;->getLogLevel()I

    move-result v1

    if-lt v1, v11, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Tangent vectors calculated in "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v10, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v10, v10, v4

    iget-object v8, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v8, v8, v4

    iget-object v9, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v9, v9, v4

    invoke-virtual {v13, v10, v8, v9}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    aget-object v8, v5, v4

    invoke-virtual {v1, v8}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v14, v13}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v13, v1}, Lcom/threed/jpct/SimpleVector;->calcDot(Lcom/threed/jpct/SimpleVector;)F

    move-result v8

    invoke-virtual {v14, v8}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    invoke-virtual {v1, v14}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {v1}, Lcom/threed/jpct/SimpleVector;->normalize()Lcom/threed/jpct/SimpleVector;

    move-result-object v1

    iget-object v8, v0, Lcom/threed/jpct/Mesh;->tangentVectors:[[F

    aget-object v9, v8, v4

    if-nez v9, :cond_4

    const/4 v9, 0x4

    new-array v9, v9, [F

    aput-object v9, v8, v4

    :cond_4
    iget v8, v1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v8, v9, v7

    iget v8, v1, Lcom/threed/jpct/SimpleVector;->y:F

    aput v8, v9, v12

    iget v8, v1, Lcom/threed/jpct/SimpleVector;->z:F

    aput v8, v9, v11

    invoke-virtual {v13, v1}, Lcom/threed/jpct/SimpleVector;->calcCross(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v8

    aget-object v10, v6, v4

    invoke-virtual {v8, v10}, Lcom/threed/jpct/SimpleVector;->calcDot(Lcom/threed/jpct/SimpleVector;)F

    move-result v8

    const/4 v10, 0x0

    cmpg-float v8, v8, v10

    if-gez v8, :cond_5

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_3

    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_3
    const/4 v10, 0x3

    aput v8, v9, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget-object v8, v0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v8, v8, v4

    iget-object v9, v0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v13, v8, v7

    aget v14, v9, v13

    aget v12, v8, v12

    aget v15, v9, v12

    aget v8, v8, v11

    aget v9, v9, v8

    iget-object v11, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v18, v11, v14

    iget-object v7, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v19, v7, v14

    move-wide/from16 v20, v2

    iget-object v2, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v3, v2, v14

    aget v22, v11, v15

    aget v23, v7, v15

    aget v24, v2, v15

    aget v11, v11, v9

    aget v7, v7, v9

    aget v2, v2, v9

    iget-object v0, v1, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v25, v0, v13

    move/from16 v26, v10

    iget-object v10, v1, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v13, v10, v13

    aget v27, v0, v12

    aget v12, v10, v12

    aget v0, v0, v8

    aget v8, v10, v8

    sub-float v22, v22, v18

    sub-float v11, v11, v18

    sub-float v23, v23, v19

    sub-float v7, v7, v19

    sub-float v24, v24, v3

    sub-float/2addr v2, v3

    sub-float v27, v27, v25

    sub-float v0, v0, v25

    sub-float/2addr v12, v13

    sub-float/2addr v8, v13

    const/4 v3, 0x0

    cmpl-float v10, v27, v3

    const v13, 0x3727c5ac    # 1.0E-5f

    if-nez v10, :cond_7

    move/from16 v27, v13

    :cond_7
    cmpl-float v10, v0, v3

    if-nez v10, :cond_8

    move v0, v13

    :cond_8
    cmpl-float v10, v12, v3

    if-nez v10, :cond_9

    move v12, v13

    :cond_9
    cmpl-float v10, v8, v3

    if-nez v10, :cond_a

    move v8, v13

    :cond_a
    mul-float v10, v27, v8

    mul-float v17, v0, v12

    sub-float v10, v10, v17

    cmpl-float v18, v10, v3

    if-nez v18, :cond_b

    :goto_4
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_b
    move v13, v10

    goto :goto_4

    :goto_5
    div-float/2addr v3, v13

    new-instance v10, Lcom/threed/jpct/SimpleVector;

    mul-float v13, v8, v22

    mul-float v16, v12, v11

    sub-float v13, v13, v16

    mul-float/2addr v13, v3

    mul-float v16, v8, v23

    mul-float v18, v12, v7

    sub-float v16, v16, v18

    mul-float v1, v16, v3

    mul-float v8, v8, v24

    mul-float/2addr v12, v2

    sub-float/2addr v8, v12

    mul-float/2addr v8, v3

    invoke-direct {v10, v13, v1, v8}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    new-instance v1, Lcom/threed/jpct/SimpleVector;

    mul-float v11, v11, v27

    mul-float v22, v22, v0

    sub-float v11, v11, v22

    mul-float/2addr v11, v3

    mul-float v7, v7, v27

    mul-float v23, v23, v0

    sub-float v7, v7, v23

    mul-float/2addr v7, v3

    mul-float v27, v27, v2

    mul-float v0, v0, v24

    sub-float v27, v27, v0

    mul-float v0, v27, v3

    invoke-direct {v1, v11, v7, v0}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aget-object v0, v5, v14

    invoke-virtual {v0, v10}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    aget-object v0, v5, v15

    invoke-virtual {v0, v10}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    aget-object v0, v5, v9

    invoke-virtual {v0, v10}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    aget-object v0, v6, v14

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    aget-object v0, v6, v15

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    aget-object v0, v6, v9

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    move/from16 v10, v26

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_c
    move-wide/from16 v20, v2

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v0, v5, v8

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0, v1, v1, v1}, Lcom/threed/jpct/SimpleVector;-><init>(FFF)V

    aput-object v0, v6, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public cloneMesh(Z)Lcom/threed/jpct/Mesh;
    .locals 8

    new-instance v0, Lcom/threed/jpct/Mesh;

    iget v1, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    invoke-direct {v0, v1}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iget v1, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget v1, p0, Lcom/threed/jpct/Mesh;->anzVectors:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    iget v1, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    iget v1, p0, Lcom/threed/jpct/Mesh;->obbStart:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    iget v1, p0, Lcom/threed/jpct/Mesh;->obbEnd:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbEnd:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    if-lt v2, v3, :cond_3

    const/4 v4, 0x3

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move v5, v1

    :goto_1
    if-lt v5, v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->compress()V

    :cond_0
    return-object v0

    :cond_1
    move v2, v1

    :goto_2
    if-lt v2, v4, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v7, v7, v5

    aget v7, v7, v2

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v4, v4, v2

    aput v4, v3, v2

    iget v3, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-ge v2, v3, :cond_4

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v4, v4, v2

    aput v4, v3, v2

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v4, v4, v2

    aput v4, v3, v2

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v4, v4, v2

    aput v4, v3, v2

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v4, v4, v2

    aput v4, v3, v2

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v4, v4, v2

    aput v4, v3, v2

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v4, v4, v2

    aput v4, v3, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public compress()V
    .locals 10

    iget v0, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget v1, p0, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/threed/jpct/Mesh;->obbEnd:I

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x8

    :cond_0
    new-array v2, v0, [F

    new-array v3, v0, [F

    new-array v4, v0, [F

    new-array v5, v0, [F

    new-array v6, v0, [F

    new-array v0, v0, [F

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    iget v9, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v8, v9, :cond_4

    iput-object v2, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    iput-object v3, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iput-object v4, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    iput-object v5, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object v6, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget v0, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    if-ge v1, v0, :cond_3

    div-int/lit8 v0, v1, 0x3

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x3

    aput v4, v3, v2

    aput v0, v3, v7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    new-array v3, v1, [I

    move v4, v7

    :goto_1
    if-lt v4, v1, :cond_2

    :goto_2
    if-lt v7, v0, :cond_1

    iput-object v3, p0, Lcom/threed/jpct/Mesh;->coords:[I

    iput-object v2, p0, Lcom/threed/jpct/Mesh;->points:[[I

    iput v1, p0, Lcom/threed/jpct/Mesh;->maxVectors:I

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v4, v7

    aput-object v4, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/threed/jpct/Mesh;->coords:[I

    aget v5, v5, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v9, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v9, v9, v8

    aput v9, v2, v8

    iget-object v9, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v9, v9, v8

    aput v9, v3, v8

    iget-object v9, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v9, v9, v8

    aput v9, v4, v8

    iget-object v9, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v9, v9, v8

    aput v9, v5, v8

    iget-object v9, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v9, v9, v8

    aput v9, v6, v8

    iget-object v9, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v9, v9, v8

    aput v9, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getBoundingBox()[F
    .locals 1

    invoke-virtual {p0}, Lcom/threed/jpct/Mesh;->calcBoundingBox()[F

    move-result-object v0

    return-object v0
.end method

.method public final getLargestCoveredDistance()F
    .locals 13

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v4, v2

    aget v5, v4, v1

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v4, v4, v7

    aget v3, v3, v4

    iget-object v4, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v7, v4, v5

    iget-object v8, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v9, v8, v5

    iget-object v10, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v5, v10, v5

    aget v11, v4, v6

    aget v12, v8, v6

    aget v6, v10, v6

    aget v4, v4, v3

    aget v8, v8, v3

    aget v3, v10, v3

    sub-float v10, v7, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v7, v9, v12

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float/2addr v12, v8

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v5, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v5, v10, v0

    if-lez v5, :cond_1

    move v0, v10

    :cond_1
    cmpl-float v5, v11, v0

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v11, v0

    :goto_1
    cmpl-float v0, v4, v11

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v11

    :goto_2
    cmpl-float v0, v7, v4

    if-lez v0, :cond_4

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    cmpl-float v0, v12, v7

    if-lez v0, :cond_5

    goto :goto_4

    :cond_5
    move v12, v7

    :goto_4
    cmpl-float v0, v8, v12

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    move v8, v12

    :goto_5
    cmpl-float v0, v9, v8

    if-lez v0, :cond_7

    goto :goto_6

    :cond_7
    move v9, v8

    :goto_6
    cmpl-float v0, v6, v9

    if-lez v0, :cond_8

    goto :goto_7

    :cond_8
    move v6, v9

    :goto_7
    cmpl-float v0, v3, v6

    if-lez v0, :cond_9

    move v0, v3

    goto :goto_8

    :cond_9
    move v0, v6

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public getTriangleCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Mesh;->anzTri:I

    return v0
.end method

.method public getUniqueVertexCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    return v0
.end method

.method public getVertexCount()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Mesh;->anzVectors:I

    return v0
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Mesh;->locked:Z

    return v0
.end method

.method public removeVertexController()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/threed/jpct/IVertexController;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    :cond_0
    return-void
.end method

.method public rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget v4, v3, v2

    const/4 v5, 0x1

    aget-object v6, v1, v5

    aget v7, v6, v2

    const/4 v8, 0x2

    aget-object v1, v1, v8

    aget v9, v1, v2

    aget v10, v3, v5

    aget v11, v6, v5

    aget v5, v1, v5

    aget v3, v3, v8

    aget v6, v6, v8

    aget v1, v1, v8

    :goto_0
    iget v8, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v2, v8, :cond_0

    return-void

    :cond_0
    iget-object v8, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v12, v8, v2

    sub-float v12, v12, p4

    iget-object v13, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v14, v13, v2

    sub-float v14, v14, p2

    iget-object v15, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v16, v15, v2

    sub-float v16, v16, p3

    mul-float v17, v14, v4

    mul-float v18, v16, v7

    add-float v17, v17, v18

    mul-float v18, v12, v9

    add-float v17, v17, v18

    add-float v17, v17, p2

    mul-float v18, v14, v10

    mul-float v19, v16, v11

    add-float v18, v18, v19

    mul-float v19, v12, v5

    add-float v18, v18, v19

    add-float v18, v18, p3

    mul-float/2addr v14, v3

    mul-float v16, v16, v6

    add-float v14, v14, v16

    mul-float/2addr v12, v1

    add-float/2addr v14, v12

    add-float v14, v14, p4

    aput v17, v13, v2

    aput v18, v15, v2

    aput v14, v8, v2

    iget-object v8, v0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v12, v8, v2

    iget-object v13, v0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v14, v13, v2

    iget-object v15, v0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v16, v15, v2

    mul-float v17, v12, v4

    mul-float v18, v14, v7

    add-float v17, v17, v18

    mul-float v18, v16, v9

    add-float v17, v17, v18

    mul-float v18, v12, v10

    mul-float v19, v14, v11

    add-float v18, v18, v19

    mul-float v19, v16, v5

    add-float v18, v18, v19

    mul-float/2addr v12, v3

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    mul-float v16, v16, v1

    add-float v12, v12, v16

    div-float v17, v17, p5

    aput v17, v8, v2

    div-float v18, v18, p5

    aput v18, v13, v2

    div-float v12, v12, p5

    aput v12, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Mesh;->locked:Z

    return-void
.end method

.method public setSerializeMethod(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Mesh;->serializeMethod:I

    return-void
.end method

.method public setVertexController(Lcom/threed/jpct/IVertexController;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/threed/jpct/IVertexController;->destroy()V

    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/threed/jpct/IVertexController;->init(Lcom/threed/jpct/Mesh;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public strip()V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Mesh;->locked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->points:[[I

    iput-object v0, p0, Lcom/threed/jpct/Mesh;->coords:[I

    return-void
.end method

.method public strongStrip(Lcom/threed/jpct/World;Lcom/threed/jpct/Object3D;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/threed/jpct/Mesh;->locked:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v0}, Lcom/threed/jpct/Object3DList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object p1, p0, Lcom/threed/jpct/Mesh;->nzOrg:[F

    return-void

    :cond_1
    iget-object v2, p1, Lcom/threed/jpct/World;->objectList:Lcom/threed/jpct/Object3DList;

    invoke-virtual {v2, v1}, Lcom/threed/jpct/Object3DList;->elementAt(I)Lcom/threed/jpct/Object3D;

    move-result-object v2

    if-eq v2, p2, :cond_3

    iget-object v3, v2, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    if-ne v3, p0, :cond_3

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->isCompiled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v3, v2, v1

    iget-object v4, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/4 v6, 0x2

    aget v7, v4, v6

    iget-object v8, p2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v8, v5

    aget v6, v5, v6

    add-float/2addr v7, v6

    add-float/2addr v3, v7

    aput v3, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v3, v2, v1

    aget v6, v4, v0

    aget v7, v5, v0

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    aput v3, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v3, v2, v1

    const/4 v6, 0x1

    aget v4, v4, v6

    aget v5, v5, v6

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
